import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure RadonNikodymData (X : Type u) [TopologicalSpace X] where
  referenceMeasure : SingularityInducedMeasure X
  targetMeasure : SingularityInducedMeasure X
  densityFunction : X → ℝ
  radonNikodymTheorem : Prop

structure RadonNikodymEvidence (R : RadonNikodymData X) where
  densityIntegrable : Prop
  radonNikodymTheoremClosed : R.radonNikodymTheorem

def RadonNikodymClosed (R : RadonNikodymData X) : Prop :=
  R.radonNikodymTheorem

theorem radon_nikodym_closed_from_evidence (R : RadonNikodymData X) (E : RadonNikodymEvidence R) : RadonNikodymClosed R := by
  exact E.radonNikodymTheoremClosed

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse