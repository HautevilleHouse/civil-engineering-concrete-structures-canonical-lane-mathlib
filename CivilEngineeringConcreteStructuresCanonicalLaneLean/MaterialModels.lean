import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure MaterialModel where
  elasticityModulus : ℝ
  compressiveStrength : ℝ
  tensileStrength : ℝ
  stressStrainRelation : Prop
structure ConcreteMaterialPackage where
  material : MaterialModel
  creep : Prop
  shrinkage : Prop
  durability : Prop
structure ConcreteMaterialEvidence (M : ConcreteMaterialPackage) where
  stressStrainClosed : M.material.stressStrainRelation
  creepClosed : M.creep
  shrinkageClosed : M.shrinkage
  durabilityClosed : M.durability
def ConcreteMaterialClosed (M : ConcreteMaterialPackage) : Prop :=
  M.material.stressStrainRelation ∧ M.creep ∧ M.shrinkage ∧ M.durability
theorem concrete_material_closed_from_evidence (M : ConcreteMaterialPackage)
    (E : ConcreteMaterialEvidence M) : ConcreteMaterialClosed M := by
  exact And.intro E.stressStrainClosed
    (And.intro E.creepClosed (And.intro E.shrinkageClosed E.durabilityClosed))

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse