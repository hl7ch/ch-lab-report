Profile: ChLabDiagnosticReport
Parent: DiagnosticReport
Id: ch-lab-diagnosticreport
Title: "CH Lab DiagnosticReport: Laboratory Report"
Description: "This profile constrains the DiagnosticReport resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab DiagnosticReport: Laboratory Report"

* obeys ch-lab-dr1
* extension contains $diagnostic-report-composition-r5 named DiagnosticReportCompositionR5 1..1
* extension[DiagnosticReportCompositionR5].valueReference 1..1
* extension[DiagnosticReportCompositionR5].valueReference only Reference(CompositionLabReportEu)
* category = $sct#4241000179101 // Laboratory report (record artifact)
// * code = $loinc#11502-2 // LABORATORY REPORT.TOTAL
// * code ^short = "Laboratory report"
* code only CodeableConcept // 
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

Profile: ChLabCBC
Parent: ChLabDiagnosticReport
Id: diagnosticreport-cbc
Title: "CH Lab DiagnosticReport: Complete Blood Count"
Description: "This profile constrains the DiagnosticReport resource for the purpose of laboratory blood cell count reports in Switzerland."
* . ^short = "CH Lab DiagnosticReport: Laboratory Report CBC"
* . ^definition = "Laboratory Report CBC panel - Blood by Automated count"
* . ^comment = "add some comment if desirable"
* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
* result ..4
* result ^slicing.discriminator.type = #value
* result ^slicing.discriminator.path = "resolve().code"
* result ^slicing.ordered = true
* result ^slicing.rules = #closed
* result contains
  Observation-Hb 0..1 MS and
  Observation-Ht 0..1 MS and


  RedBloodCellCount 0..1 MS and
  WhiteBloodCell 0..1 MS
/*
  Hematocrit 0..1 MS and
  MeanCorpuscularVolume 0..1 MS and
  MeanCorpuscularHemoglobinConcentration 0..1 MS and
  ErythrocyteDistributionWidth 0..1 MS and
  PlateletCount 0..1 MS and
  PlateletDistributionWidth 0..1 MS and
  PlateletMeanVolume 0..1 MS

*/
* result[RedBloodCellCount] only Reference(ChLabErythrocyteCount)
* result[RedBloodCellCount] ^label = "Label"
* result[RedBloodCellCount] ^short = "Red Blood Cell Count"
* result[WhiteBloodCell] only Reference(ChLabLeucocyteCount)
* result[WhiteBloodCell] ^label = "Label"
* result[WhiteBloodCell] ^short = "White Blood Cell Count"

/*
* result[Hematocrit] only Reference($Hematocrit)
* result[Hematocrit] ^label = "Label"
* result[Hematocrit] ^short = "Hematocrit"
* result[MeanCorpuscularVolume] only Reference($MeanCorpuscularVolume)
* result[MeanCorpuscularVolume] ^label = "Label"
* result[MeanCorpuscularVolume] ^short = "Mean Corpuscular Volume"
* result[MeanCorpuscularHemoglobinConcentration] only Reference($MeanCorpuscularHemoglobinConcentration)
* result[MeanCorpuscularHemoglobinConcentration] ^label = "Label"
* result[MeanCorpuscularHemoglobinConcentration] ^short = " Mean Corpuscular Hemoglobin Concentration"
* result[ErythrocyteDistributionWidth] only Reference($ErythrocyteDistributionWidth)
* result[ErythrocyteDistributionWidth] ^label = "Label"
* result[ErythrocyteDistributionWidth] ^short = "Erythrocyte Distribution Width"
* result[PlateletCount] only Reference($PlateletCount)
* result[PlateletCount] ^label = "Label"
* result[PlateletCount] ^short = "Platelet Count"
* result[PlateletDistributionWidth] only Reference($PlateletDistributionWidth)
* result[PlateletDistributionWidth] ^label = "Label"
* result[PlateletDistributionWidth] ^short = "Platelet Distribution Width"
* result[PlateletMeanVolume] only Reference($PlateletMeanVolume)
* result[PlateletMeanVolume] ^label = "Label"
* result[PlateletMeanVolume] ^short = "Platelet Mean Volume"
*/