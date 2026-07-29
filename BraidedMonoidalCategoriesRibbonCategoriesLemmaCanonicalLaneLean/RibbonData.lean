import canonicalLaneMathlib.AdmissibleClass
import BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.BraidedStructure

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure RibbonData (B : BraidedMonoidalPackage) where
  dualObject : B.category → B.category
  unitObject : B.category
  evaluation : ∀ (X : B.category), (tensorProduct (dualObject X) X) ⟶ unitObject
  coevaluation : ∀ (X : B.category), unitObject ⟶ (tensorProduct X (dualObject X))
  ribbonConstraint : ∀ (X : B.category), (evaluation X) ∘ (braiding (dualObject X) X) ∘ (coevaluation X) = identity (tensorProduct X (dualObject X))
  fiberFunctor : Type v
  braidingConsistency : Prop
  pivotalStructure : Prop

structure RibbonDataEvidence {B : BraidedMonoidalPackage} (D : RibbonData B) where
  braidingConsistencyClosed : D.braidingConsistency
  pivotalStructureClosed : D.pivotalStructure
  ribbonConstraintClosed : D.ribbonConstraint

def RibbonDataClosed {B : BraidedMonoidalPackage} (D : RibbonData B) : Prop :=
  D.braidingConsistency ∧ D.pivotalStructure ∧ D.ribbonConstraint

theorem ribbon_data_closed_from_evidence {B : BraidedMonoidalPackage} (D : RibbonData B) (E : RibbonDataEvidence D) :
    RibbonDataClosed D := by
  exact And.intro E.braidingConsistencyClosed (And.intro E.pivotalStructureClosed E.ribbonConstraintClosed)

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse