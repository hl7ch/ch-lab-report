Profile: DiagnosticReportChLab
Parent: DiagnosticReport
Id: DiagnosticReport-ch-lab
Title: "DiagnosticReport (CH Lab)"
Description: "This profile constrains the DiagnosticReport resource to represent laboratory test reports in Switzerland."
* . ^short = "DiagnosticReport (CH Lab)"

* obeys ch-lab-dr1
/*
* extension contains $imposeProfile named imposeProfile 1..*
* extension[imposeProfile].valueCanonical = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"
*/

* result only Reference(ObservationResultsLaboratoryChLab)
