import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure ContinuityPropertyPackage (M : Type) [TopologicalSpace M] where
  originalMeasure : MeasureTheory.Measure M
  continuousPart : MeasureTheory.Measure M
  continuousWithRespectTo : continuousPart ≪ originalMeasure
  densityFunction : M → ℝ
  densityContinuity : ∀ x : M, ContinuousAt densityFunction x
  integralRepresentation : ∀ A : Set M, MeasurableSet A → continuousPart A = ∫ x in A, densityFunction x ∂originalMeasure
  densityContinuityTerm : densityContinuity
  integralRepresentationTerm : integralRepresentation

def ContinuityPropertyPackageClosed {M : Type} [TopologicalSpace M] (C : ContinuityPropertyPackage M) : Prop :=
  C.continuousWithRespectTo ∧ C.densityContinuity ∧ C.integralRepresentation

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
