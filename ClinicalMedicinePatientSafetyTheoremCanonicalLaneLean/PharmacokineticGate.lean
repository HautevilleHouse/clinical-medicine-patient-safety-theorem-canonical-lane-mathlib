import ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.CompartmentModelBridge

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse