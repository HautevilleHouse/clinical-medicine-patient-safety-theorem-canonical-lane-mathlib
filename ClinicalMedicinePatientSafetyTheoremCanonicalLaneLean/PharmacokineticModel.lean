import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean

structure PharmacokineticModelPackage (M : CompartmentModelPackage) where
  drugClearanceRate : ℝ
  volumeOfDistribution : ℝ
  eliminationRateConstant : ℝ
  clearanceDefined : drugClearanceRate > 0
  volumeDefined : volumeOfDistribution > 0
  eliminationRateDefined : eliminationRateConstant > 0

structure PharmacokineticModelEvidence {M : CompartmentModelPackage}
    (P : PharmacokineticModelPackage M) where
  clearanceDefinedClosed : P.clearanceDefined
  volumeDefinedClosed : P.volumeDefined
  eliminationRateDefinedClosed : P.eliminationRateDefined

def PharmacokineticModelClosed {M : CompartmentModelPackage}
    (P : PharmacokineticModelPackage M) : Prop :=
  P.clearanceDefined ∧ P.volumeDefined ∧ P.eliminationRateDefined

theorem pharmacokinetic_model_closed_from_evidence {M : CompartmentModelPackage}
    (P : PharmacokineticModelPackage M) (E : PharmacokineticModelEvidence P)
    : PharmacokineticModelClosed P := by
  exact And.intro E.clearanceDefinedClosed
    (And.intro E.volumeDefinedClosed E.eliminationRateDefinedClosed)

end HautevilleHouse
end ClinicalMedicinePatientSafetyTheoremCanonicalLaneLean
