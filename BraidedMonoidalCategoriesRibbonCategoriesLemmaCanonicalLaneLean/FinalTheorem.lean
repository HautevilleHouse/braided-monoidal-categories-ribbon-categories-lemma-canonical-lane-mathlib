import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

def ConstrainedRibbonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ribbon_endgame (A : AdmissibleClass) :
    ConstrainedRibbonClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
