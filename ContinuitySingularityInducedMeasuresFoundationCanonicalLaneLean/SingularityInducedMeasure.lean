import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure SingularityInducedMeasure (X : Type u) [TopologicalSpace X] where
  baseMeasure : Set X → ℝ
  singularSet : Set X
  inducedMeasure : Set X → ℝ
  continuityProperty : Prop
  singularityDecomposition : Prop

structure SingularityInducedMeasureEvidence (μ : SingularityInducedMeasure X) where
  continuityPropertyClosed : μ.continuityProperty
  singularityDecompositionClosed : μ.singularityDecomposition

def SingularityInducedMeasureClosed (μ : SingularityInducedMeasure X) : Prop :=
  μ.continuityProperty ∧ μ.singularityDecomposition

theorem singularity_induced_measure_closed_from_evidence (μ : SingularityInducedMeasure X) (E : SingularityInducedMeasureEvidence μ) : SingularityInducedMeasureClosed μ := by
  exact And.intro E.continuityPropertyClosed E.singularityDecompositionClosed

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse