import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean.ContinuityMeasures
import HautevilleHouse.ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean.SingularityClasses

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure InducedMeasurePackage (C : ContinuityMeasurePackage) (S : SingularityClassPackage) where
  pushforwardMap : Type u
  inducedMeasureDefined : Prop
  continuityPreserved : Prop
  singularPartPreserved : Prop
  radonNikodymDerivative : Prop

structure InducedMeasureEvidence {C : ContinuityMeasurePackage} {S : SingularityClassPackage}
    (I : InducedMeasurePackage C S) where
  inducedMeasureDefinedClosed : I.inducedMeasureDefined
  continuityPreservedClosed : I.continuityPreserved
  singularPartPreservedClosed : I.singularPartPreserved
  radonNikodymDerivativeClosed : I.radonNikodymDerivative

def InducedMeasureClosed {C : ContinuityMeasurePackage} {S : SingularityClassPackage}
    (I : InducedMeasurePackage C S) : Prop :=
  I.inducedMeasureDefined ∧ I.continuityPreserved ∧ I.singularPartPreserved ∧ I.radonNikodymDerivative

theorem induced_measure_closed_from_evidence {C : ContinuityMeasurePackage} {S : SingularityClassPackage}
    (I : InducedMeasurePackage C S) (E : InducedMeasureEvidence I) : InducedMeasureClosed I := by
  exact And.intro E.inducedMeasureDefinedClosed
    (And.intro E.continuityPreservedClosed
      (And.intro E.singularPartPreservedClosed E.radonNikodymDerivativeClosed))

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
