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
  *  valueReference only Reference(ChLabReportComposition)

* basedOn only Reference (ChLabReportServiceRequest)

// ╭─── Extension ───╮
// │  ObservationR5  │
// ╰─────────────────╯
/*
* extension contains $diagnostic-report-result-r5 named DiagnosticReportResultR5 1..1

* extension[DiagnosticReportResultR5]
  * ^short = "Lab Report Result"
  * ^definition = "This extension implements the R5 Result Element. It allows to reference an ObservationDefinition for information about normal Range or Method or Devices from a catalog"
  * valueReference 1..1
  * valueReference only Reference(ChLabObservationResultsLaboratory)
*/

// * category = $sct#4241000179101 // Laboratory report (record artifact)
/*
* category ..* MS
* category only CodeableConcept
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice value for category code"
* category ^slicing.ordered = false
* category contains CategoryCode 1..1
* category[CategoryCode].coding.system 1..1
* category[CategoryCode].coding.system only uri
* category[CategoryCode].coding.system = $sct (exactly)
* category[CategoryCode].coding.code 1..1
* category[CategoryCode].coding.code only code
* category[CategoryCode].coding.code = #4241000179101
*/

* category /* obeys labRpt-category */
  * ^short = "Report Category"
  * ^definition = "Specifies the Report Category: usually Laboratory"
  * ^comment = "DiagnosticReport.category and Composition.category shall be aligned"
* category only $CodeableConcept-uv-ips
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies this laboratory report."
* category contains studyType 0..*
* category[studyType] only $CodeableConcept-uv-ips
* category[studyType] from LabStudyTypesEuVs
* category[studyType] ^short = "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"
* category contains specialty 0..*
* category[specialty] only $CodeableConcept-uv-ips
* category[specialty] from LabSpecialtyEuVs
* category[specialty] ^short = "The way of grouping of the test results into clinically meaningful groups (e.g. liver test; minerals; glucose profiles)"


* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains CodeCode 1..1
* code.coding[CodeCode].system 1..1
* code.coding[CodeCode].system only uri
* code.coding[CodeCode].system = "http://loinc.org" (exactly)
* code.coding[CodeCode].code 1..1
* code.coding[CodeCode].code only code
* code.coding[CodeCode].code = #11502-2 (exactly)


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

