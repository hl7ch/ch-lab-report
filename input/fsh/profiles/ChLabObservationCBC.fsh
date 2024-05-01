Profile:      ChLabObservation_CBC
Id:           ch-lab-observation-cpc
Parent:       ChLabObservationResultsLaboratory
Title:        "CH LAB Observation Results: automated CBC Profile"
Description:  "Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular filtration rate (eGFR) can be calculated."

* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = $m49.htm#756 "Switzerland"
* ^purpose = "This profile constrains the ChLabObservationResultsLaboratoryt profile to represent results produced by automated CBC (count of Blood-Cells) for the  HL7 Swiss project."
* ^copyright = "Used by permission of HL7 Switzerland, all rights reserved Creative Commons License"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"

* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
  * text = "CBC panel Auto (Bld)"
  * ^short = "LOINC Display Name"
* method = $sct#702659008 "Automated count technique (qualifier value)"

* component 1..12 MS    // 8..12
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Component observations"
* component contains
    WhiteBloodCellCount 1..1 MS and
    RedBloodCellCount 1..1 MS and
    Hemoglobin 1..1 MS and
    Hematocrit 1..1 MS and
    MeanCorpuscularVolume 1..1 MS and
    MeanCorpuscularHemoglobin 1..1 MS and
    MeanCorpuscularHemoglobinConcentration 1..1 MS and
    ErythrocyteDistWidth 0..1 MS and
    ErythrocyteDistWidthRatio 0..1 MS and
    PlateletCount 1..1 MS and
    PlateletDistWidth 0..1 MS and
    PlateletMeanVolume 0..1 MS
* component[WhiteBloodCellCount] ^short = "Leucocyte count"
* component[WhiteBloodCellCount].code 1..1 MS
* component[WhiteBloodCellCount].code ^short = "Leucocyte count code"
* component[WhiteBloodCellCount].code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
* component[WhiteBloodCellCount].code.text = "WBC Auto (Bld) [#/Vol]"
* component[WhiteBloodCellCount].code.text ^short = "LOINC Display Name"

* component[WhiteBloodCellCount].valueQuantity only QuantityEuLab
* component[WhiteBloodCellCount].valueQuantity MS
* component[WhiteBloodCellCount].valueQuantity ^short = "automated CBC Profile component value"
* component[WhiteBloodCellCount].valueQuantity.value 1..1 MS
* component[WhiteBloodCellCount].valueQuantity.value only decimal
* component[WhiteBloodCellCount].valueQuantity.unit 1..1 MS
* component[WhiteBloodCellCount].valueQuantity.unit only string
* component[WhiteBloodCellCount].valueQuantity.system 1..1 MS
* component[WhiteBloodCellCount].valueQuantity.system only uri
* component[WhiteBloodCellCount].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[WhiteBloodCellCount].valueQuantity.code 1..1 MS
* component[WhiteBloodCellCount].valueQuantity.code only code
* component[WhiteBloodCellCount].valueQuantity.code = #10*3/uL (exactly)
// +++++++
* component[RedBloodCellCount] ^short = "Erythrocyte count"
* component[RedBloodCellCount].code 1..1 MS
* component[RedBloodCellCount].code ^short = "Leucocyte count code"
* component[RedBloodCellCount].code = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* component[RedBloodCellCount].code.text = "RBC Auto (Bld) [#/Vol]"
* component[RedBloodCellCount].code.text ^short = "LOINC Display Name"

* component[RedBloodCellCount].valueQuantity only QuantityEuLab
* component[RedBloodCellCount].valueQuantity MS
* component[RedBloodCellCount].valueQuantity ^short = "automated CBC Profile component value"
* component[RedBloodCellCount].valueQuantity.value 1..1 MS
* component[RedBloodCellCount].valueQuantity.value only decimal
* component[RedBloodCellCount].valueQuantity.unit 1..1 MS
* component[RedBloodCellCount].valueQuantity.unit only string
* component[RedBloodCellCount].valueQuantity.system 1..1 MS
* component[RedBloodCellCount].valueQuantity.system only uri
* component[RedBloodCellCount].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[RedBloodCellCount].valueQuantity.code 1..1 MS
* component[RedBloodCellCount].valueQuantity.code only code
* component[RedBloodCellCount].valueQuantity.code = #10*3/uL (exactly)
// ++++++++++++
* component[RedBloodCellCount] ^short = "Erythrocyte count"
* component[Hemoglobin] ^short = "Hemoglobin"
* component[Hematocrit] ^short = "Hematocrit"
* component[MeanCorpuscularVolume] ^short = "Mean Corpuscular Volume"
* component[MeanCorpuscularHemoglobin] ^short = "Mean Corpuscular Hemoglobin"
* component[MeanCorpuscularHemoglobinConcentration] ^short = "Mean Corpuscular Hemoglobin Concentration"
* component[ErythrocyteDistWidth] ^short = "Erythrocyte Distribution Width"
* component[ErythrocyteDistWidthRatio] ^short = "Erythrocyte Distribution Width Ratio"
* component[PlateletCount] ^short = "Platelet Count"
* component[PlateletDistWidth] ^short = "Platelet Distribution Width"
* component[PlateletMeanVolume] ^short = "Platelet Mean Volume"
