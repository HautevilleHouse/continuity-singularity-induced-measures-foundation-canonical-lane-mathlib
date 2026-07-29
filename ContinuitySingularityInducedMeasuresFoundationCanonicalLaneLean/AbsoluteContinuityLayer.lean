import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure AbsoluteContinuityLayer (M : Type) [TopologicalSpace M] where
  referenceMeasure : MeasureTheory.Measure M
  absolutelyContinuousMeasure : MeasureTheory.Measure M
  radonNikodymDerivativeExists : Prop
  densityFunction : M → ℝ
  densityMeasurable : Measurable densityFunction
  integrationFormula : ∀ A : Set M, MeasurableSet A → absolutelyContinuousMeasure A = ∫ x in A, densityFunction x ∂referenceMeasure
  radonNikodymDerivativeExistsTerm : radonNikodymDerivativeExists
  densityMeasurableTerm : densityMeasurable
  integrationFormulaTerm : integrationFormula

def AbsoluteContinuityLayerClosed {M : Type} [TopologicalSpace M] (A : AbsoluteContinuityLayer M) : Prop :=
  A.radonNikodymDerivativeExists ∧ A.densityMeasurable ∧ A.integrationFormula

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
