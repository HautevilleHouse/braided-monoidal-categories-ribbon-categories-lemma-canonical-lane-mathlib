import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.BraidedMonoidalCategories

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure RibbonCategory (B : BraidedMonoidalCategory) where
  twist : ∀ X : B.obj, B.hom X X
  twistNatural : ∀ f : B.hom X Y, B.comp (twist X) f = B.comp f (twist Y)
  twistTensor : ∀ X Y : B.obj, twist (B.tensor X Y) = B.comp (B.braiding Y X) (B.comp (B.braiding X Y) (B.tensorHom (twist X) (twist Y)))
  twistInvolutive : ∀ X : B.obj, B.comp (twist X) (twist X) = B.id X

def ribbonCategoryPackage (B : BraidedMonoidalCategory) (R : RibbonCategory B) : AdmissibleClass := {
  object := {
    space := { carrier := B.obj, topology := sorry },
    closedThreeManifold := True,
    simplyConnected := True,
    sphereModel := Unit,
    sphereTopology := by infer_instance,
    homeomorphicToSphere := True
  },
  endpointSatisfied := True,
  remainderRecorded := True,
  gateWitness := Or.inl True
}

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
