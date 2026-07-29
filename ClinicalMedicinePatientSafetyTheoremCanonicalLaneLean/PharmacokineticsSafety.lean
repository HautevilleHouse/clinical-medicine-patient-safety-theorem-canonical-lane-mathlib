import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean.CompartmentModel

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure PharmacokineticsPackage {A : AdmissibleClass} (C : CompartmentModelPackage A) where
  absorptionModel : Prop
  distributionModel : Prop
  metabolismModel : Prop
  eliminationModel : Prop
  drugDoseResponse : Prop
  toxicThreshold : Prop
  therapeuticWindow : Prop

structure PharmacokineticsEvidence {A : AdmissibleClass} {C : CompartmentModelPackage A} (P : PharmacokineticsPackage C) where
  absorptionModelClosed : P.absorptionModel
  distributionModelClosed : P.distributionModel
  metabolismModelClosed : P.metabolismModel
  eliminationModelClosed : P.eliminationModel
  drugDoseResponseClosed : P.drugDoseResponse
  toxicThresholdClosed : P.toxicThreshold
  therapeuticWindowClosed : P.therapeuticWindow

def PharmacokineticsClosed {A : AdmissibleClass} {C : CompartmentModelPackage A} (P : PharmacokineticsPackage C) : Prop :=
  P.absorptionModel ∧ P.distributionModel ∧ P.metabolismModel ∧
  P.eliminationModel ∧ P.drugDoseResponse ∧ P.toxicThreshold ∧ P.therapeuticWindow

theorem pharmacokinetics_closed_from_evidence {A : AdmissibleClass} {C : CompartmentModelPackage A} (P : PharmacokineticsPackage C) (E : PharmacokineticsEvidence P) : PharmacokineticsClosed P :=
  And.intro E.absorptionModelClosed (And.intro E.distributionModelClosed (And.intro E.metabolismModelClosed
    (And.intro E.eliminationModelClosed (And.intro E.drugDoseResponseClosed (And.intro E.toxicThresholdClosed E.therapeuticWindowClosed)))))

end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
end HautevilleHouse