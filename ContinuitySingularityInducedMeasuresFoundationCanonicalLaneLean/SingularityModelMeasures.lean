import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure SingularityModelMeasuresPackage where
  measureSpace : Type u
  sigmaAlgebra : Set (Set measureSpace)
  measure : measureSpace → ℝ
  singularityType : Prop
  baseMeasure : measureSpace → ℝ
  radonNikodymDerivative : measureSpace → ℝ
  continuityCondition : Prop
  inducedMeasure : measureSpace → ℝ
  singularityModelAdmissible : Prop

structure SingularityModelMeasuresEvidence (P : SingularityModelMeasuresPackage) where
  continuityConditionClosed : P.continuityCondition
  radonNikodymDerivativeClosed : ∀ x : P.measureSpace, P.radonNikodymDerivative x = P.measure x / P.baseMeasure x
  singularityModelAdmissibleClosed : P.singularityModelAdmissible

def SingularityModelMeasuresClosed (P : SingularityModelMeasuresPackage) : Prop :=
  P.continuityCondition ∧ (∀ x : P.measureSpace, P.radonNikodymDerivative x = P.measure x / P.baseMeasure x) ∧ P.singularityModelAdmissible

theorem singularity_model_measures_closed_from_evidence (P : SingularityModelMeasuresPackage) (E : SingularityModelMeasuresEvidence P) : SingularityModelMeasuresClosed P := by
  exact And.intro E.continuityConditionClosed (And.intro E.radonNikodymDerivativeClosed E.singularityModelAdmissibleClosed)

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
