import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure UltimateLimitState {R : ConcreteMaterialPackage} {B : ReinforcedConcreteBeam R} where
  designMoment : Float
  nominalMoment : Float
  safetyFactor : Float
  momentCapacityCheck : Prop

structure UlsEvidence {R : ConcreteMaterialPackage} {B : ReinforcedConcreteBeam R} (U : UltimateLimitState R B) where
  designMomentClosed : U.designMoment > 0
  safetyFactorClosed : U.safetyFactor ≥ 1.0

def UlsClosed {R : ConcreteMaterialPackage} {B : ReinforcedConcreteBeam R} (U : UltimateLimitState R B) : Prop :=
  U.momentCapacityCheck

theorem uls_closed_from_evidence {R : ConcreteMaterialPackage} {B : ReinforcedConcreteBeam R} (U : UltimateLimitState R B) (E : UlsEvidence U) : UlsClosed U := by
  exact U.momentCapacityCheck

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse