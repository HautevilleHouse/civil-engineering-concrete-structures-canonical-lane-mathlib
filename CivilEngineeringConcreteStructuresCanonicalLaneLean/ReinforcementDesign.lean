import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure ReinforcementLayout where
  barDiameter : ℝ
  spacing : ℝ
  yieldStrength : ℝ
  areaSteel : ℝ
structure FlexuralDesign where
  reinforcement : ReinforcementLayout
  neutralAxisDepth : ℝ
  momentCapacity : Prop
  ductilityCondition : Prop
structure FlexuralEvidence (F : FlexuralDesign) where
  momentCapacityClosed : F.momentCapacity
  ductilityConditionClosed : F.ductilityCondition
def FlexuralClosed (F : FlexuralDesign) : Prop :=
  F.momentCapacity ∧ F.ductilityCondition
theorem flexural_closed_from_evidence (F : FlexuralDesign) (E : FlexuralEvidence F) :
    FlexuralClosed F := by
  exact And.intro E.momentCapacityClosed E.ductilityConditionClosed

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse