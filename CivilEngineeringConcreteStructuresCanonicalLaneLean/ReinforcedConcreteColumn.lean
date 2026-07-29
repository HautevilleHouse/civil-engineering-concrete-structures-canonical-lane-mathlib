import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure ReinforcedConcreteColumn {R : ConcreteMaterialPackage} where
  crossSectionArea : Float
  axialLoad : Float
  bucklingLength : Float
  slendernessRatio : Float
  capacityCheck : Prop

structure ColumnDesignEvidence {R : ConcreteMaterialPackage} (C : ReinforcedConcreteColumn R) where
  crossSectionAreaClosed : C.crossSectionArea > 0
  axialLoadClosed : C.axialLoad > 0

def ColumnDesignClosed {R : ConcreteMaterialPackage} (C : ReinforcedConcreteColumn R) : Prop :=
  C.capacityCheck

theorem column_design_closed_from_evidence {R : ConcreteMaterialPackage} (C : ReinforcedConcreteColumn R) (E : ColumnDesignEvidence C) : ColumnDesignClosed C := by
  exact C.capacityCheck

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse