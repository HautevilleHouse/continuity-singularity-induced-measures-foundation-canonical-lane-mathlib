import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean.ContinuityMeasureBridge

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure InducedMeasureSingularityPackage {P : SingularityMeasureTopologyPackage}
    {E : SingularityMeasureTopologyEvidence P} (B : ContinuityMeasureBridge E) where
  singularityMeasure : Type u
  inducedMeasureDecomposition : Prop
  singularityDetected : Prop
  continuityComponent : Prop

structure InducedMeasureSingularityEvidence {P : SingularityMeasureTopologyPackage}
    {E : SingularityMeasureTopologyEvidence P} {B : ContinuityMeasureBridge E}
    (I : InducedMeasureSingularityPackage B) where
  inducedMeasureDecompositionClosed : I.inducedMeasureDecomposition
  singularityDetectedClosed : I.singularityDetected
  continuityComponentClosed : I.continuityComponent

def InducedMeasureSingularityClosed {P : SingularityMeasureTopologyPackage}
    {E : SingularityMeasureTopologyEvidence P} {B : ContinuityMeasureBridge E}
    (I : InducedMeasureSingularityPackage B) : Prop :=
  I.inducedMeasureDecomposition ∧ I.singularityDetected ∧ I.continuityComponent

theorem induced_measure_singularity_closed_from_evidence
    {P : SingularityMeasureTopologyPackage} {E : SingularityMeasureTopologyEvidence P}
    {B : ContinuityMeasureBridge E} (I : InducedMeasureSingularityPackage B)
    (Ev : InducedMeasureSingularityEvidence I) : InducedMeasureSingularityClosed I := by
  exact And.intro Ev.inducedMeasureDecompositionClosed
    (And.intro Ev.singularityDetectedClosed Ev.continuityComponentClosed)

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse