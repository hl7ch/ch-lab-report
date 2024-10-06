// ╭───────  profiles for CBC observations ──────╮
// │     CBC Panel and CBC Single Tests          │
// │         observation profiles                │
// ╰─────────────────────────────────────────────╯

Profile: ChLabObservationCBCPanel
Parent: ChLabObservationPanel
Id: ch-lab-observation-cbc-panel
Title: "CH LAB Observation Results CBC Panel - Blood by Automated count, Results in nested Profiles"   // LOINC long common name
Description: """This panel is the traditional hemogram plus platelet count which must now be reported with with hemograms according to current US re-imbursement rule The panel includes 2 different RDWs to accommodate the two different ways of reporting them. (Most automated instruments report as a percent ). The hemoglobin produced by the automatic counters does not use a counting method to generate the hemoglobin so we have used the fotometry version of hemoglobin in this panel."""

// * ^publisher = "HL7 Switzerland"
// * ^contact.name = "HL7 Switzerland"
// * ^contact.telecom.system = #url
// * ^contact.telecom.value = "http://hl7.ch"
// * ^jurisdiction = $m49.htm#756 "Switzerland"
// * ^purpose = "This profile constrains the ChLabObservationPanel profile to represent results produced by automated CBC (count of Blood-Cells)for the  HL7 Swiss project. Their 'hasMember' elements contain References to CBC Single Test Observations. The CBC Panel represents the Haematogramm II from the Analysenliste, Pos.-Nr 1371.00"
// * ^copyright = "Used by permission of HL7 Switzerland, all rights reserved Creative Commons License"

* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
* code.text = "CBC panel Auto (Bld)" // LOINC Display Name
// * hasMember 8..12
// * hasMember ^slicing.discriminator.type = #profile
// * hasMember ^slicing.discriminator.path = "resolve()"
// * hasMember ^slicing.rules = #open
// * hasMember ^slicing.description = ""
// * hasMember ^slicing.ordered = false
* hasMember contains
  WhiteBloodCellCount 1..1 MS and
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

* hasMember[WhiteBloodCellCount] only Reference(ChLabLeucocyteCount)
* hasMember[WhiteBloodCellCount] ^label = "Label"
* hasMember[WhiteBloodCellCount] ^short = "White Blood Cell Count"

* hasMember[RedBloodCellCount] only Reference(ChLabErythrocyteCount)
* hasMember[RedBloodCellCount] ^label = "Label"
* hasMember[RedBloodCellCount] ^short = "Red Blood Cell Count"

* hasMember[Hematocrit] only Reference(ChLabHematocrit)
* hasMember[Hematocrit] ^label = "Label"
* hasMember[Hematocrit] ^short = "Hematocrit"

* hasMember[Hemoglobin] only Reference(ChLabHemoglobin)
* hasMember[Hemoglobin] ^label = "Label"
* hasMember[Hemoglobin] ^short = "Hemoglobin"

* hasMember[MeanCorpuscularVolume] only Reference(ChLabMeanCorpuscularVolume)
* hasMember[MeanCorpuscularVolume] ^label = "Label"
* hasMember[MeanCorpuscularVolume] ^short = "Mean Corpuscular Volume MCV"

* hasMember[MeanCorpuscularHemoglobin] only Reference(ChLabMeanCorpuscularHemoglobin)
* hasMember[MeanCorpuscularHemoglobin] ^label = "Label"
* hasMember[MeanCorpuscularHemoglobin] ^short = "Mean Corpuscular Hemoglobin MCH"

* hasMember[MeanCorpuscularHemoglobinConcentration] only Reference(ChLabMeanCorpuscularHemoglobinConcentration)
* hasMember[MeanCorpuscularHemoglobinConcentration] ^label = "Label"
* hasMember[MeanCorpuscularHemoglobinConcentration] ^short = "Mean Corpuscular Hemoglobin Concentration MCHC"

* hasMember[ErythrocyteDistributionWidth] only Reference(ChLabErythrocyteDistributionWidth)
* hasMember[ErythrocyteDistributionWidth] ^label = "Label"
* hasMember[ErythrocyteDistributionWidth] ^short = "Erythrocyte Distribution Width"

* hasMember[ErythrocyteDistWidthRatio] only Reference(ChLabErythrocyteDistWidthRatio)
* hasMember[ErythrocyteDistWidthRatio] ^label = "Label"
* hasMember[ErythrocyteDistWidthRatio] ^short = "Erythrocyte Distribution Width Ratio"

* hasMember[PlateletCount] only Reference(ChLabPlateletCount)
* hasMember[PlateletCount] ^label = "Label"
* hasMember[PlateletCount] ^short = "Platelet Count"

* hasMember[PlateletDistributionWidth] only Reference(ChLabPlateletDistributionWidth)
* hasMember[PlateletDistributionWidth] ^label = "Label"
* hasMember[PlateletDistributionWidth] ^short = "Platelet Distribution Width"

* hasMember[PlateletMeanVolume] only Reference(ChLabPlateletMeanVolume)
* hasMember[PlateletMeanVolume] ^label = "Label"
* hasMember[PlateletMeanVolume] ^short = "Platelet Mean Volume"

/*
// ╭───────── profiles for CBC observations ─────────╮
// │  Profile for CBC Single Tests                   │
// ╰─────────────────────────────────────────────────╯

Profile: ChLabCBCSingleTest
Parent: ChLabObservationSingleTest
Id: ChLabCBC-single-test
Title: "CH LAB Observation Results: CBC Single Test - Blood by Automated count" 
Description: """This profile constrains the ChLabObservationSingleTest profile to represent a single result produced by automated CBC (count of Blood-Cells) for the  HL7 Swiss project."""

* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = $m49.htm#756 "Switzerland"
* ^purpose = "This profile constrains the ChLabObservationSingleTest profile to represent results produced by automated CBC (count of Blood-Cells) for the  HL7 Swiss project."
* ^copyright = "Used by permission of HL7 Switzerland, all rights reserved Creative Commons License"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * hasMember ..0
*/

// ╭───── result profiles of CBC observations ───────╮
// │  WBC, RBC, HGB, HT, MCV, MCH, MCHC, Platelets   │
// ╰─────────────────────────────────────────────────╯

Profile: ChLabLeucocyteCount
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-results-wbc
Title: "CH LAB Observation Results: LeucocyteCount"
Description: "This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory leucocyte count."
* . ^short = "CH LAB Observation Results: Laboratory Leucocyte Count"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
* code.text = "WBC Auto (Bld) [#/Vol]" // LOINC Display Name
  * ^short = "LOINC Display Name"
* method = $sct#702659008 "Automated count technique (qualifier value)"

Profile: ChLabErythrocyteCount
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-results-rbc
Title: "CH LAB Observation Results: ErythrocyteCount"
Description: "This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory erythrocyte count."
* . ^short = "CH LAB Observation Results: Laboratory Erythrocyte Count"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* code.text = "RBC Auto (Bld) [#/Vol]"
  * ^short = "LOINC Display Name"
* method = $sct#702659008 "Automated count technique (qualifier value)"

Profile: ChLabHemoglobin
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-results-hb
Title: "CH LAB Observation Results: Hemoglobin"
Description: "This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory hemoglobin."
* . ^short = "CH LAB Observation Results: Laboratory Hemoglobin"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Hemoglobin (Bld) [Mass/Vol]"
  * ^short = "LOINC Display Name"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(BloodCBC)

Profile: ChLabHematocrit
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-results-ht
Title: "CH LAB Observation Results: Hemotocrit"
Description: "This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory hemotocrit in Switzerland."
* . ^short = "CH LAB Observation Results: Laboratory Hematocrit"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"
* code.text = "Hematocrit Auto (Bld) [Volume fraction]"
  * ^short = "LOINC Display Name"
* method = $sct#702659008 "Automated count technique (qualifier value)"
* specimen = Reference(BloodCBC)

Profile: ChLabMeanCorpuscularVolume
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-results-mcv
Title: "CH LAB Observation Results: MeanCorpuscularVolume"
Description: "This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory MCV."
* . ^short = "CH LAB Observation Results: Laboratory MCV"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#787-2 "MCV [Entitic volume] by Automated count"
* code.text = "MCV Auto (RBC) [Entitic vol]" 
  * ^short = "LOINC Display Name"
* method = $sct#702659008 "Automated count technique (qualifier value)"

Profile: ChLabMeanCorpuscularHemoglobin
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-results-mch
Title: "CH LAB Observation Results: Mean Corpuscular Hemoglobin"
Description: "This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory MCH in Switzerland."
* . ^short = "CH LAB Observation Results: Laboratory MCH"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#785-6 "MCH [Entitic mass] by Automated count"
* code.text = "MCH Auto (RBC) [Entitic mass]"
  * ^short = "LOINC Display Name"
* method = $sct#702659008 "Automated count technique (qualifier value)"

Profile: ChLabMeanCorpuscularHemoglobinConcentration
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-results-mchc
Title: "CH LAB Observation Results: Mean Corpuscular Hemoglobin Concentration"
Description: "This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory MCHC in Switzerland."
* . ^short = "CH LAB Observation Results: Laboratory MCHC"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#786-4 "MCHC [Mass/volume] by Automated count"
* code.text = "MCHC Auto (RBC) [Mass/Vol]"
  * ^short = "LOINC Display Name"
* method = $sct#702659008 "Automated count technique (qualifier value)"

Profile: ChLabErythrocyteDistributionWidth
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-results-ery-distribution-width
Title: "CH LAB Observation Results: Erythrocyte distribution width [Entitic volume] by Automated count"
Description: "This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory Erythrocyte Distribuition Width in Switzerland."
* . ^short = "CH LAB Observation Results: Laboratory Erythrocyte Distribution Width"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#21000-5 "Erythrocyte distribution width [Entitic volume] by Automated count"
* code.text = "Erythrocyte distribution width Auto (RBC) [Entitic vol]"
  * ^short = "LOINC Display Name"
* method = $sct#702659008 "Automated count technique (qualifier value)"

Profile: ChLabErythrocyteDistWidthRatio
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-results-ery-dist-width-ratio
Title: "CH LAB Observation Results: Erythrocyte distribution width [Ratio] by Automated count"
Description: "This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory Erythrocyte Distribution Width Ratio."
* . ^short = "CH LAB Observation Results: Laboratory Erythrocyte Distribution Width Ratio"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#788-0 "Erythrocyte distribution width [Ratio] by Automated count"
* code.text = "Erythrocyte distribution width Auto (RBC) [Ratio]"
  * ^short = "LOINC Display Name"
* method = $sct#702659008 "Automated count technique (qualifier value)"

Profile: ChLabPlateletCount
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-results-platelets
Title: "CH LAB Observation Results: Platelet Count"
Description: "This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory platelet count."
* . ^short = "CH LAB Observation Results: Laboratory Platelet Count"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
* code.text = "Platelets Auto (Bld) [#/Vol]" 
  * ^short = "LOINC Display Name"
* method = $sct#702659008 "Automated count technique (qualifier value)"

Profile: ChLabPlateletDistributionWidth
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-results-platelets-distribution-width
Title: "CH LAB Observation Results: Platelet Distribution With"
Description: "This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory platelet count."
* . ^short = "CH LAB Observation Results: Laboratory Platelet Count"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#32207-3 "Platelet distribution width [Entitic volume] in Blood by Automated count"

Profile: ChLabPlateletMeanVolume
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-results-platelets-mean-volume
Title: "CH LAB Observation Results: Platelet Mean Volume"
Description: "This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory platelet mean volume."
* . ^short = "CH LAB Observation Results: Laboratory Platelet Count"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#32623-1 "Platelet mean volume [Entitic volume] in Blood by Automated count"

Instance: BloodCBC
InstanceOf: ChLabSpecimen
Title: "Blood CBC Sample"
Description: "Example for Specimen for automated CBC Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood specimen"
