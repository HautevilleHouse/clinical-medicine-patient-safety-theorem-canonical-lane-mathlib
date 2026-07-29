import ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.PatientSafetyDomain

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure AdverseEventReporting where
  eventType : String
  severity : Nat
  causeAnalysis : Prop
  preventionMeasures : Prop
  reportAdmissible : Prop

structure AdverseEventDetectionEvidence (A : AdverseEventReporting) where
  reportAdmissibleClosed : A.reportAdmissible
  rootCauseIdentified : Prop

def AdverseEventDetectionClosed (A : AdverseEventReporting) : Prop :=
  A.reportAdmissible

theorem adverse_event_detection_closed_from_evidence (A : AdverseEventReporting)
    (E : AdverseEventDetectionEvidence A) : AdverseEventDetectionClosed A := by
  exact E.reportAdmissibleClosed

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse