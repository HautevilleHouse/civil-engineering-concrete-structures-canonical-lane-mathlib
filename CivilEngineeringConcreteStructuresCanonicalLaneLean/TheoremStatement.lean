import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure ConcreteAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  designStrength : Prop
  reinforcementLayout : Prop
  loadCapacity : Prop
  conclusion : designStrength ∧ reinforcementLayout ∧ loadCapacity

def ConcreteStructureWitnessClosed (O : ConcreteAdmittedObject) : Prop :=
  O.designStrength ∧ O.reinforcementLayout ∧ O.loadCapacity

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  concreteStructureConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "civil-engineering-concrete-structures",
  theoremName := "Concrete Structure Admissibility Theorem",
  theoremObject := "Reinforced Concrete Beam Capacity",
  classicalBoundary := "Classical boundary carried by unrestricted sections",
  concreteStructureConstrainedStatement := "Beam capacity constrained by design strength and reinforcement layout",
  certificateLane := "concrete_structure_constrained",
  carriedRemainder := "Remaining open: dynamic loads and fatigue"
}

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse
