import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure CrackControl where
  crackWidth : ℝ
  maxAllowedCrack : ℝ
  crackControlSatisfied : Prop
structure DeflectionModel where
  immediateDeflection : ℝ
  longTermDeflection : ℝ
  deflectionLimit : ℝ
  deflectionSatisfied : Prop
structure ServiceabilityPackage where
  crack : CrackControl
  deflection : DeflectionModel
  vibration : Prop
structure ServiceabilityEvidence (S : ServiceabilityPackage) where
  crackClosed : S.crack.crackControlSatisfied
  deflectionClosed : S.deflection.deflectionSatisfied
  vibrationClosed : S.vibration
def ServiceabilityClosed (S : ServiceabilityPackage) : Prop :=
  S.crack.crackControlSatisfied ∧ S.deflection.deflectionSatisfied ∧ S.vibration
theorem serviceability_closed_from_evidence (S : ServiceabilityPackage)
    (E : ServiceabilityEvidence S) : ServiceabilityClosed S := by
  exact And.intro E.crackClosed (And.intro E.deflectionClosed E.vibrationClosed)

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse