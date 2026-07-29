import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure FlexuralDesignPackage where
  crackedSectionAnalysis : Prop
  ultimateMomentCapacity : Prop
  serviceabilityDeflection : Prop
  ductilityRequirement : Prop
  minimumReinforcement : Prop

structure FlexuralDesignEvidence (F : FlexuralDesignPackage) where
  crackedSectionAnalysisClosed : F.crackedSectionAnalysis
  ultimateMomentCapacityClosed : F.ultimateMomentCapacity
  serviceabilityDeflectionClosed : F.serviceabilityDeflection
  ductilityRequirementClosed : F.ductilityRequirement
  minimumReinforcementClosed : F.minimumReinforcement

def FlexuralDesignClosed (F : FlexuralDesignPackage) : Prop :=
  F.crackedSectionAnalysis ∧ F.ultimateMomentCapacity ∧
  F.serviceabilityDeflection ∧ F.ductilityRequirement ∧ F.minimumReinforcement

theorem flexural_design_closed_from_evidence (F : FlexuralDesignPackage)
    (E : FlexuralDesignEvidence F) : FlexuralDesignClosed F := by
  exact And.intro E.crackedSectionAnalysisClosed
    (And.intro E.ultimateMomentCapacityClosed
      (And.intro E.serviceabilityDeflectionClosed
        (And.intro E.ductilityRequirementClosed E.minimumReinforcementClosed)))

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse