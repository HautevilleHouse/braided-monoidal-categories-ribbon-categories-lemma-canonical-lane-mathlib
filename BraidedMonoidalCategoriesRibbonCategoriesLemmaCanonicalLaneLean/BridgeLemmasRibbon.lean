import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.AdmissibleClassRibbon

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

def bridgeClosedRibbon (A : AdmissibleClassRibbon) : Prop :=
  ribbonWitnessClosed A.object

theorem bridge_from_admissible_class_ribbon (A : AdmissibleClassRibbon) :
    bridgeClosedRibbon A := by
  exact A.bridgeWitness

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
