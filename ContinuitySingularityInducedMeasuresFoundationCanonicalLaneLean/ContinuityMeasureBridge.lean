import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean.SingularityMeasureTopology

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure ContinuityMeasureBridge {P : SingularityMeasureTopologyPackage} (E : SingularityMeasureTopologyEvidence P) where
  absoluteContinuity : Prop
  radonNikodymDerivative : Prop
  singularitySupport : Prop
  absoluteContinuityClosed : absoluteContinuity
  radonNikodymDerivativeClosed : radonNikodymDerivative
  singularitySupportClosed : singularitySupport

def ContinuityMeasureBridgeClosed {P : SingularityMeasureTopologyPackage}
    {E : SingularityMeasureTopologyEvidence P} (B : ContinuityMeasureBridge E) : Prop :=
  B.absoluteContinuity ∧ B.radonNikodymDerivative ∧ B.singularitySupport

theorem continuity_measure_bridge_closed_from_evidence
    {P : SingularityMeasureTopologyPackage} {E : SingularityMeasureTopologyEvidence P}
    (B : ContinuityMeasureBridge E) : ContinuityMeasureBridgeClosed B := by
  exact And.intro B.absoluteContinuityClosed
    (And.intro B.radonNikodymDerivativeClosed B.singularitySupportClosed)

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse