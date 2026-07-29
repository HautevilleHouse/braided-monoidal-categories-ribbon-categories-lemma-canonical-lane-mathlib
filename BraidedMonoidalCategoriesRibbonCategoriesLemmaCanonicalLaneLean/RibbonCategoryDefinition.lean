import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure RibbonCategoryStructure where
  braidedCategory : BraidedCategoryStructure
  twist : ∀ (X : Type u), X ≅ X
  ribbonCondition : ∀ (X : Type u), (twist X) ∘ (braiding X X) ∘ (twist X) = identity (X ⊗ X)
  twistNaturality : Prop
  twistCompatibility : Prop

structure RibbonCategoryEvidence (R : RibbonCategoryStructure) where
  ribbonConditionClosed : ∀ X, R.ribbonCondition X
  twistNaturalityClosed : R.twistNaturality
  twistCompatibilityClosed : R.twistCompatibility

def RibbonCategoryClosed (R : RibbonCategoryStructure) : Prop :=
  (∀ X, R.ribbonCondition X) ∧ R.twistNaturality ∧ R.twistCompatibility

theorem ribbon_category_closed_from_evidence (R : RibbonCategoryStructure) (E : RibbonCategoryEvidence R) : RibbonCategoryClosed R := by
  exact And.intro E.ribbonConditionClosed (And.intro E.twistNaturalityClosed E.twistCompatibilityClosed)

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse