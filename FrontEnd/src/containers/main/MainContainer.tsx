import * as m from '@src/containers/main/MainContainerStyle'
import MainIntroContainer from '@src/containers/main/MainIntroContainer'
import MainStatusContainer from '@src/containers/main/MainStatusContainer'
import MainAnalysisContainer from '@src/containers/main/MainAnalysisContainer'
import MainRecommendContainer from '@src/containers/main/MainRecommendContainer'

const MainContainer = () => {
  return (
    <m.MainContainer>
      <MainIntroContainer />
      <MainStatusContainer />
      <MainAnalysisContainer />
      <MainRecommendContainer />
    </m.MainContainer>
  )
}

export default MainContainer