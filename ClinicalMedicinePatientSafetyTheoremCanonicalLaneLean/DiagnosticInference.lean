import ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.PatientSafetyDomain

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure DiagnosticTest where
  sensitivity : Float
  specificity : Float
  positivePredictiveValue : Float
  negativePredictiveValue : Float
  testPerformanceAdmissible : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticTest) where
  testPerformanceAdmissibleClosed : D.testPerformanceAdmissible
  validPrevalenceRange : Prop

def DiagnosticInferenceClosed (D : DiagnosticTest) : Prop :=
  D.testPerformanceAdmissible

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticTest)
    (E : DiagnosticInferenceEvidence D) : DiagnosticInferenceClosed D := by
  exact E.testPerformanceAdmissibleClosed

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse