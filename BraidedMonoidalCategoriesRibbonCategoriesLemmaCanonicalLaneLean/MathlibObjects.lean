import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure BraidedMonoidalCategoryObject where
  carrier : Type u
  monoidalStructure : Prop
  braiding : Prop
  hexagonAxiom : Prop

structure RibbonObject (B : BraidedMonoidalCategoryObject) where
  twist : Prop
  twistHexagonAxiom : Prop
  twistBalancedAxiom : Prop
  conclusion : twistBalancedAxiom

structure BraidedRibbonAdmittedObject where
  braidedObject : BraidedMonoidalCategoryObject
  ribbonObject : RibbonObject braidedObject
  lemmaStatement : Prop
  conclusion : lemmaStatement

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse