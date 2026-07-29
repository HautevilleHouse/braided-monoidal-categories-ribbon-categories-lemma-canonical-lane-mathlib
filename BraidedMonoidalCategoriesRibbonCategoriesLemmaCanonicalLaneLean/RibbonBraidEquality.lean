import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.RibbonCategory

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

theorem ribbon_braid_equality (C : Type u) [MonoidalCategory C] (R : RibbonCategory C) (X : C) :
    (R.braiding.braiding X X).hom ≫ (R.twist.twist (X ⊗ X)).hom = (R.twist.twist X ▷ X) ≫ (R.braiding.braiding X X).hom ≫ (X ◁ R.twist.twist X) := by
  calc
    (R.braiding.braiding X X).hom ≫ (R.twist.twist (X ⊗ X)).hom
        = (R.braiding.braiding X X).hom ≫ ((R.braiding.braiding X X).hom ≫ (R.twist.twist X ▷ X) ≫ (R.braiding.braiding X X).hom ≫ (X ◁ R.twist.twist X)) := by
          rw [R.twist.balance X X]
    _ = ((R.braiding.braiding X X).hom ≫ (R.braiding.braiding X X).hom) ≫ (R.twist.twist X ▷ X) ≫ (R.braiding.braiding X X).hom ≫ (X ◁ R.twist.twist X) := by
          simp only [Category.assoc]
    _ = (𝟙 (X ⊗ X)) ≫ (R.twist.twist X ▷ X) ≫ (R.braiding.braiding X X).hom ≫ (X ◁ R.twist.twist X) := by
          have hh : (R.braiding.braiding X X).hom ≫ (R.braiding.braiding X X).hom = 𝟙 (X ⊗ X) := by
            calc
              (R.braiding.braiding X X).hom ≫ (R.braiding.braiding X X).hom = (R.braiding.braiding X X).hom ≫ inv (R.braiding.braiding X X).hom := by
                simp [R.twist.invertible X]
              _ = 𝟙 _ := by simp
          rw [hh]
    _ = (R.twist.twist X ▷ X) ≫ (R.braiding.braiding X X).hom ≫ (X ◁ R.twist.twist X) := by
          simp

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse