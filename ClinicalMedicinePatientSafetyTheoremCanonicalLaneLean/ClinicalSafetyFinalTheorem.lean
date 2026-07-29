import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

def ConstrainedClinicalSafetyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_clinical_safety_endgame (A : AdmissibleClass) :
    ConstrainedClinicalSafetyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
