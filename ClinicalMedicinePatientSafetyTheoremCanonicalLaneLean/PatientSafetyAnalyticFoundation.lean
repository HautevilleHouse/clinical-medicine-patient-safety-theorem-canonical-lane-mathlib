import ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.SurvivalAnalysis

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure PatientSafetyAnalyticFoundation where
  pharmacokinetic : PharmacokineticPackage
  pharmacokineticEvidence : PharmacokineticEvidence pharmacokinetic
  diagnostic : DiagnosticTestPackage
  diagnosticEvidence : DiagnosticTestEvidence diagnostic
  survival : SurvivalPackage
  survivalEvidence : SurvivalEvidence survival

def PatientSafetyAnalyticFoundationClosed (A : PatientSafetyAnalyticFoundation) : Prop :=
  PharmacokineticClosed A.pharmacokinetic ∧ DiagnosticTestClosed A.diagnostic ∧ SurvivalClosed A.survival

theorem patient_safety_analytic_foundation_closed_from_evidence (A : PatientSafetyAnalyticFoundation) :
    PatientSafetyAnalyticFoundationClosed A := by
  exact And.intro (pharmacokinetic_closed_from_evidence A.pharmacokinetic A.pharmacokineticEvidence)
    (And.intro (diagnostic_test_closed_from_evidence A.diagnostic A.diagnosticEvidence)
      (survival_closed_from_evidence A.survival A.survivalEvidence))

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse