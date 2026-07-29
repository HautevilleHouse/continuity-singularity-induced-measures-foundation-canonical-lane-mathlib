import canonicalLaneMathlib.AdmissibleClass
import Mathlib.MeasureTheory.Decomposition

/-!
# Singularity Decomposition Package
-/

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure SingularityDecompositionPackage where
  referenceMeasure : MeasureSpacePackage
  singularMeasure : MeasureSpacePackage
  absolutelyContinuousPart : Prop
  singularPart : Prop
  decomposition : Prop
  uniqueness : Prop

structure SingularityDecompositionEvidence
    (D : SingularityDecompositionPackage) where
  absolutelyContinuousPartClosed : D.absolutelyContinuousPart
  singularPartClosed : D.singularPart
  decompositionClosed : D.decomposition
  uniquenessClosed : D.uniqueness

def SingularityDecompositionClosed (D : SingularityDecompositionPackage) : Prop :=
  D.absolutelyContinuousPart ∧ D.singularPart ∧
  D.decomposition ∧ D.uniqueness

theorem singularity_decomposition_closed_from_evidence
    (D : SingularityDecompositionPackage)
    (E : SingularityDecompositionEvidence D) : SingularityDecompositionClosed D := by
  exact And.intro E.absolutelyContinuousPartClosed
    (And.intro E.singularPartClosed
      (And.intro E.decompositionClosed E.uniquenessClosed))

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse