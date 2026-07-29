import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.PatientSafetyAdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure CompartmentModelPackage (A : AdmissibleClass) where
  modelStructure : Type
  rateConstants : Prop
  massBalance : Prop
  initialConditions : Prop
  solutionExistence : Prop
  uniqueness : Prop
  parameterIdentifiability : Prop

structure CompartmentModelEvidence {A : AdmissibleClass} (C : CompartmentModelPackage A) where
  rateConstantsClosed : C.rateConstants
  massBalanceClosed : C.massBalance
  initialConditionsClosed : C.initialConditions
  solutionExistenceClosed : C.solutionExistence
  uniquenessClosed : C.uniqueness
  parameterIdentifiabilityClosed : C.parameterIdentifiability

def CompartmentModelClosed {A : AdmissibleClass} (C : CompartmentModelPackage A) : Prop :=
  C.rateConstants ∧ C.massBalance ∧ C.initialConditions ∧
  C.solutionExistence ∧ C.uniqueness ∧ C.parameterIdentifiability

theorem compartment_model_closed_from_evidence {A : AdmissibleClass} (C : CompartmentModelPackage A) (E : CompartmentModelEvidence C) : CompartmentModelClosed C :=
  And.intro E.rateConstantsClosed (And.intro E.massBalanceClosed (And.intro E.initialConditionsClosed
    (And.intro E.solutionExistenceClosed (And.intro E.uniquenessClosed E.parameterIdentifiabilityClosed))))

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse