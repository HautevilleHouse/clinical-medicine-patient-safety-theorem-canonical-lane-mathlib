import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure AdmittedPatient where
  identifier : String
  diagnosedCondition : Prop
  treatmentProtocol : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure ClinicalObject where
  patient : AdmittedPatient
  conclusion : Prop

def clinicalWitnessClosed (O : ClinicalObject) : Prop :=
  O.conclusion

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse