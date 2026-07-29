import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SingularityModelMeasuresClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse
