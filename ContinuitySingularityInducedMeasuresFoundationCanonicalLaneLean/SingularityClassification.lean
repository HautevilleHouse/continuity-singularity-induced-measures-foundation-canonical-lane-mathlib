import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure SingularityClassification (X : Type u) [TopologicalSpace X] (μ : SingularityInducedMeasure X) where
  singularSupport : Set X
  hausdorffDimension : ℝ
  classificationTheorem : Prop

structure SingularityClassificationEvidence {X : Type u} [TopologicalSpace X] {μ : SingularityInducedMeasure X} (C : SingularityClassification X μ) where
  classificationTheoremClosed : C.classificationTheorem

def SingularityClassificationClosed {X : Type u} [TopologicalSpace X] {μ : SingularityInducedMeasure X} (C : SingularityClassification X μ) : Prop :=
  C.classificationTheorem

theorem singularity_classification_closed_from_evidence {X : Type u} [TopologicalSpace X] {μ : SingularityInducedMeasure X} (C : SingularityClassification X μ) (E : SingularityClassificationEvidence C) : SingularityClassificationClosed C := by
  exact E.classificationTheoremClosed

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse