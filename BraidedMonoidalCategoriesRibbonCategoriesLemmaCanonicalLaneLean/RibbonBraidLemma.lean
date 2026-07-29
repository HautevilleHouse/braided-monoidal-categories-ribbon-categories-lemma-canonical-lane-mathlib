import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.BraidedMonoidalCategory
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.RibbonCategory

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure RibbonBraidLemmaPackage {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B} where
  ribbonImpliesBalanced : Prop
  balancedImpliesRibbon : Prop
  equivalenceCondition : Prop

structure RibbonBraidLemmaEvidence {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B}
    (L : RibbonBraidLemmaPackage R) where
  ribbonImpliesBalancedClosed : L.ribbonImpliesBalanced
  balancedImpliesRibbonClosed : L.balancedImpliesRibbon
  equivalenceConditionClosed : L.equivalenceCondition

def RibbonBraidLemmaClosed {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B}
    (L : RibbonBraidLemmaPackage R) : Prop :=
  L.ribbonImpliesBalanced ∧ L.balancedImpliesRibbon ∧ L.equivalenceCondition

theorem ribbon_braid_lemma_closed_from_evidence
    {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B}
    (L : RibbonBraidLemmaPackage R) (E : RibbonBraidLemmaEvidence L) :
    RibbonBraidLemmaClosed L := by
  exact And.intro E.ribbonImpliesBalancedClosed (And.intro E.balancedImpliesRibbonClosed E.equivalenceConditionClosed)

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse