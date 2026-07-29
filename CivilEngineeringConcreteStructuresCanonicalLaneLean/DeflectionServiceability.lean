import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure DeflectionServiceability {R : ConcreteMaterialPackage} {B : ReinforcedConcreteBeam R} where
  appliedLoad : Float
  immediateDeflection : Float
  longTermDeflection : Float
  allowableDeflection : Float
  deflectionCheck : Prop

def DeflectionServiceabilityClosed {R : ConcreteMaterialPackage} {B : ReinforcedConcreteBeam R} (D : DeflectionServiceability R B) : Prop :=
  D.deflectionCheck

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse