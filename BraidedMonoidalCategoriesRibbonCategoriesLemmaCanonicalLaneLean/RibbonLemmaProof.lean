import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure RibbonLemmaProof where
  ribbonCategory : RibbonCategoryStructure
  braidingSquaredIsIdentity : ∀ (X : Type u), (braiding X X) ∘ (braiding X X) = identity (X ⊗ X)
  twistSquareIsIdentity : ∀ (X : Type u), (twist X) ∘ (twist X) = identity X

structure RibbonLemmaEvidence (L : RibbonLemmaProof) where
  braidingSquaredIsIdentityClosed : ∀ X, L.braidingSquaredIsIdentity X
  twistSquareIsIdentityClosed : ∀ X, L.twistSquareIsIdentity X

def RibbonLemmaClosed (L : RibbonLemmaProof) : Prop :=
  (∀ X, L.braidingSquaredIsIdentity X) ∧ (∀ X, L.twistSquareIsIdentity X)

theorem ribbon_lemma_closed_from_evidence (L : RibbonLemmaProof) (E : RibbonLemmaEvidence L) : RibbonLemmaClosed L := by
  exact And.intro E.braidingSquaredIsIdentityClosed E.twistSquareIsIdentityClosed

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse