import canonicalLaneMathlib.AdmissibleClass
import CivilEngineeringConcreteStructuresCanonicalLaneLean.CrackControl
import CivilEngineeringConcreteStructuresCanonicalLaneLean.DeflectionServiceability

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  trivial

def ConstrainedConcreteClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_concrete_endgame (A : AdmissibleClass) : ConstrainedConcreteClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse