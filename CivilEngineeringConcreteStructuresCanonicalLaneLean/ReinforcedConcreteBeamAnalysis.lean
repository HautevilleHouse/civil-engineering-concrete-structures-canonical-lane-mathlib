import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure ReinforcedConcreteBeamPackage where
  flexuralCapacity : Prop
  shearCapacity : Prop
  crackControl : Prop
  deflectionControl : Prop
  ductilityDemand : Prop

structure ReinforcedConcreteBeamEvidence (B : ReinforcedConcreteBeamPackage) where
  flexuralCapacityClosed : B.flexuralCapacity
  shearCapacityClosed : B.shearCapacity
  crackControlClosed : B.crackControl
  deflectionControlClosed : B.deflectionControl
  ductilityDemandClosed : B.ductilityDemand

def BeamAnalysisClosed (B : ReinforcedConcreteBeamPackage) : Prop :=
  B.flexuralCapacity ∧ B.shearCapacity ∧ B.crackControl ∧ B.deflectionControl ∧ B.ductilityDemand

theorem beam_analysis_closed_from_evidence (B : ReinforcedConcreteBeamPackage) (E : ReinforcedConcreteBeamEvidence B) : BeamAnalysisClosed B := by
  exact And.intro E.flexuralCapacityClosed
    (And.intro E.shearCapacityClosed
      (And.intro E.crackControlClosed
        (And.intro E.deflectionControlClosed E.ductilityDemandClosed)))

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse