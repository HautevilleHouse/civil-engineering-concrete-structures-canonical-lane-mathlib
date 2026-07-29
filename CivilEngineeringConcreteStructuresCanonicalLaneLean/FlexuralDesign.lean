import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure FlexuralDesignPackage (B : ReinforcedConcreteBeamPackage) where
  momentCapacity : ℝ
  steelStrain : ℝ
  concreteStrain : ℝ
  neutralAxisDepth : ℝ
  strainCompatibility : Prop

structure FlexuralDesignEvidence {B : ReinforcedConcreteBeamPackage}
    (F : FlexuralDesignPackage B) where
  momentCapacityClosed : F.momentCapacity > 0
  steelStrainClosed : F.steelStrain > 0
  concreteStrainClosed : F.concreteStrain > 0
  neutralAxisDepthClosed : F.neutralAxisDepth > 0
  strainCompatibilityClosed : F.strainCompatibility

def FlexuralDesignClosed {B : ReinforcedConcreteBeamPackage}
    (F : FlexuralDesignPackage B) : Prop :=
  F.momentCapacity > 0 ∧ F.steelStrain > 0 ∧
  F.concreteStrain > 0 ∧ F.neutralAxisDepth > 0 ∧ F.strainCompatibility

theorem flexural_design_closed_from_evidence
    {B : ReinforcedConcreteBeamPackage} (F : FlexuralDesignPackage B)
    (E : FlexuralDesignEvidence F) : FlexuralDesignClosed F := by
  exact And.intro E.momentCapacityClosed
    (And.intro E.steelStrainClosed
      (And.intro E.concreteStrainClosed
        (And.intro E.neutralAxisDepthClosed E.strainCompatibilityClosed)))

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse