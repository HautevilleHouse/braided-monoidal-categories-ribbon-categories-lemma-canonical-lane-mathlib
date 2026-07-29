import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure TraceStructurePackage where
  trace : (X : Type u) -> (X → X) → Type v
  traceLaws : Prop
  naturality : Prop
  vanishing : Prop
  supercyclicity : Prop

structure TraceStructureEvidence (T : TraceStructurePackage) where
  traceLawsClosed : T.traceLaws
  naturalityClosed : T.naturality
  vanishingClosed : T.vanishing
  supercyclicityClosed : T.supercyclicity

def TraceStructureClosed (T : TraceStructurePackage) : Prop :=
  T.traceLaws ∧ T.naturality ∧ T.vanishing ∧ T.supercyclicity

theorem trace_structure_closed_from_evidence
    (T : TraceStructurePackage) (E : TraceStructureEvidence T) :
    TraceStructureClosed T := by
  exact And.intro E.traceLawsClosed (And.intro E.naturalityClosed (And.intro E.vanishingClosed E.supercyclicityClosed))

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse