import ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.PatientSafetyDomain

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure CompartmentalModel where
  numberCompartments : Nat
  rateConstants : List Float
  initialDose : Float
  drugConcentrationCurve : Float → Float
  modelAdmissible : Prop

structure CompartmentModelEvidence (M : CompartmentalModel) where
  modelAdmissibleClosed : M.modelAdmissible
  parameterWithinBounds : Prop

def CompartmentModelClosed (M : CompartmentalModel) : Prop :=
  M.modelAdmissible

theorem compartment_model_closed_from_evidence (M : CompartmentalModel)
    (E : CompartmentModelEvidence M) : CompartmentModelClosed M := by
  exact E.modelAdmissibleClosed

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse