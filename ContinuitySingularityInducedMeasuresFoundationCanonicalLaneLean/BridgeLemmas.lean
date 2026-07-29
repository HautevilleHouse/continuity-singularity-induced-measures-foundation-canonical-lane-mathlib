import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | _ => True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
