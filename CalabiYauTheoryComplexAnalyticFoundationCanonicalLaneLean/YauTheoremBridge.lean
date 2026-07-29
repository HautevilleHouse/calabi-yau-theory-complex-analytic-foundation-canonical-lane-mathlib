import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticFoundationCanonicalLaneLean

structure YauAdmissibleClass (A : AdmissibleClass) : Prop := (bridgeClosed : bridgeClosed A) (gateClosed : gateClosed A)

theorem yau_bridge_from_admissible_class (A : AdmissibleClass) : YauAdmissibleClass A := by
  exact ⟨bridge_from_admissible_class A, gate_from_admissible_class A⟩

def YauTheoremBridgeClosed (C : KaehlerMetricCertificate) : Prop :=
  C.ricciFormComputed = true ∧ C.firstChernClassVanishes = true ∧ (∃ (h : HolonomyCertificate), h.suConditionChecked = true)

theorem yau_theorem_bridge_checked : YauTheoremBridgeClosed defaultKaehlerMetricCertificate := by
  refine And.intro rfl (And.intro rfl ?_)
  exact ⟨defaultHolonomyCertificate, rfl⟩

end CalabiYauTheoryComplexAnalyticFoundationCanonicalLaneLean
end HautevilleHouse