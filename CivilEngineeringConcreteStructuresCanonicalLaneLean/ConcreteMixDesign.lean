import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure ConcreteMixDesignPackage where
  waterCementRatio : Prop
  aggregateGradation : Prop
  cementType : Prop
  admixtureType : Prop
  targetStrength : Prop

structure ConcreteMixDesignEvidence (M : ConcreteMixDesignPackage) where
  waterCementRatioClosed : M.waterCementRatio
  aggregateGradationClosed : M.aggregateGradation
  cementTypeClosed : M.cementType
  admixtureTypeClosed : M.admixtureType
  targetStrengthClosed : M.targetStrength

def ConcreteMixDesignClosed (M : ConcreteMixDesignPackage) : Prop :=
  M.waterCementRatio ∧ M.aggregateGradation ∧ M.cementType ∧ M.admixtureType ∧ M.targetStrength

theorem concrete_mix_design_closed_from_evidence (M : ConcreteMixDesignPackage) (E : ConcreteMixDesignEvidence M) : ConcreteMixDesignClosed M := by
  exact And.intro E.waterCementRatioClosed
    (And.intro E.aggregateGradationClosed
      (And.intro E.cementTypeClosed
        (And.intro E.admixtureTypeClosed E.targetStrengthClosed)))

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse