import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure SingularMeasureStructure (M : Type) [TopologicalSpace M] where
  underlyingMeasure : MeasureTheory.Measure M
  singularSupport : Set M
  singularSetMeasurable : MeasurableSet singularSupport
  measureConcentratedOnSingular : underlyingMeasure singularSupport = underlyingMeasure Set.univ
  continuityComponent : MeasureTheory.Measure M
  continuityComponentAbsolutelyContinuous : continuityComponent ≪ underlyingMeasure
  singularityDecomposition : underlyingMeasure = continuityComponent + underlyingMeasure.restrict singularSupport

def SingularMeasureStructureClosed {M : Type} [TopologicalSpace M] (S : SingularMeasureStructure M) : Prop :=
  S.singularSetMeasurable ∧ S.measureConcentratedOnSingular ∧ S.continuityComponentAbsolutelyContinuous ∧ S.singularityDecomposition

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
