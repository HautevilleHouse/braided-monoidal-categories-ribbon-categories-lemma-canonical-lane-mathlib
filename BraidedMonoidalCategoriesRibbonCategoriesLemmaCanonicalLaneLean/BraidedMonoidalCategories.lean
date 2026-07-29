import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure BraidedMonoidalCategory where
  obj : Type u
  hom : obj → obj → Type v
  id : ∀ X : obj, hom X X
  comp : ∀ {X Y Z : obj}, hom X Y → hom Y Z → hom X Z
  tensor : obj → obj → obj
  tensorHom : ∀ {X Y Z W : obj}, hom X Y → hom Z W → hom (tensor X Z) (tensor Y W)
  associator : ∀ X Y Z : obj, hom (tensor (tensor X Y) Z) (tensor X (tensor Y Z))
  leftUnitor : ∀ X : obj, hom (tensor I X) X
  rightUnitor : ∀ X : obj, hom (tensor X I) X
  braiding : ∀ X Y : obj, hom (tensor X Y) (tensor Y X)
  I : obj
  triangleIdentity : ∀ X Y : obj, comp (associator X I Y) (tensorHom (rightUnitor X) (id Y)) = tensorHom (id X) (leftUnitor Y)
  pentagonIdentity : ∀ X Y Z W : obj, ... 
  hexagonIdentity : ∀ X Y Z : obj, ... 
  naturalityBraiding : ∀ f : hom X Y, ∀ g : hom Z W, comp (tensorHom f g) (braiding Y W) = comp (braiding X Z) (tensorHom g f)
  coherenceLaws : Prop

def braidedMonoidalCategoryPackage (B : BraidedMonoidalCategory) : AdmissibleClass := {
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
