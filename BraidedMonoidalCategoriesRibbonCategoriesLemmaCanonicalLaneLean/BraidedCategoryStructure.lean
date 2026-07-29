import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure BraidedCategoryStructure where
  monoidalProduct : Type u → Type u → Type u
  associator : ∀ (X Y Z : Type u), (monoidalProduct (monoidalProduct X Y) Z) ≅ (monoidalProduct X (monoidalProduct Y Z))
  leftUnitor : ∀ (X : Type u), (monoidalProduct (unitObject : Type u) X) ≅ X
  rightUnitor : ∀ (X : Type u), (monoidalProduct X (unitObject : Type u)) ≅ X
  braiding : ∀ (X Y : Type u), (monoidalProduct X Y) ≅ (monoidalProduct Y X)
  pentagonCondition : Prop
  triangleCondition : Prop
  hexagonCondition : Prop
  braidingNaturality : Prop

structure BraidedCategoryEvidence (B : BraidedCategoryStructure) where
  pentagonConditionClosed : B.pentagonCondition
  triangleConditionClosed : B.triangleCondition
  hexagonConditionClosed : B.hexagonCondition
  braidingNaturalityClosed : B.braidingNaturality

def BraidedCategoryClosed (B : BraidedCategoryStructure) : Prop :=
  B.pentagonCondition ∧ B.triangleCondition ∧ B.hexagonCondition ∧ B.braidingNaturality

theorem braided_category_closed_from_evidence (B : BraidedCategoryStructure) (E : BraidedCategoryEvidence B) : BraidedCategoryClosed B := by
  exact And.intro E.pentagonConditionClosed (And.intro E.triangleConditionClosed (And.intro E.hexagonConditionClosed E.braidingNaturalityClosed))

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse