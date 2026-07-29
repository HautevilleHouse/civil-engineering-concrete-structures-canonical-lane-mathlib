import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure ConcreteMaterialPackage where
  aggregateSize : Float
  waterCementRatio : Float
  compressiveStrength : Float
  tensileStrength : Float
  elasticModulus : Float

def ConcreteMaterialClosed (M : ConcreteMaterialPackage) : Prop :=
  M.compressiveStrength > 0 ∧ M.tensileStrength > 0 ∧ M.elasticModulus > 0

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse