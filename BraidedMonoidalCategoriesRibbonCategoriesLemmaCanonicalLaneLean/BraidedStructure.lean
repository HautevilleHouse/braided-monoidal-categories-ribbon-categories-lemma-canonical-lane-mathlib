import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure BraidedMonoidalPackage where
  category : Type u
  tensorProduct : category → category → category
  braiding : ∀ (X Y : category), (tensorProduct X Y) ⟶ (tensorProduct Y X)
  hexagonEquations : Prop
  braidingNaturality : Prop
  strictnessConditions : Prop

structure BraidedMonoidalEvidence (B : BraidedMonoidalPackage) where
  hexagonEquationsClosed : B.hexagonEquations
  braidingNaturalityClosed : B.braidingNaturality
  strictnessConditionsClosed : B.strictnessConditions

def BraidedMonoidalClosed (B : BraidedMonoidalPackage) : Prop :=
  B.hexagonEquations ∧ B.braidingNaturality ∧ B.strictnessConditions

theorem braided_monoidal_closed_from_evidence (B : BraidedMonoidalPackage) (E : BraidedMonoidalEvidence B) :
    BraidedMonoidalClosed B := by
  exact And.intro E.hexagonEquationsClosed (And.intro E.braidingNaturalityClosed E.strictnessConditionsClosed)

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse