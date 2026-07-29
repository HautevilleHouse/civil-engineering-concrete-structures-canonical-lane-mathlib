import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure ShearModel where
  shearForce : ℝ
  shearReinforcement : Prop
  concreteContribution : Prop
  strutAngle : ℝ
structure TorsionModel where
  torque : ℝ
  torsionalReinforcement : Prop
  sectionClosed : Prop
structure ShearTorsionPackage where
  shear : ShearModel
  torsion : TorsionModel
  interactionEquation : Prop
structure ShearTorsionEvidence (S : ShearTorsionPackage) where
  shearClosed : S.shear.shearReinforcement ∧ S.shear.concreteContribution
  torsionClosed : S.torsion.torsionalReinforcement ∧ S.torsion.sectionClosed
  interactionClosed : S.interactionEquation
def ShearTorsionClosed (S : ShearTorsionPackage) : Prop :=
  (S.shear.shearReinforcement ∧ S.shear.concreteContribution) ∧
  (S.torsion.torsionalReinforcement ∧ S.torsion.sectionClosed) ∧
  S.interactionEquation
theorem shear_torsion_closed_from_evidence (S : ShearTorsionPackage)
    (E : ShearTorsionEvidence S) : ShearTorsionClosed S := by
  exact And.intro E.shearClosed (And.intro E.torsionClosed E.interactionClosed)

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse