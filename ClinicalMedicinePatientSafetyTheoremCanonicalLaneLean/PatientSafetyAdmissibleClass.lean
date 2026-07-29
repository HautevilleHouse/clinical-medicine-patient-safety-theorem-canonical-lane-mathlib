import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure PatientSafetyObject where
  patientCohort : Type
  interventionModel : Type
  outcomeMeasure : Type
  baselineRisk : Prop
  safetyEndpoint : Prop
  baselineRiskTerm : baselineRisk
  safetyEndpointTerm : safetyEndpoint

structure PatientSafetyAdmittedObject where
  object : PatientSafetyObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  conclusion : endpointSatisfied

structure AdmissibleClass where
  object : PatientSafetyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PatientSafetyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def PatientSafetyWitnessClosed (O : PatientSafetyAdmittedObject) : Prop :=
  O.endpointSatisfied

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse