import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure ShearTorsionPackage where
  shearStrengthContributionConcrete : Prop
  shearStrengthContributionSteel : Prop
  torsionStrength : Prop
  combinedShearTorsionInteraction : Prop
  crackControl : Prop

structure ShearTorsionEvidence (S : ShearTorsionPackage) where
  shearStrengthContributionConcreteClosed : S.shearStrengthContributionConcrete
  shearStrengthContributionSteelClosed : S.shearStrengthContributionSteel
  torsionStrengthClosed : S.torsionStrength
  combinedShearTorsionInteractionClosed : S.combinedShearTorsionInteraction
  crackControlClosed : S.crackControl

def ShearTorsionClosed (S : ShearTorsionPackage) : Prop :=
  S.shearStrengthContributionConcrete ∧ S.shearStrengthContributionSteel ∧
  S.torsionStrength ∧ S.combinedShearTorsionInteraction ∧ S.crackControl

theorem shear_torsion_closed_from_evidence (S : ShearTorsionPackage)
    (E : ShearTorsionEvidence S) : ShearTorsionClosed S := by
  exact And.intro E.shearStrengthContributionConcreteClosed
    (And.intro E.shearStrengthContributionSteelClosed
      (And.intro E.torsionStrengthClosed
        (And.intro E.combinedShearTorsionInteractionClosed E.crackControlClosed)))

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse