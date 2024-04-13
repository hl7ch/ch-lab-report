Profile: ChLabPatient
Parent: CHCorePatient
Id: ch-lab-patient
Title: "CH LAB Patient"
Description: "This profile constrains the Patient resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH LAB Patient"
* ^extension[$imposeProfile].valueCanonical = Canonical(PatientEuLab)

