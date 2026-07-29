import HautevilleHouse.ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure PatientSafetyAdmittedObject where
  clinicalEndpoint : Prop
  safetyEvidence : Prop
  conclusion : clinicalEndpoint ∧ safetyEvidence

def PatientSafetyWitnessClosed (O : PatientSafetyAdmittedObject) : Prop :=
  O.clinicalEndpoint ∧ O.safetyEvidence

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse