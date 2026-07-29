import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure SingularityMeasureTopologyPackage where
  space : Type u
  topology : TopologicalSpace space
  borelSigmaAlgebra : Prop
  singularityProperty : Prop
  inducedTopologicalSingularity : Prop

structure SingularityMeasureTopologyEvidence (P : SingularityMeasureTopologyPackage) where
  borelSigmaAlgebraClosed : P.borelSigmaAlgebra
  singularityPropertyClosed : P.singularityProperty
  inducedTopologicalSingularityClosed : P.inducedTopologicalSingularity

def SingularityMeasureTopologyClosed (P : SingularityMeasureTopologyPackage) : Prop :=
  P.borelSigmaAlgebra ∧ P.singularityProperty ∧ P.inducedTopologicalSingularity

theorem singularity_measure_topology_closed_from_evidence
    (P : SingularityMeasureTopologyPackage) (E : SingularityMeasureTopologyEvidence P) :
    SingularityMeasureTopologyClosed P := by
  exact And.intro E.borelSigmaAlgebraClosed
    (And.intro E.singularityPropertyClosed E.inducedTopologicalSingularityClosed)

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse