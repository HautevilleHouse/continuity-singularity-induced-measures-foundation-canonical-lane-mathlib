import canonicalLaneMathlib.AdmissibleClass
import Mathlib.MeasureTheory.MeasureSpace

/-!
# Measure Space Package
-/

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean

structure MeasureSpacePackage where
  space : Type u
  sigmaAlgebra : σ-Algebra space
  measure : Measure space
  sigmaFinite : Prop
  sigmaFiniteProof : sigmaFinite

structure MeasureSpaceEvidence (M : MeasureSpacePackage) where
  sigmaFiniteClosed : M.sigmaFinite

def MeasureSpaceClosed (M : MeasureSpacePackage) : Prop :=
  M.sigmaFinite

theorem measure_space_closed_from_evidence (M : MeasureSpacePackage)
    (E : MeasureSpaceEvidence M) : MeasureSpaceClosed M := by
  exact E.sigmaFiniteClosed

end ContinuitySingularityInducedMeasuresFoundationCanonicalLaneLean
end HautevilleHouse