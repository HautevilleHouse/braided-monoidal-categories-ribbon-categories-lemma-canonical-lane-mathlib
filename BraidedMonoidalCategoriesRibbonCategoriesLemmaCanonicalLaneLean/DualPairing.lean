import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure DualPairingPackage where
  dual : Type u -> Type u
  coevaluation : (X : Type u) -> tensorObject X (dual X)
  evaluation : (X : Type u) -> tensorObject (dual X) X
  triangleIdentity : Prop
  zigzagIdentity : Prop
  rigidityCondition : Prop

structure DualPairingEvidence (D : DualPairingPackage) where
  triangleIdentityClosed : D.triangleIdentity
  zigzagIdentityClosed : D.zigzagIdentity
  rigidityConditionClosed : D.rigidityCondition

def DualPairingClosed (D : DualPairingPackage) : Prop :=
  D.triangleIdentity ∧ D.zigzagIdentity ∧ D.rigidityCondition

theorem dual_pairing_closed_from_evidence
    (D : DualPairingPackage) (E : DualPairingEvidence D) :
    DualPairingClosed D := by
  exact And.intro E.triangleIdentityClosed (And.intro E.zigzagIdentityClosed E.rigidityConditionClosed)

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse