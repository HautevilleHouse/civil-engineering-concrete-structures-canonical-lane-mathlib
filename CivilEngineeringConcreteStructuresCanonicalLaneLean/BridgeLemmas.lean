import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

def bridgeClosed (A : AdmissibleConcreteClass) : Prop :=
  ConcreteWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleConcreteClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse