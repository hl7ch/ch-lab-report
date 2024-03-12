/*
Profile: ChLabCBCPanelObsSt
Parent: ChLabObservationResultsLaboratory
Id: ChLabCBC-panel-obs-st
Title: "CBC panel - Blood by Automated count, Observation Container"   // LOINC long common name
Description: """This profile constrains the ChLabObservationResultsLaboratory profile to represent results produced by automated CBC (count of Blood-Cells) for the  HL7 Swiss project."""

* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = $m49.htm#756 "Switzerland"
* ^purpose = "This profile constrains the ChLabObservationResultsLaboratory profile to represent results produced by automated CBC (count of Blood-Cells) for the  HL7 Swiss project."
* ^copyright = "Used by permission of HL7 Switzerland, all rights reserved Creative Commons License"

* hasMember ..0

* hasMember ^slicing.discriminator.type = #value
* hasMember ^slicing.discriminator.path = "resolve().hasMember"
* hasMember ^slicing.rules = #closed
* hasMember ^slicing.description = ""
* hasMember ^slicing.ordered = false
* hasMember contains
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

* hasMember[RedBloodCellCount] only Reference(ChLabErythrocyteCount)
* hasMember[RedBloodCellCount] ^label = "Label"
* hasMember[RedBloodCellCount] ^short = "Red Blood Cell Count"

* hasMember[WhiteBloodCell] only Reference(ChLabLeucocyteCount)
* hasMember[WhiteBloodCell] ^label = "Label"
* hasMember[WhiteBloodCell] ^short = "White Blood Cell Count"

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
*/