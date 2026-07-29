import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure FiniteElementPackage where
  constitutiveModelConcrete : Prop
  reinforcementModel : Prop
  bondSlipModel : Prop
  nonlinearSolutionAlgorithm : Prop
  convergenceCriteria : Prop

structure FiniteElementEvidence (F : FiniteElementPackage) where
  constitutiveModelConcreteClosed : F.constitutiveModelConcrete
  reinforcementModelClosed : F.reinforcementModel
  bondSlipModelClosed : F.bondSlipModel
  nonlinearSolutionAlgorithmClosed : F.nonlinearSolutionAlgorithm
  convergenceCriteriaClosed : F.convergenceCriteria

def FiniteElementClosed (F : FiniteElementPackage) : Prop :=
  F.constitutiveModelConcrete ∧ F.reinforcementModel ∧
  F.bondSlipModel ∧ F.nonlinearSolutionAlgorithm ∧ F.convergenceCriteria

theorem finite_element_closed_from_evidence (F : FiniteElementPackage)
    (E : FiniteElementEvidence F) : FiniteElementClosed F := by
  exact And.intro E.constitutiveModelConcreteClosed
    (And.intro E.reinforcementModelClosed
      (And.intro E.bondSlipModelClosed
        (And.intro E.nonlinearSolutionAlgorithmClosed E.convergenceCriteriaClosed)))

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse