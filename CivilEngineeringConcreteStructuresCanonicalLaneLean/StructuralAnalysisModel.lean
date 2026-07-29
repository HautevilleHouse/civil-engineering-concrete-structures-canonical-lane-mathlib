import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CivilEngineeringConcreteStructuresCanonicalLaneLean.ReinforcedConcreteBeam

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure StructuralAnalysisModelPackage {M : ConcreteMaterialPackage}
    (B : ReinforcedConcreteBeamPackage M) where
  linearElasticAnalysis : Prop
  nonlinearAnalysis : Prop
  loadCombinations : Prop
  stabilityAnalysis : Prop
  dynamicResponse : Prop

structure StructuralAnalysisModelEvidence {M : ConcreteMaterialPackage}
    {B : ReinforcedConcreteBeamPackage M}
    (S : StructuralAnalysisModelPackage B) where
  linearElasticAnalysisClosed : S.linearElasticAnalysis
  nonlinearAnalysisClosed : S.nonlinearAnalysis
  loadCombinationsClosed : S.loadCombinations
  stabilityAnalysisClosed : S.stabilityAnalysis
  dynamicResponseClosed : S.dynamicResponse

def StructuralAnalysisModelClosed {M : ConcreteMaterialPackage}
    {B : ReinforcedConcreteBeamPackage M}
    (S : StructuralAnalysisModelPackage B) : Prop :=
  S.linearElasticAnalysis ∧ S.nonlinearAnalysis ∧
  S.loadCombinations ∧ S.stabilityAnalysis ∧ S.dynamicResponse

theorem structural_analysis_model_closed_from_evidence
    {M : ConcreteMaterialPackage} {B : ReinforcedConcreteBeamPackage M}
    (S : StructuralAnalysisModelPackage B)
    (E : StructuralAnalysisModelEvidence S) : StructuralAnalysisModelClosed S := by
  exact And.intro E.linearElasticAnalysisClosed
    (And.intro E.nonlinearAnalysisClosed
      (And.intro E.loadCombinationsClosed
        (And.intro E.stabilityAnalysisClosed E.dynamicResponseClosed)))

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse