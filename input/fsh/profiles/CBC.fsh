// ╭───── DiagnosticReport CBC ──────────────────────────╮
// │  WBC, RBC, HGB, HT, MCV, MCH, MCHC, Platelets etc.  │
// ╰─────────────────────────────────────────────────────╯

Profile: ChLabCBC
Parent: ChLabDiagnosticReport
Id: diagnosticreport-cbc
Title: "CBC panel - Blood by Automated count"   // LOINC long common name
Description: "This panel is the traditional hemogram plus platelet count which must now be reported with hemograms according to current US re-imbursement rule The panel includes 2 different RDWs to accommodate the two different ways of reporting them. (Most automated instruments report as a percent ). The hemoglobin produced by the automatic counters does not use a counting method to generate the hemoglobin so we have used the methodless version of hemoglobin in this panel." 
* . ^short = "CBC panel Auto (Bld)"  // Display Name
* . ^definition = "Complete blood count panel"    // Component
* . ^comment = "CBC panel, Blood" // Consumer Name
* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
* result ..12
* result ^slicing.discriminator.type = #value
* result ^slicing.discriminator.path = "resolve().code"
* result ^slicing.ordered = true
* result ^slicing.rules = #closed
* result contains
  WhiteBloodCell 1..1 MS and
  RedBloodCellCount 1..1 MS and
  Hemoglobin 1..1 MS and
  Hematocrit 1..1 MS and
  MeanCorpuscularVolume 1..1 MS and
  MeanCorpuscularHemoglobin 1..1 MS and
  MeanCorpuscularHemoglobinConcentration 1..1 MS and
  ErythrocyteDistributionWidth 0..1 MS and
  ErythrocyteDistWidthRatio 0..1 MS and
  PlateletCount 1..1 MS and
  PlateletDistributionWidth 0..1 MS and
  PlateletMeanVolume 0..1 MS

* result[RedBloodCellCount] only Reference(ChLabErythrocyteCount)
* result[RedBloodCellCount] ^label = "Label"
* result[RedBloodCellCount] ^short = "Red Blood Cell Count"

* result[WhiteBloodCell] only Reference(ChLabLeucocyteCount)
* result[WhiteBloodCell] ^label = "Label"
* result[WhiteBloodCell] ^short = "White Blood Cell Count"

* result[Hematocrit] only Reference(ChLabHematocrit)
* result[Hematocrit] ^label = "Label"
* result[Hematocrit] ^short = "Hematocrit"

* result[Hemoglobin] only Reference(ChLabHemoglobin)
* result[Hemoglobin] ^label = "Label"
* result[Hemoglobin] ^short = "Hemoglobin"

* result[MeanCorpuscularVolume] only Reference(ChLabMeanCorpuscularVolume)
* result[MeanCorpuscularVolume] ^label = "Label"
* result[MeanCorpuscularVolume] ^short = "Mean Corpuscular Volume MCV"

* result[MeanCorpuscularHemoglobin] only Reference(ChLabMeanCorpuscularHemoglobin)
* result[MeanCorpuscularHemoglobin] ^label = "Label"
* result[MeanCorpuscularHemoglobin] ^short = "Mean Corpuscular Hemoglobin MCH"

* result[MeanCorpuscularHemoglobinConcentration] only Reference(ChLabMeanCorpuscularHemoglobinConcentration)
* result[MeanCorpuscularHemoglobinConcentration] ^label = "Label"
* result[MeanCorpuscularHemoglobinConcentration] ^short = "Mean Corpuscular Hemoglobin Concentration MCHC"

* result[ErythrocyteDistributionWidth] only Reference(ChLabErythrocyteDistributionWidth)
* result[ErythrocyteDistributionWidth] ^label = "Label"
* result[ErythrocyteDistributionWidth] ^short = "Erythrocyte Distribution Width"

* result[ErythrocyteDistWidthRatio] only Reference(ChLabErythrocyteDistWidthRatio)
* result[ErythrocyteDistWidthRatio] ^label = "Label"
* result[ErythrocyteDistWidthRatio] ^short = "Erythrocyte Distribution Width Ratio"

* result[PlateletCount] only Reference(ChLabPlateletCount)
* result[PlateletCount] ^label = "Label"
* result[PlateletCount] ^short = "Platelet Count"

* result[PlateletDistributionWidth] only Reference(ChLabPlateletDistributionWidth)
* result[PlateletDistributionWidth] ^label = "Label"
* result[PlateletDistributionWidth] ^short = "Platelet Distribution Width"

* result[PlateletMeanVolume] only Reference(ChLabPlateletMeanVolume)
* result[PlateletMeanVolume] ^label = "Label"
* result[PlateletMeanVolume] ^short = "Platelet Mean Volume"

// ╭───── result profiles of CBC observations ───────╮
// │  WBC, RBC, HGB, HT, MCV, MCH, MCHC, Platelets   │
// ╰─────────────────────────────────────────────────╯

Profile: ChLabLeucocyteCount
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-wbc
Title: "CH Lab Observation Results: LeucocyteCount"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory leucocyte count."
* . ^short = "CH Lab Observation Results: Laboratory Leucocyte Count"
* code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"

Profile: ChLabErythrocyteCount
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-rbc
Title: "CH Lab Observation Results: ErythrocyteCount"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory erythrocyte count."
* . ^short = "CH Lab Observation Results: Laboratory Erythrocyte Count"
* code = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"

Profile: ChLabHemoglobin
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-hb
Title: "CH Lab Observation Results: Hemoglobin"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory hemoglobin."
* . ^short = "CH Lab Observation Results: Laboratory Hemoglobin"
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"

Profile: ChLabHematocrit
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-ht
Title: "CH Lab Observation Results: Hemotocrit"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory hemotocrit in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory Hematocrit"
* code = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"

Profile: ChLabMeanCorpuscularVolume
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-mcv
Title: "CH Lab Observation Results: MeanCorpuscularVolume"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory MCV."
* . ^short = "CH Lab Observation Results: Laboratory MCV"
* code = $loinc#787-2 "MCV [Entitic volume] by Automated count"

Profile: ChLabMeanCorpuscularHemoglobin
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-mch
Title: "CH Lab Observation Results: Mean Corpuscular Hemoglobin"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory MCH in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory MCH"
* code = $loinc#785-6 "MCH [Entitic mass] by Automated count"

Profile: ChLabMeanCorpuscularHemoglobinConcentration
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-mchc
Title: "CH Lab Observation Results: Mean Corpuscular Hemoglobin Concentration"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory MCHC in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory MCHC"
* code = $loinc#786-4 "MCHC [Mass/volume] by Automated count"

Profile: ChLabErythrocyteDistributionWidth
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-ery-distribution-width
Title: "CH Lab Observation Results: Erythrocyte distribution width [Entitic volume] by Automated count"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory MCHC in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory Erythrocyte Distribution Width"
* code = $loinc#21000-5 "Erythrocyte distribution width [Entitic volume] by Automated count"

Profile: ChLabErythrocyteDistWidthRatio
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-ery-dist-width-ratio
Title: "CH Lab Observation Results: Erythrocyte distribution width [Ratio] by Automated count"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory Erythrocyte Distribution Width Ratio."
* . ^short = "CH Lab Observation Results: Laboratory Erythrocyte Distribution Width Ratio"
* code = $loinc#788-0 "Erythrocyte distribution width [Ratio] by Automated count"

Profile: ChLabPlateletCount
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-platelets
Title: "CH Lab Observation Results: Platelet Count"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory platelet count."
* . ^short = "CH Lab Observation Results: Laboratory Platelet Count"
* code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"

Profile: ChLabPlateletDistributionWidth
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-platelets-distribution-width
Title: "CH Lab Observation Results: Platelet Distribution With"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory platelet count."
* . ^short = "CH Lab Observation Results: Laboratory Platelet Count"
* code = $loinc#32207-3 "Platelet distribution width [Entitic volume] in Blood by Automated count"

Profile: ChLabPlateletMeanVolume
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-platelets-mean-volume
Title: "CH Lab Observation Results: Platelet Mean Volume"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory platelet mean volume."
* . ^short = "CH Lab Observation Results: Laboratory Platelet Count"
* code = $loinc#32623-1 "Platelet mean volume [Entitic volume] in Blood by Automated count"