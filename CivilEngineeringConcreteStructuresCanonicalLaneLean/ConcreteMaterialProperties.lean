import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure ConcreteStrengthPackage where
  compressiveStrength : Prop
  tensileStrength : Prop
  modulusOfElasticity : Prop
  poissonRatio : Prop
  creepCoefficient : Prop
  shrinkageStrain : Prop

structure ConcreteStrengthEvidence (C : ConcreteStrengthPackage) where
  compressiveStrengthClosed : C.compressiveStrength
  tensileStrengthClosed : C.tensileStrength
  modulusOfElasticityClosed : C.modulusOfElasticity
  poissonRatioClosed : C.poissonRatio
  creepCoefficientClosed : C.creepCoefficient
  shrinkageStrainClosed : C.shrinkageStrain

def ConcreteStrengthClosed (C : ConcreteStrengthPackage) : Prop :=
  C.compressiveStrength ∧ C.tensileStrength ∧ C.modulusOfElasticity ∧
  C.poissonRatio ∧ C.creepCoefficient ∧ C.shrinkageStrain

theorem concrete_strength_closed_from_evidence (C : ConcreteStrengthPackage)
    (E : ConcreteStrengthEvidence C) : ConcreteStrengthClosed C := by
  exact And.intro E.compressiveStrengthClosed
    (And.intro E.tensileStrengthClosed
      (And.intro E.modulusOfElasticityClosed
        (And.intro E.poissonRatioClosed
          (And.intro E.creepCoefficientClosed E.shrinkageStrainClosed))))

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse