import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConcreteStructuresCanonicalLaneLean

structure PrestressLossPackage where
  immediateElasticShortening : Prop
  creepLoss : Prop
  shrinkageLoss : Prop
  relaxationLoss : Prop
  totalEffectivePrestress : Prop

structure PrestressLossEvidence (P : PrestressLossPackage) where
  immediateElasticShorteningClosed : P.immediateElasticShortening
  creepLossClosed : P.creepLoss
  shrinkageLossClosed : P.shrinkageLoss
  relaxationLossClosed : P.relaxationLoss
  totalEffectivePrestressClosed : P.totalEffectivePrestress

def PrestressLossClosed (P : PrestressLossPackage) : Prop :=
  P.immediateElasticShortening ∧ P.creepLoss ∧ P.shrinkageLoss ∧
  P.relaxationLoss ∧ P.totalEffectivePrestress

theorem prestress_loss_closed_from_evidence (P : PrestressLossPackage)
    (E : PrestressLossEvidence P) : PrestressLossClosed P := by
  exact And.intro E.immediateElasticShorteningClosed
    (And.intro E.creepLossClosed
      (And.intro E.shrinkageLossClosed
        (And.intro E.relaxationLossClosed E.totalEffectivePrestressClosed)))

end CivilEngineeringConcreteStructuresCanonicalLaneLean
end HautevilleHouse