import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.PatientSafetyAdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PatientSafetyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse