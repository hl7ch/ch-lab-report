Profile: ChLabDiagnosticReport
Parent: DiagnosticReport
Id: ch-lab-diagnosticreport
Title: "CH Lab DiagnosticReport: Laboratory Report"
Description: "This profile constrains the DiagnosticReport resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab DiagnosticReport: Laboratory Report"

* obeys ch-lab-dr1

* extension contains $diagnostic-report-observation-r5 named DiagnosticReportObservationR5 1..1

* extension[DiagnosticReportObservationR5]
  * ^short = "Lab Report Observation"
  * ^definition = "This extension implements the R5 instantiates Element. It allows to reference an ObservationDefinition for information about normal Range or Method or Devices from a catalog"
  * valueReference 1..1
  * valueReference only Reference(ObservationDefinition)

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

