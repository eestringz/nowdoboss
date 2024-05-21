import FlowSummaryCard from '@src/components/analysis/result/FlowSummaryCard'
import SalesSummaryCard from '@src/components/analysis/result/SalesSummaryCard'
import TipBox from '@src/components/analysis/result/TipBox'
import TotalSummaryCard from '@src/components/analysis/result/TotalSummaryCard'
import WarningBox from '@src/components/analysis/result/WarningBox'
import * as s from '@src/components/styles/analysis/result/SummarySectionStyle'

const SummarySection = () => {
  return (
    <s.Container>
      <WarningBox />
      <s.SummaryWrap>
        <s.FlowWrap>
          <s.FlowCard>
            <FlowSummaryCard />
          </s.FlowCard>
          <s.TipTitle>
            나도보스 <span>TIP</span>
          </s.TipTitle>
          <s.TipBox>
            <TipBox />
          </s.TipBox>
        </s.FlowWrap>
        <s.SalesCard>
          <SalesSummaryCard />
        </s.SalesCard>
      </s.SummaryWrap>
      <TotalSummaryCard />
    </s.Container>
  )
}

export default SummarySection