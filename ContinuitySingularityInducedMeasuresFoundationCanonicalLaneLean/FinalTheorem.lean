import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

def ConstrainedSingularityMeasuresClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_singularity_measures_endgame (A : AdmissibleClass) : ConstrainedSingularityMeasuresClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
