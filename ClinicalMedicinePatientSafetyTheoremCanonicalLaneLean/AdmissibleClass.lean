import HautevilleHouse.ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : PatientSafetyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PatientSafetyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse