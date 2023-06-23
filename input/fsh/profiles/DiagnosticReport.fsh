Profile: ChLabDiagnosticReport
Parent: DiagnosticReport
Id: ch-lab-diagnosticreport
Title: "CH Lab DiagnosticReport: Laboratory Report"
Description: "This profile constrains the DiagnosticReport resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab DiagnosticReport: Laboratory Report"

* obeys ch-lab-dr1
/*
* extension contains $imposeProfile named imposeProfile 1..*
* extension[imposeProfile].valueCanonical = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"
*/

* subject only Reference(ChLabPatient)
* result only Reference(ChLabObservationResultsLaboratory)
* performer