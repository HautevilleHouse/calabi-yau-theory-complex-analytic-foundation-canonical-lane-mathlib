import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticFoundationCanonicalLaneLean

def ConstrainedCalabiConjectureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_calabi_conjecture_endgame (A : AdmissibleClass) : ConstrainedCalabiConjectureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

def CalabiYauManifoldAdmitted (A : AdmissibleClass) : Prop :=
  ConstrainedCalabiConjectureClosure A ∧ KaehlerMetricLayerClosed defaultKaehlerMetricCertificate ∧ HolonomyLayerClosed defaultHolonomyCertificate

theorem calabi_yau_manifold_admitted_checked (A : AdmissibleClass) : CalabiYauManifoldAdmitted A := by
  exact And.intro (constrained_calabi_conjecture_endgame A) (And.intro kaehler_metric_layer_closed_checked holonomy_layer_closed_checked)

end CalabiYauTheoryComplexAnalyticFoundationCanonicalLaneLean
end HautevilleHouse