import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure ContinuityDecomposition (X : Type u) [TopologicalSpace X] (μ : SingularityInducedMeasure X) where
  absolutelyContinuousPart : SingularityInducedMeasure X
  singularPart : SingularityInducedMeasure X
  decompositionSum : Prop
  uniqueDecomposition : Prop

structure ContinuityDecompositionEvidence {X : Type u} [TopologicalSpace X] {μ : SingularityInducedMeasure X} (D : ContinuityDecomposition X μ) where
  decompositionSumClosed : D.decompositionSum
  uniqueDecompositionClosed : D.uniqueDecomposition

def ContinuityDecompositionClosed {X : Type u} [TopologicalSpace X] {μ : SingularityInducedMeasure X} (D : ContinuityDecomposition X μ) : Prop :=
  D.decompositionSum ∧ D.uniqueDecomposition

theorem continuity_decomposition_closed_from_evidence {X : Type u} [TopologicalSpace X] {μ : SingularityInducedMeasure X} (D : ContinuityDecomposition X μ) (E : ContinuityDecompositionEvidence D) : ContinuityDecompositionClosed D := by
  exact And.intro E.decompositionSumClosed E.uniqueDecompositionClosed

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse