import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure SafetyInterventionPackage (M : CompartmentModelPackage)
    (P : PharmacokineticModelPackage M) (D : DiagnosticInferencePackage)
    (S : SurvivalAnalysisPackage) where
  interventionEffect : ℝ
  riskReduction : ℝ
  effectPositive : interventionEffect > 0
  riskReductionPositive : riskReduction > 0

structure SafetyInterventionEvidence {M : CompartmentModelPackage}
    {P : PharmacokineticModelPackage M} {D : DiagnosticInferencePackage}
    {S : SurvivalAnalysisPackage} (I : SafetyInterventionPackage M P D S) where
  effectPositiveClosed : I.effectPositive
  riskReductionPositiveClosed : I.riskReductionPositive

def SafetyInterventionClosed {M : CompartmentModelPackage}
    {P : PharmacokineticModelPackage M} {D : DiagnosticInferencePackage}
    {S : SurvivalAnalysisPackage} (I : SafetyInterventionPackage M P D S) : Prop :=
  I.effectPositive ∧ I.riskReductionPositive

theorem safety_intervention_closed_from_evidence {M : CompartmentModelPackage}
    {P : PharmacokineticModelPackage M} {D : DiagnosticInferencePackage}
    {S : SurvivalAnalysisPackage} (I : SafetyInterventionPackage M P D S)
    (E : SafetyInterventionEvidence I) : SafetyInterventionClosed I := by
  exact And.intro E.effectPositiveClosed E.riskReductionPositiveClosed

end HautevilleHouse
end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
