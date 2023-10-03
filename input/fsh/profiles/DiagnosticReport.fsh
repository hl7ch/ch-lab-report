Profile: ChLabDiagnosticReport
Parent: DiagnosticReport
Id: ch-lab-diagnosticreport
Title: "CH Lab DiagnosticReport: Laboratory Report"
Description: "This profile constrains the DiagnosticReport resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab DiagnosticReport: Laboratory Report"

* obeys ch-lab-dr1

// ╭─── Extension ───╮
// │  CompositionR5  │
// ╰─────────────────╯
* extension contains $diagnostic-report-composition-r5 named DiagnosticReportCompositionR5 1..1
* extension[DiagnosticReportCompositionR5]
  * ^short = "Associated Lab Report Composition"
  * ^definition = "This extension implements the R5 composition element. It allow to link this DiagnoticReport with the Composition documenting this Laboratory Report."
  *  valueReference 1..1
  *  valueReference only Reference(CompositionLabReportEu)

// ╭─── Extension ───╮
// │  ObservationR5  │
// ╰─────────────────╯
* extension contains $diagnostic-report-result-r5 named DiagnosticReportResultR5 0..1 //1..1

* extension[DiagnosticReportResultR5]
  * ^short = "Lab Report Result"
  * ^definition = "This extension implements the R5 Result Element. It allows to reference an ObservationDefinition for information about normal Range or Method or Devices from a catalog"
  * valueReference 0..1 //1..1
  * valueReference only Reference(ChLabObservationResultsLaboratory)


* category = $sct#4241000179101 // Laboratory report (record artifact)
* code = $loinc#11502-2 // LABORATORY REPORT.TOTAL
* code ^short = "Laboratory report"
* subject 1..
* subject only Reference(ChLabPatient)
* result 1..
* result only Reference(ChLabObservationResultsLaboratory)
* performer 1..
* performer only Reference(CHCoreOrganization or ChLabPractitioner or ChLabPractitionerRole)

// ╭────────────── instance 1-tvt ──────────────────────────────╮
// │  Scenario deep vein thrombosis: HbHt-panel, CRP, D-Dimer   |
// ╰────────────────────────────────────────────────────────────╯

