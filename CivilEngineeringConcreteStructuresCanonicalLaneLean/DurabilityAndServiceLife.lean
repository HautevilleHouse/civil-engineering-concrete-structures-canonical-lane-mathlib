import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CivilEngineeringConcreteStructuresCanonicalLaneLean.ConcreteMaterialModel

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure DurabilityAndServiceLifePackage (M : ConcreteMaterialPackage) where
  corrosionProtection : Prop
  freezeThawResistance : Prop
  chemicalAttackResistance : Prop
  carbonationDepth : Prop
  serviceLifePrediction : Prop

structure DurabilityAndServiceLifeEvidence {M : ConcreteMaterialPackage}
    (D : DurabilityAndServiceLifePackage M) where
  corrosionProtectionClosed : D.corrosionProtection
  freezeThawResistanceClosed : D.freezeThawResistance
  chemicalAttackResistanceClosed : D.chemicalAttackResistance
  carbonationDepthClosed : D.carbonationDepth
  serviceLifePredictionClosed : D.serviceLifePrediction

def DurabilityAndServiceLifeClosed {M : ConcreteMaterialPackage}
    (D : DurabilityAndServiceLifePackage M) : Prop :=
  D.corrosionProtection ∧ D.freezeThawResistance ∧
  D.chemicalAttackResistance ∧ D.carbonationDepth ∧ D.serviceLifePrediction

theorem durability_and_service_life_closed_from_evidence
    {M : ConcreteMaterialPackage} (D : DurabilityAndServiceLifePackage M)
    (E : DurabilityAndServiceLifeEvidence D) : DurabilityAndServiceLifeClosed D := by
  exact And.intro E.corrosionProtectionClosed
    (And.intro E.freezeThawResistanceClosed
      (And.intro E.chemicalAttackResistanceClosed
        (And.intro E.carbonationDepthClosed E.serviceLifePredictionClosed)))

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse