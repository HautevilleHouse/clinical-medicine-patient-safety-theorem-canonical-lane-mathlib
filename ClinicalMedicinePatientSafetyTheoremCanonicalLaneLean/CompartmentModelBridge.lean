import ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.PatientSafetyAdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.closedCompartmentModel ∧ A.object.diagnosticAccuracy ∧ A.object.survivalCensored

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse