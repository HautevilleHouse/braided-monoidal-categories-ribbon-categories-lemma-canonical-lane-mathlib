import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure BraidedMonoidalCategoryPackage where
  tensorProduct : Type u -> Type u -> Type u
  associator : (X Y Z : Type u) -> tensorProduct (tensorProduct X Y) Z ≅ tensorProduct X (tensorProduct Y Z)
  braiding : (X Y : Type u) -> tensorProduct X Y ≅ tensorProduct Y X
  pentagonIdentity : Prop
  hexagonIdentity : Prop
  coherenceConditions : Prop

structure BraidedMonoidalCategoryEvidence (B : BraidedMonoidalCategoryPackage) where
  pentagonIdentityClosed : B.pentagonIdentity
  hexagonIdentityClosed : B.hexagonIdentity
  coherenceConditionsClosed : B.coherenceConditions

def BraidedMonoidalCategoryClosed (B : BraidedMonoidalCategoryPackage) : Prop :=
  B.pentagonIdentity ∧ B.hexagonIdentity ∧ B.coherenceConditions

theorem braided_monoidal_category_closed_from_evidence
    (B : BraidedMonoidalCategoryPackage) (E : BraidedMonoidalCategoryEvidence B) :
    BraidedMonoidalCategoryClosed B := by
  exact And.intro E.pentagonIdentityClosed (And.intro E.hexagonIdentityClosed E.coherenceConditionsClosed)

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse