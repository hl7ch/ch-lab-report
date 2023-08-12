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

// ╭────────────── instance 1-tvt ──────────────────────────────╮
// │  Scenario deep vein thrombosis: HbHt-panel, CRP, D-Dimer   |
// ╰────────────────────────────────────────────────────────────╯

Instance: DiagnosticReport-1-tvt
InstanceOf: ChLabDiagnosticReport
Description: "Example of DiagnosticReport in the scenario of deep vein thrombosis"
// Usage: #inline
Usage: #example
* id = "3a743273-237a-446a-a8da-9e7521cce614"
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(Composition-1-tvt)
* status = #final
* category = $v2-0074#HM "Hematology"
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer.display = "Dr. Eva Erlenmeyer"
* result = Reference(HbHt-Observation)