import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure SingularityClassPackage where
  measureSpace : Type u
  referenceMeasure : Type v
  singularSet : Prop
  absolutelyContinuousPart : Prop
  singularPart : Prop
  decompositionUniqueness : Prop

structure SingularityClassEvidence (S : SingularityClassPackage) where
  singularSetClosed : S.singularSet
  absolutelyContinuousPartClosed : S.absolutelyContinuousPart
  singularPartClosed : S.singularPart
  decompositionUniquenessClosed : S.decompositionUniqueness

def SingularityClassClosed (S : SingularityClassPackage) : Prop :=
  S.singularSet ∧ S.absolutelyContinuousPart ∧ S.singularPart ∧ S.decompositionUniqueness

theorem singularity_class_closed_from_evidence (S : SingularityClassPackage)
    (E : SingularityClassEvidence S) : SingularityClassClosed S := by
  exact And.intro E.singularSetClosed
    (And.intro E.absolutelyContinuousPartClosed
      (And.intro E.singularPartClosed E.decompositionUniquenessClosed))

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
