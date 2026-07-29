import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.RibbonCategory

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure RibbonAdmittedObject where
  category : Type u
  monoidalStructure : MonoidalCategory category
  ribbonStructure : RibbonCategory category

def ribbonWitnessClosed (O : RibbonAdmittedObject) : Prop := True

structure AdmissibleClassRibbon where
  object : RibbonAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded
  bridgeWitness : ribbonWitnessClosed object

def admittedClosureRibbon (A : AdmissibleClassRibbon) : Prop :=
  ribbonWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
