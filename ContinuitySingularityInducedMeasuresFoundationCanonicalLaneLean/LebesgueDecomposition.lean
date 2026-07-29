import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean.InducedMeasures

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure LebesgueDecompositionPackage {C : ContinuityMeasurePackage} {S : SingularityClassPackage}
    (I : InducedMeasurePackage C S) where
  absolutelyContinuousComponent : Prop
  singularComponent : Prop
  uniqueness : Prop
  radonNikodymDerivativeIntegrable : Prop

structure LebesgueDecompositionEvidence {C : ContinuityMeasurePackage} {S : SingularityClassPackage}
    {I : InducedMeasurePackage C S} (L : LebesgueDecompositionPackage I) where
  absolutelyContinuousComponentClosed : L.absolutelyContinuousComponent
  singularComponentClosed : L.singularComponent
  uniquenessClosed : L.uniqueness
  radonNikodymDerivativeIntegrableClosed : L.radonNikodymDerivativeIntegrable

def LebesgueDecompositionClosed {C : ContinuityMeasurePackage} {S : SingularityClassPackage}
    {I : InducedMeasurePackage C S} (L : LebesgueDecompositionPackage I) : Prop :=
  L.absolutelyContinuousComponent ∧ L.singularComponent ∧ L.uniqueness ∧ L.radonNikodymDerivativeIntegrable

theorem lebesgue_decomposition_closed_from_evidence {C : ContinuityMeasurePackage} {S : SingularityClassPackage}
    {I : InducedMeasurePackage C S} (L : LebesgueDecompositionPackage I)
    (E : LebesgueDecompositionEvidence L) : LebesgueDecompositionClosed L := by
  exact And.intro E.absolutelyContinuousComponentClosed
    (And.intro E.singularComponentClosed
      (And.intro E.uniquenessClosed E.radonNikodymDerivativeIntegrableClosed))

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
