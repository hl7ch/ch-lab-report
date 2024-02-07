Profile: ChLabPatient
Parent: CHCorePatientEPR
Id: ch-lab-patient
Title: "CH Lab Patient"
Description: "This profile constrains the Patient resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Patient"
* ^extension[$imposeProfile].valueCanonical = Canonical(PatientEuLab)
