Profile: ChLabPatient
Parent: CHCorePatient
Id: ch-lab-patient
Title: "CH Lab Patient"
Description: "This profile constrains the Patient resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Patient"

* obeys ch-lab-pat1

// * extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1 MS