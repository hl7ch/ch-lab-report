Profile: ChLabDiagnosticReport
Parent: DiagnosticReport
Id: ch-lab-diagnosticreport
Title: "DiagnosticReport: Laboratory Report (CH Lab)"
Description: "This profile constrains the DiagnosticReport resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "DiagnosticReport: Laboratory Report (CH Lab)"

* obeys ch-lab-dr1
/*
* extension contains $imposeProfile named imposeProfile 1..*
* extension[imposeProfile].valueCanonical = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"
*/

* subject only Reference(ChLabPatient)
* result only Reference(ChLabObservationResultsLaboratory)
