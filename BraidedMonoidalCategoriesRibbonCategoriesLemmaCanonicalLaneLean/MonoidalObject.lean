import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure RibbonAdmittedObject where
  category : Type u
  categoryStructure : CategoryTheory.Category.{v, u} category
  braiding : CategoryTheory.Braided category
  ribbon : CategoryTheory.Ribbon category
  conclusion : Prop
  
def RibbonWitnessClosed (O : RibbonAdmittedObject) : Prop :=
  O.conclusion

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse