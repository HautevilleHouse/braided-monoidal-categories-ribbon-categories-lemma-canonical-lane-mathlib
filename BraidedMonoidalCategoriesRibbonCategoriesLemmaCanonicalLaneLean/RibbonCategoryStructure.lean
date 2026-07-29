import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure RibbonCategory (C : BraidedMonoidalCategory) (B : Braiding C) where
  twist : forall A : Type u, C.tensorProduct A A ≅ C.tensorProduct A A
  ribbonCondition : Prop

default

structure RibbonEvidence (C : BraidedMonoidalCategory) (B : Braiding C) (R : RibbonCategory C B) where
  twistNatural : Prop
  ribbonConditionClosed : R.ribbonCondition

default

def RibbonClosed (C : BraidedMonoidalCategory) (B : Braiding C) (R : RibbonCategory C B) : Prop :=
  R.ribbonCondition

theorem ribbon_closed_from_evidence (C : BraidedMonoidalCategory) (B : Braiding C) (R : RibbonCategory C B) (E : RibbonEvidence C B R) :
  RibbonClosed C B R := by
  exact E.ribbonConditionClosed

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse