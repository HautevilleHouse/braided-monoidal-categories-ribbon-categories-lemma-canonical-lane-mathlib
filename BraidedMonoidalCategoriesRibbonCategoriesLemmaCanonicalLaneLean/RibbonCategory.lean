import canonicalLaneMathlib.AdmissibleClass
import BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.BraidedStructure

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure RibbonCategoryPackage {B : BraidedMonoidalPackage} (rib : RibbonData B) where
  ribbonMorphism : ∀ (X : B.category), (tensorProduct X (dualObject X)) ⟶ (tensorProduct (dualObject X) X)
  ribbonConditions : Prop
  selfDuality : Prop
  ribbonAxioms : ribbonConditions ∧ selfDuality

structure RibbonCategoryEvidence {B : BraidedMonoidalPackage} {rib : RibbonData B} (R : RibbonCategoryPackage rib) where
  ribbonConditionsClosed : R.ribbonConditions
  selfDualityClosed : R.selfDuality

def RibbonCategoryClosed {B : BraidedMonoidalPackage} {rib : RibbonData B} (R : RibbonCategoryPackage rib) : Prop :=
  R.ribbonConditions ∧ R.selfDuality

theorem ribbon_category_closed_from_evidence {B : BraidedMonoidalPackage} {rib : RibbonData B} (R : RibbonCategoryPackage rib) (E : RibbonCategoryEvidence R) :
    RibbonCategoryClosed R := by
  exact And.intro E.ribbonConditionsClosed E.selfDualityClosed

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse