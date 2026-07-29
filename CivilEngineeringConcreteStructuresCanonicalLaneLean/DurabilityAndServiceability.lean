import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure DurabilityServiceabilityPackage where
  corrosionProtection : Prop
  freezeThawResistance : Prop
  crackWidthLimit : Prop
  deflectionLimit : Prop
  fatigueResistance : Prop

structure DurabilityServiceabilityEvidence (D : DurabilityServiceabilityPackage) where
  corrosionProtectionClosed : D.corrosionProtection
  freezeThawResistanceClosed : D.freezeThawResistance
  crackWidthLimitClosed : D.crackWidthLimit
  deflectionLimitClosed : D.deflectionLimit
  fatigueResistanceClosed : D.fatigueResistance

def DurabilityServiceabilityClosed (D : DurabilityServiceabilityPackage) : Prop :=
  D.corrosionProtection ∧ D.freezeThawResistance ∧
  D.crackWidthLimit ∧ D.deflectionLimit ∧ D.fatigueResistance

theorem durability_serviceability_closed_from_evidence
    (D : DurabilityServiceabilityPackage)
    (E : DurabilityServiceabilityEvidence D) : DurabilityServiceabilityClosed D := by
  exact And.intro E.corrosionProtectionClosed
    (And.intro E.freezeThawResistanceClosed
      (And.intro E.crackWidthLimitClosed
        (And.intro E.deflectionLimitClosed E.fatigueResistanceClosed)))

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse