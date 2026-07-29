import canonicalLaneMathlib.AdmissibleClass
import CalabiYauTheoryComplexAnalyticFoundation.CalabiYauComplexStructure
import CalabiYauTheoryComplexAnalyticFoundation.CalabiYauKahlerRicciBridge

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticFoundation

def ConstrainedCalabiYauClosure (A : CalabiYauAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ KahlerRicciBridgeClosed defaultKahlerRicciCertificate

theorem constrained_calabi_yau_closure (A : CalabiYauAdmissibleClass) :
    ConstrainedCalabiYauClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) kahler_ricci_bridge_checked)

end CalabiYauTheoryComplexAnalyticFoundation
end HautevilleHouse