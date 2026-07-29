import ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.PharmacokineticGate

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure DiagnosticInferencePackage where
  sensitivity : Prop
  specificity : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  likelihoodRatio : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  likelihoodRatioClosed : D.likelihoodRatio

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.sensitivity ∧ D.specificity ∧ D.positivePredictiveValue ∧ D.negativePredictiveValue ∧ D.likelihoodRatio

theorem diagnostic_inference_closed (D : DiagnosticInferencePackage) (E : DiagnosticInferenceEvidence D) : DiagnosticInferenceClosed D :=
  And.intro E.sensitivityClosed (And.intro E.specificityClosed (And.intro E.positivePredictiveValueClosed (And.intro E.negativePredictiveValueClosed E.likelihoodRatioClosed)))

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse