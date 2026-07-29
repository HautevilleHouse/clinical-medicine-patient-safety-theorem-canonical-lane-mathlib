import ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.DiagnosticInferencePackage

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure SurvivalAnalysisEndpoint where
  hazardRatio : ℝ
  survivalFunction : Prop
  censoringMechanism : Prop
  kaplanMeierEstimate : Prop
  coxProportionalHazards : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisEndpoint) where
  hazardRatioClosed : S.hazardRatio > 0
  survivalFunctionClosed : S.survivalFunction
  censoringMechanismClosed : S.censoringMechanism
  kaplanMeierEstimateClosed : S.kaplanMeierEstimate
  coxProportionalHazardsClosed : S.coxProportionalHazards

def SurvivalAnalysisClosed (S : SurvivalAnalysisEndpoint) : Prop :=
  (S.hazardRatio > 0) ∧ S.survivalFunction ∧ S.censoringMechanism ∧ S.kaplanMeierEstimate ∧ S.coxProportionalHazards

theorem survival_analysis_closed (S : SurvivalAnalysisEndpoint) (E : SurvivalAnalysisEvidence S) : SurvivalAnalysisClosed S :=
  And.intro E.hazardRatioClosed (And.intro E.survivalFunctionClosed (And.intro E.censoringMechanismClosed (And.intro E.kaplanMeierEstimateClosed E.coxProportionalHazardsClosed)))

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse