import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure ReinforcedConcreteBeam {R : ConcreteMaterialPackage} where
  width : Float
  effectiveDepth : Float
  reinforcementArea : Float
  yieldStrengthSteel : Float
  sectionCapacity : Prop

def SectionCapacityClosed {R : ConcreteMaterialPackage} (B : ReinforcedConcreteBeam R) : Prop :=
  B.sectionCapacity

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse