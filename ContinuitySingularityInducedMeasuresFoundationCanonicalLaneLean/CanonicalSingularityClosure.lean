import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean.InducedMeasureSingularity

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure CanonicalSingularityClosurePackage {P : SingularityMeasureTopologyPackage}
    {E : SingularityMeasureTopologyEvidence P} {B : ContinuityMeasureBridge E}
    (I : InducedMeasureSingularityPackage B) where
  closureComplete : Prop
  remainderCharacterized : Prop
  bridgeConnection : Prop
  gateCondition : Prop

structure CanonicalSingularityClosureEvidence {P : SingularityMeasureTopologyPackage}
    {E : SingularityMeasureTopologyEvidence P} {B : ContinuityMeasureBridge E}
    {I : InducedMeasureSingularityPackage B} (C : CanonicalSingularityClosurePackage I) where
  closureCompleteClosed : C.closureComplete
  remainderCharacterizedClosed : C.remainderCharacterized
  bridgeConnectionClosed : C.bridgeConnection
  gateConditionClosed : C.gateCondition

def CanonicalSingularityClosureClosed {P : SingularityMeasureTopologyPackage}
    {E : SingularityMeasureTopologyEvidence P} {B : ContinuityMeasureBridge E}
    {I : InducedMeasureSingularityPackage B} (C : CanonicalSingularityClosurePackage I) : Prop :=
  C.closureComplete ∧ C.remainderCharacterized ∧ C.bridgeConnection ∧ C.gateCondition

theorem canonical_singularity_closure_closed_from_evidence
    {P : SingularityMeasureTopologyPackage} {E : SingularityMeasureTopologyEvidence P}
    {B : ContinuityMeasureBridge E} {I : InducedMeasureSingularityPackage B}
    (C : CanonicalSingularityClosurePackage I) (Ev : CanonicalSingularityClosureEvidence C) :
    CanonicalSingularityClosureClosed C := by
  exact And.intro Ev.closureCompleteClosed
    (And.intro Ev.remainderCharacterizedClosed
      (And.intro Ev.bridgeConnectionClosed Ev.gateConditionClosed))

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse