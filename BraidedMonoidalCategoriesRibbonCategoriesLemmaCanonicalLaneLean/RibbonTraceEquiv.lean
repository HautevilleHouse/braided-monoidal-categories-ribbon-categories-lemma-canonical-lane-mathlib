import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.RibbonCategory
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean.TraceStructure

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean

structure RibbonTraceEquivPackage {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B}
    (T : TraceStructurePackage) where
  ribbonToTrace : Prop
  traceToRibbon : Prop
  equivalenceCondition : Prop

structure RibbonTraceEquivEvidence {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B}
    {T : TraceStructurePackage} (E : RibbonTraceEquivPackage T) where
  ribbonToTraceClosed : E.ribbonToTrace
  traceToRibbonClosed : E.traceToRibbon
  equivalenceConditionClosed : E.equivalenceCondition

def RibbonTraceEquivClosed {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B}
    {T : TraceStructurePackage} (E : RibbonTraceEquivPackage T) : Prop :=
  E.ribbonToTrace ∧ E.traceToRibbon ∧ E.equivalenceCondition

theorem ribbon_trace_equiv_closed_from_evidence
    {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B}
    {T : TraceStructurePackage} (P : RibbonTraceEquivPackage T)
    (E : RibbonTraceEquivEvidence P) : RibbonTraceEquivClosed P := by
  exact And.intro E.ribbonToTraceClosed (And.intro E.traceToRibbonClosed E.equivalenceConditionClosed)

end BraidedMonoidalCategoriesRibbonCategoriesLemmaCanonicalLaneLean
end HautevilleHouse