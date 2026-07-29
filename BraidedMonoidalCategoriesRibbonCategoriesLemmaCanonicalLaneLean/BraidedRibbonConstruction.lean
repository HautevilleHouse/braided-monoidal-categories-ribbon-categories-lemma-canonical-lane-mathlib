import BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.MathlibObjects

/-!
# Braided Ribbon Construction

This module provides a deeper construction of braided ribbon structures.
-/

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure BraidedRibbonConstruction (B : BraidedMonoidalCategoryObject) where
  ribbon : RibbonObject B
  twistBalancedCondition : Prop
  twistBalancedConditionTerm : twistBalancedCondition
  lemmaStatement : Prop
  lemmaStatementTerm : lemmaStatement

def BraidedRibbonConstruction.toAdmittedObject
    (C : BraidedRibbonConstruction B) : BraidedRibbonAdmittedObject :=
  let braidedObject := B
  let ribbonObject := C.ribbon
  {
    braidedObject := braidedObject
    ribbonObject := ribbonObject
    lemmaStatement := C.lemmaStatement
    conclusion := C.lemmaStatementTerm
  }

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse