import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : BraidedCategoryStructure
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BraidedCategoryClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse