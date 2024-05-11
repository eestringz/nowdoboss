import * as c from '@src/components/styles/status/StatusPolygonStyle'
import seoul from '@src/components/status/sig_seoul_geojson.json'
import * as d3 from 'd3'
import { TopList, TopListItem } from '@src/types/StatusType'
import { useEffect, useState } from 'react'

type StatusPolygonProps = {
  tab: number
  selectedRegion: string | null
  TopLists: TopList
  onClickRegionHandler: (data: string | null) => void
  onClickRegionCodeHandler: (data: number) => void
}

const StatusPolygonComponent = ({
  tab,
  selectedRegion,
  TopLists,
  onClickRegionHandler,
  onClickRegionCodeHandler,
}: StatusPolygonProps) => {
  // console.log(`선택된 탭 index : ${tab}`)
  const [width, setWidth] = useState(660)
  const [height, setHeight] = useState(550)
  const [scale, setScale] = useState(90000)
  const mapData = seoul.features // 서울시 행정구역 json data

  useEffect(() => {
    const handleResize = () => {
      setWidth(window.innerWidth * 0.7)
      setHeight(window.innerHeight * 0.8)
      if (window.innerWidth > 1400) {
        setScale(window.innerWidth * 60)
      } else if (window.innerWidth > 800) {
        setScale(80000)
      } else {
        setWidth(window.innerWidth)
        setHeight(window.innerHeight)
        setScale(window.innerWidth * 120)
      }

      // console.log(window.innerWidth, '너비!')
    }

    window.addEventListener('resize', handleResize)
    handleResize()

    return () => {
      window.removeEventListener('resize', handleResize)
    }
  }, [width])

  // 데카르트 투영법을 이용하여 만든 프로젝션
  const projection = d3
    .geoMercator()
    .center([127.023136826325427, 37.57196080977203])
    .scale(scale)
    .translate([width / 2 + window.innerWidth * 0.03, height / 2 - 10])

  // projection을 이용하여 만든 경로 생성 함수
  const pathGenerator = d3.geoPath().projection(projection)

  // <todo> 색 변경하기!
  const mapColor = [
    ['#5E28C9', '#8C63E5', '#A78DED', '#D3C0F7', '#E7E0F9'], // 유동인구
    ['#007ECE', '#0095E5', '#60AEEE', '#A4D7FC', '#D8EEFF'], // 평균매출
    ['#CC4E5D', '#E97F8D', '#F3A6AF', '#FFCCD1', '#FDEAEC'], // 개업률
    ['#009E65', '#00BF7A', '#5DD0A7', '#92ECCD', '#C3FFEA'], // 폐점률
    ['#F3FFDA', '#FAF0C3', '#F8DB6D', '#FFDE3C', '#E8C500'],
    ['#D6FFFD', '#BBFBF7', '#68E1D9', '#10C1CC', '#009FA9'],
  ]
  const handleRegionClick = (regionName: string) => {
    if (selectedRegion === regionName) {
      onClickRegionHandler(null)
    } else {
      onClickRegionHandler(regionName)
    }
  }

  // 받아온 데이터 탭별 정리
  const footTrafficTop: TopListItem[] = TopLists.footTrafficTopTenList
  const openedRateTop: TopListItem[] = TopLists.openedRateTopTenList
  const salesTop: TopListItem[] = TopLists.salesTopTenList
  const closedRateTop: TopListItem[] = TopLists.closedRateTopTenList
  const StatusTopData = [footTrafficTop, salesTop, openedRateTop, closedRateTop]

  // 행정구 폴리곤
  const countries = mapData.map((d: any, i) => {
    // console.log(d)
    const isSelected = selectedRegion === d.properties.SIG_KOR_NM
    const tempItem =
      tab != null
        ? StatusTopData[tab].find(
            sig => sig.districtCode === d.properties.SIG_CD,
          )
        : null
    const colorIndex = tempItem ? tempItem.level - 1 : 0

    const style = isSelected
      ? {
          fill: '#FFC940',
          stroke: 'white',
          strokeWidth: '2px',
          transition: 'transform 0.5s ease-out, fill 0.3s ease-out',
          transform: 'scale(1)',
          transformOrigin: 'center',
          cursor: 'pointer',
        }
      : {
          fill: tab === null ? '#4cbbf8' : mapColor[tab][colorIndex],
          stroke: 'white',
          strokeWidth: '2px',
          transition: 'transform 0.5s ease-out, fill 0.3s ease-out',
          cursor: 'pointer',
        }

    return (
      <path
        key={`path${i}`}
        d={pathGenerator(d)!}
        onClick={() => {
          // console.log(`${d.properties.SIG_KOR_NM}를 선택함!`)
          handleRegionClick(d.properties.SIG_KOR_NM)
          onClickRegionCodeHandler(d.properties.SIG_CD)
        }}
        // onMouseEnter={() => {
        //   console.log(`${d.properties.SIG_KOR_NM}에 마우스 올림!`)
        // }}
        style={style}
      />
    )
  })

  // 행정구 Text
  const countryTexts = mapData.map((d: any, i) => (
    <text
      key={`path${i}text`}
      transform={`translate(${pathGenerator.centroid(d)})`}
      style={{
        // fontFamily: 'pretendard',
        fontSize: window.innerWidth >= 600 ? '1rem' : '0.5rem',
        textAnchor: 'middle',
        top: '10px',
        position: 'relative',
        cursor: 'pointer',
      }}
      x={d.properties.x_offset ? d.properties.x_offset : ''}
      y={d.properties.y_offset ? d.properties.y_offset - 10 : ''}
      onClick={() => {
        handleRegionClick(d.properties.SIG_KOR_NM)
        onClickRegionCodeHandler(d.properties.SIG_CD)
      }}
      // onMouseEnter={e => {
      //   e.currentTarget.style.transform = 'translateY(-10px)'
      // }}
    >
      {d.properties.SIG_KOR_NM}
    </text>
  ))

  // 범례 데이터
  const legendData = mapColor[tab]
  const legendLabels = ['매우 높음', '높음', '보통', '낮음', '매우 낮음']

  // 범례 그리기
  const drawLegend = () => {
    const legendHeight = 15
    const legendWidth = 15
    const spacing = 5
    const textOffset = 5

    return legendData.map((color, index) => (
      <g key={index}>
        <rect
          key={index}
          x={width - 200}
          y={
            height -
            legendData.length * (legendHeight + spacing) +
            index * (legendHeight + spacing)
          }
          width={legendWidth}
          height={legendHeight}
          fill={color}
        />
        <text
          x={width - 200 + legendWidth + textOffset}
          y={
            height -
            legendData.length * (legendHeight + spacing) +
            index * (legendHeight + spacing) +
            legendHeight / 2
          }
          alignmentBaseline="middle"
          style={{ fontSize: '12px' }}
        >
          {legendLabels[index]}
        </text>
      </g>
    ))
  }

  return (
    <c.PolygonContainer>
      <svg width={width} height={height}>
        {countries}
        {countryTexts}
        {drawLegend()}
      </svg>
    </c.PolygonContainer>
  )
}

export default StatusPolygonComponent
