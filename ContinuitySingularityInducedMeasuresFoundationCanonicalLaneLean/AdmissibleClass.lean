import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : ContinuitySingularityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MeasureWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse