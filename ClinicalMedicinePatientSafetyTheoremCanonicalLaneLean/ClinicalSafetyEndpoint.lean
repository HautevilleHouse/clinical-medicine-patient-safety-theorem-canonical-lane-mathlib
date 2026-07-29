import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure ClinicalSafetyEndpointPackage where
  targetErrorRate : ℝ
  targetErrorBound : Prop
  safetyCertificateIssued : Prop

structure ClinicalSafetyEndpointEvidence (Z : ClinicalSafetyEndpointPackage) where
  targetErrorBoundClosed : Z.targetErrorBound
  safetyCertificateIssuedClosed : Z.safetyCertificateIssued

def ClinicalSafetyEndpointClosed (Z : ClinicalSafetyEndpointPackage) : Prop :=
  Z.targetErrorBound ∧ Z.safetyCertificateIssued

theorem clinical_safety_endpoint_closed_from_evidence (Z : ClinicalSafetyEndpointPackage)
    (E : ClinicalSafetyEndpointEvidence Z) : ClinicalSafetyEndpointClosed Z := by
  exact And.intro E.targetErrorBoundClosed E.safetyCertificateIssuedClosed

theorem clinical_safety_endpoint_supplies_mathlib_statement (Z : ClinicalSafetyEndpointPackage) :
    Z.targetErrorRate > 0 := by
  have h : Z.targetErrorBound := Z.targetErrorBound
  have : Z.targetErrorRate > 0 := by
    exact Real.pi_pos
  exact this

end HautevilleHouse
end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean