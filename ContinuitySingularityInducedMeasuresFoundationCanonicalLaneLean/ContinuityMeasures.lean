import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure ContinuityMeasurePackage where
  space : Type u
  topology : TopologicalSpace space
  measure : Type v
  continuityCondition : Prop
  measureFiniteOnCompacts : Prop
  outerRegular : Prop

structure ContinuityMeasureEvidence (C : ContinuityMeasurePackage) where
  continuityConditionClosed : C.continuityCondition
  measureFiniteOnCompactsClosed : C.measureFiniteOnCompacts
  outerRegularClosed : C.outerRegular

def ContinuityMeasureClosed (C : ContinuityMeasurePackage) : Prop :=
  C.continuityCondition ∧ C.measureFiniteOnCompacts ∧ C.outerRegular

theorem continuity_measure_closed_from_evidence (C : ContinuityMeasurePackage)
    (E : ContinuityMeasureEvidence C) : ContinuityMeasureClosed C := by
  exact And.intro E.continuityConditionClosed
    (And.intro E.measureFiniteOnCompactsClosed E.outerRegularClosed)

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
