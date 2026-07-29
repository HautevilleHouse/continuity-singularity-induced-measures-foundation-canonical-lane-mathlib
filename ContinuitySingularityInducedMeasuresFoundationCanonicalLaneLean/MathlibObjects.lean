import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure ContinuitySingularitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuitySingularityAdmittedObject where
  space : ContinuitySingularitySpace
  singularMeasureDefined : Prop
  continuityProperty : Prop
  measureSingularity : Prop
  conclusion : measureSingularity

structure ContinuitySingularityEndgameState where
  object : ContinuitySingularityAdmittedObject

def ContinuitySingularityWitnessClosed (O : ContinuitySingularityAdmittedObject) : Prop :=
  O.measureSingularity

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
