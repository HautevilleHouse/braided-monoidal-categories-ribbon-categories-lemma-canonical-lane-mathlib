import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure BraidedMonoidalCategory where
  tensorProduct : Type u -> Type u -> Type u
  unit : Type u
  associator : forall A B C : Type u, (tensorProduct (tensorProduct A B) C) ≅ (tensorProduct A (tensorProduct B C))
  leftUnitor : forall A : Type u, (tensorProduct unit A) ≅ A
  rightUnitor : forall A : Type u, (tensorProduct A unit) ≅ A
  pentagonCondition : Prop
  triangleCondition : Prop

default

structure Braiding (C : BraidedMonoidalCategory) where
  braiding : forall A B : Type u, C.tensorProduct A B ≅ C.tensorProduct B A
  hexagonCondition : Prop

default

structure BraidedEvidence (C : BraidedMonoidalCategory) (B : Braiding C) where
  braidingNatural : Prop
  hexagonConditionClosed : B.hexagonCondition

default

def BraidedClosed (C : BraidedMonoidalCategory) (B : Braiding C) : Prop :=
  B.hexagonCondition

theorem braided_closed_from_evidence (C : BraidedMonoidalCategory) (B : Braiding C) (E : BraidedEvidence C B) :
  BraidedClosed C B := by
  exact E.hexagonConditionClosed

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse