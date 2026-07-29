import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure CrackControl {R : ConcreteMaterialPackage} {B : ReinforcedConcreteBeam R} where
  serviceMoment : Float
  crackWidth : Float
  allowableCrackWidth : Float
  crackCheck : Prop

def CrackControlClosed {R : ConcreteMaterialPackage} {B : ReinforcedConcreteBeam R} (C : CrackControl R B) : Prop :=
  C.crackCheck

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse