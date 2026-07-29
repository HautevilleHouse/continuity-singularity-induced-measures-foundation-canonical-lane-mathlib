import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure SingularityDecompositionEvidence (M : Type) [TopologicalSpace M] where
  singularMeasure : SingularMeasureStructure M
  continuityLayer : AbsoluteContinuityLayer M
  continuityProperty : ContinuityPropertyPackage M
  decompositionConsistency : 
    singularMeasure.underlyingMeasure = 
    continuityLayer.absolutelyContinuousMeasure + 
    singularMeasure.underlyingMeasure.restrict singularMeasure.singularSupport
  decompositionConsistencyTerm : decompositionConsistency

def SingularityDecompositionEvidenceClosed {M : Type} [TopologicalSpace M] (E : SingularityDecompositionEvidence M) : Prop :=
  SingularMeasureStructureClosed E.singularMeasure ∧
  AbsoluteContinuityLayerClosed E.continuityLayer ∧
  ContinuityPropertyPackageClosed E.continuityProperty ∧
  E.decompositionConsistency

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
