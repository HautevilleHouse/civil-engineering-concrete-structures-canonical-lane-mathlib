import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure ShearDesign {R : ConcreteMaterialPackage} {B : ReinforcedConcreteBeam R} where
  shearForce : Float
  shearCapacity : Float
  shearReinforcement : Float
  shearCheck : Prop

structure ShearDesignEvidence {R : ConcreteMaterialPackage} {B : ReinforcedConcreteBeam R} (S : ShearDesign R B) where
  shearForceClosed : S.shearForce > 0
  shearCapacityClosed : S.shearCapacity > 0

def ShearDesignClosed {R : ConcreteMaterialPackage} {B : ReinforcedConcreteBeam R} (S : ShearDesign R B) : Prop :=
  S.shearCheck

theorem shear_design_closed_from_evidence {R : ConcreteMaterialPackage} {B : ReinforcedConcreteBeam R} (S : ShearDesign R B) (E : ShearDesignEvidence S) : ShearDesignClosed S := by
  exact S.shearCheck

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse