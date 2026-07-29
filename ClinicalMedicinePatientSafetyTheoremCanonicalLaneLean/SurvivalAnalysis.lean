import ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.PatientSafetyDomain

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure SurvivalModel where
  hazardFunction : Float → Float
  survivalFunction : Float → Float
  covariates : List String
  modelValid : Prop

structure SurvivalAnalysisEvidence (S : SurvivalModel) where
  modelValidClosed : S.modelValid
  proportionalHazardsAssumption : Prop

def SurvivalAnalysisClosed (S : SurvivalModel) : Prop :=
  S.modelValid

theorem survival_analysis_closed_from_evidence (S : SurvivalModel)
    (E : SurvivalAnalysisEvidence S) : SurvivalAnalysisClosed S := by
  exact E.modelValidClosed

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse