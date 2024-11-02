Profile:      ChLabObservation_CBC
Parent:       ChLabObservationSingleTest
Id:           ch-lab-observation-cbc
Title:        "CH LAB Observation Results CBC Panel - Blood by Automated count, Results in sliced component"
Description:  "Profile for observation laboratory result of automated Count of Blood Cells. We choose as Unit 10⁹/L or 10¹²/L for Cell Count."
* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = $m49.htm#756 "Switzerland"
* ^purpose = "This profile constrains the ChLabObservationResultsLaboratoryt profile to represent results produced by automated CBC (count of Blood-Cells) for the  HL7 Swiss project."
* ^copyright = "Used by permission of HL7 Switzerland, all rights reserved Creative Commons License"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"

* code = $loinc#58410-2 // "CBC panel - Blood by Automated count"
  // * text = "CBC panel Auto (Bld)"
  * ^short = "LOINC Display Name"
* method = $sct#702659008 "Automated count technique (qualifier value)"

* component 8..12 MS    // 8..12
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
//     ErythrocyteDistWidthRatio 0..1 MS and
    PlateletCount 1..1 MS and
    PlateletDistWidth 0..1 MS and
    PlateletMeanVolume 0..1 MS
* component[WhiteBloodCellCount] ^short = "Leucocyte count"
* component[WhiteBloodCellCount].code 1..1 MS
* component[WhiteBloodCellCount].code ^short = "Leucocyte count code"
* component[WhiteBloodCellCount].code = $loinc#6690-2 // "Leukocytes [#/volume] in Blood by Automated count"
// * component[WhiteBloodCellCount].code.text = "WBC Auto (Bld) [#/Vol]"
// * component[WhiteBloodCellCount].code.text ^short = "LOINC Display Name"
// * component[WhiteBloodCellCount].valueQuantity only QuantityEuLab
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
* component[WhiteBloodCellCount].valueQuantity.code = #10*9/L (exactly)
// +++++++
* component[RedBloodCellCount] ^short = "Erythrocyte count"
* component[RedBloodCellCount].code 1..1 MS
* component[RedBloodCellCount].code ^short = "Leucocyte count code"
* component[RedBloodCellCount].code = $loinc#789-8 // "Erythrocytes [#/volume] in Blood by Automated count"
// * component[RedBloodCellCount].code.text = "RBC Auto (Bld) [#/Vol]"
// * component[RedBloodCellCount].code.text ^short = "LOINC Display Name"
// * component[RedBloodCellCount].valueQuantity only QuantityEuLab
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
* component[RedBloodCellCount].valueQuantity.code = #10*12/L (exactly)

// +++++++
* component[Hemoglobin] ^short = "Hemoglobin"
* component[Hemoglobin].code 1..1 MS
* component[Hemoglobin].code ^short = "Hemoglobin code"
* component[Hemoglobin].code = $loinc#718-7 // "Hemoglobin [Mass/volume] in Blood"
// * component[Hemoglobin].code.text = "Hemoglobin (Bld) [Mass/Vol]"
// * component[Hemoglobin].code.text ^short = "LOINC Display Name"
// * component[Hemoglobin].valueQuantity only QuantityEuLab
* component[Hemoglobin].valueQuantity MS
* component[Hemoglobin].valueQuantity ^short = "automated CBC Profile component value"
* component[Hemoglobin].valueQuantity.value 1..1 MS
* component[Hemoglobin].valueQuantity.value only decimal
* component[Hemoglobin].valueQuantity.unit 1..1 MS
* component[Hemoglobin].valueQuantity.unit only string
* component[Hemoglobin].valueQuantity.system 1..1 MS
* component[Hemoglobin].valueQuantity.system only uri
* component[Hemoglobin].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[Hemoglobin].valueQuantity.code 1..1 MS
* component[Hemoglobin].valueQuantity.code only code
* component[Hemoglobin].valueQuantity.code = #g/dL (exactly)

// +++++++
* component[Hematocrit] ^short = "Hematocrit"
* component[Hematocrit].code 1..1 MS
* component[Hematocrit].code ^short = "Hematocrit code"
* component[Hematocrit].code = $loinc#4544-3 // "Hematocrit [Volume Fraction] of Blood by Automated count"
// * component[Hematocrit].code.text = "Hematocrit Auto (Bld) [Volume fraction]"
// * component[Hematocrit].code.text ^short = "LOINC Display Name"
// * component[Hematocrit].valueQuantity only QuantityEuLab
* component[Hematocrit].valueQuantity MS
* component[Hematocrit].valueQuantity ^short = "automated CBC Profile component value"
* component[Hematocrit].valueQuantity.value 1..1 MS
* component[Hematocrit].valueQuantity.value only decimal
* component[Hematocrit].valueQuantity.unit 1..1 MS
* component[Hematocrit].valueQuantity.unit only string
* component[Hematocrit].valueQuantity.system 1..1 MS
* component[Hematocrit].valueQuantity.system only uri
* component[Hematocrit].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[Hematocrit].valueQuantity.code 1..1 MS
* component[Hematocrit].valueQuantity.code only code
* component[Hematocrit].valueQuantity.code = #% (exactly)

// +++++++
* component[MeanCorpuscularVolume] ^short = "Mean Corpuscular Volume"
* component[MeanCorpuscularVolume].code 1..1 MS
* component[MeanCorpuscularVolume].code ^short = "MeanCorpuscularVolume code"
* component[MeanCorpuscularVolume].code = $loinc#787-2 // "MCV [Entitic volume] by Automated count"
// * component[MeanCorpuscularVolume].code.text = "MCV Auto (RBC) [Entitic vol]"
// * component[MeanCorpuscularVolume].code.text ^short = "LOINC Display Name"
// * component[MeanCorpuscularVolume].valueQuantity only QuantityEuLab
* component[MeanCorpuscularVolume].valueQuantity MS
* component[MeanCorpuscularVolume].valueQuantity ^short = "automated CBC Profile component value"
* component[MeanCorpuscularVolume].valueQuantity.value 1..1 MS
* component[MeanCorpuscularVolume].valueQuantity.value only decimal
* component[MeanCorpuscularVolume].valueQuantity.unit 1..1 MS
* component[MeanCorpuscularVolume].valueQuantity.unit only string
* component[MeanCorpuscularVolume].valueQuantity.system 1..1 MS
* component[MeanCorpuscularVolume].valueQuantity.system only uri
* component[MeanCorpuscularVolume].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[MeanCorpuscularVolume].valueQuantity.code 1..1 MS
* component[MeanCorpuscularVolume].valueQuantity.code only code
* component[MeanCorpuscularVolume].valueQuantity.code = #fL (exactly)

// +++++++
* component[MeanCorpuscularHemoglobin] ^short = "Mean Corpuscular Hemoglobin"
* component[MeanCorpuscularHemoglobin].code 1..1 MS
* component[MeanCorpuscularHemoglobin].code ^short = "MeanCorpuscularHemoglobin code"
* component[MeanCorpuscularHemoglobin].code = $loinc#785-6 // "MCH [Entitic mass] by Automated count"
// * component[MeanCorpuscularHemoglobin].code.text = "MCH Auto (RBC) [Entitic mass]"
// * component[MeanCorpuscularHemoglobin].code.text ^short = "LOINC Display Name"
// * component[MeanCorpuscularHemoglobin].valueQuantity only QuantityEuLab
* component[MeanCorpuscularHemoglobin].valueQuantity MS
* component[MeanCorpuscularHemoglobin].valueQuantity ^short = "automated CBC Profile component value"
* component[MeanCorpuscularHemoglobin].valueQuantity.value 1..1 MS
* component[MeanCorpuscularHemoglobin].valueQuantity.value only decimal
* component[MeanCorpuscularHemoglobin].valueQuantity.unit 1..1 MS
* component[MeanCorpuscularHemoglobin].valueQuantity.unit only string
* component[MeanCorpuscularHemoglobin].valueQuantity.system 1..1 MS
* component[MeanCorpuscularHemoglobin].valueQuantity.system only uri
* component[MeanCorpuscularHemoglobin].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[MeanCorpuscularHemoglobin].valueQuantity.code 1..1 MS
* component[MeanCorpuscularHemoglobin].valueQuantity.code only code
* component[MeanCorpuscularHemoglobin].valueQuantity.code = #pg (exactly)

// +++++++
* component[MeanCorpuscularHemoglobinConcentration] ^short = "Mean Corpuscular Hemoglobin Concentration"
* component[MeanCorpuscularHemoglobinConcentration].code 1..1 MS
* component[MeanCorpuscularHemoglobinConcentration].code ^short = "MeanCorpuscularHemoglobinConcentration code"
* component[MeanCorpuscularHemoglobinConcentration].code = $loinc#786-4 // "MCHC [Mass/volume] by Automated count"
// * component[MeanCorpuscularHemoglobinConcentration].code.text = "MCHC Auto (RBC) [Mass/Vol]"
// * component[MeanCorpuscularHemoglobinConcentration].code.text ^short = "LOINC Display Name"
// * component[MeanCorpuscularHemoglobinConcentration].valueQuantity only QuantityEuLab
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity MS
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity ^short = "automated CBC Profile component value"
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity.value 1..1 MS
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity.value only decimal
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity.unit 1..1 MS
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity.unit only string
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity.system 1..1 MS
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity.system only uri
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity.code 1..1 MS
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity.code only code
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity.code = #g/dL (exactly)

// +++++++
* component[ErythrocyteDistWidth] ^short = "Erythrocyte distribution width"
* component[ErythrocyteDistWidth].code 1..1 MS
* component[ErythrocyteDistWidth].code ^short = "ErythrocyteDistWidth code"
// * component[ErythrocyteDistWidth].code = $loinc#21000-5 "Erythrocyte distribution width [Entitic volume] by Automated count"
* component[ErythrocyteDistWidth].code from ObservationCodeEntvolRatio (required)

// * component[ErythrocyteDistWidth].code.text = "Erythrocyte distribution width Auto (RBC) [Entitic vol]"
// * component[ErythrocyteDistWidth].code.text ^short = "LOINC Display Name"
// * component[ErythrocyteDistWidth].valueQuantity only QuantityEuLab
* component[ErythrocyteDistWidth].valueQuantity MS
* component[ErythrocyteDistWidth].valueQuantity ^short = "automated CBC Profile component value"
* component[ErythrocyteDistWidth].valueQuantity.value 1..1 MS
* component[ErythrocyteDistWidth].valueQuantity.value only decimal
* component[ErythrocyteDistWidth].valueQuantity.unit 1..1 MS
* component[ErythrocyteDistWidth].valueQuantity.unit only string
* component[ErythrocyteDistWidth].valueQuantity.system 1..1 MS
* component[ErythrocyteDistWidth].valueQuantity.system only uri
* component[ErythrocyteDistWidth].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[ErythrocyteDistWidth].valueQuantity.code 1..1 MS
* component[ErythrocyteDistWidth].valueQuantity.code only code
* component[ErythrocyteDistWidth].valueQuantity.code = #fL (exactly)

// +++++++
// * component[ErythrocyteDistWidthRatio] ^short = "Erythrocyte distribution width [Ratio]"
// * component[ErythrocyteDistWidthRatio].code 1..1 MS
// * component[ErythrocyteDistWidthRatio].code ^short = "ErythrocyteDistWidthRatio code"
// * component[ErythrocyteDistWidthRatio].code = $loinc#788-0 "Erythrocyte distribution width [Ratio] by Automated count"
// // * component[ErythrocyteDistWidthRatio].code.text = "Erythrocyte distribution width Auto (RBC) [Ratio]"
// // * component[ErythrocyteDistWidthRatio].code.text ^short = "LOINC Display Name"
// // * component[ErythrocyteDistWidthRatio].valueQuantity only QuantityEuLab
// * component[ErythrocyteDistWidthRatio].valueQuantity MS
// * component[ErythrocyteDistWidthRatio].valueQuantity ^short = "automated CBC Profile component value"
// * component[ErythrocyteDistWidthRatio].valueQuantity.value 1..1 MS
// * component[ErythrocyteDistWidthRatio].valueQuantity.value only decimal
// * component[ErythrocyteDistWidthRatio].valueQuantity.unit 1..1 MS
// * component[ErythrocyteDistWidthRatio].valueQuantity.unit only string
// * component[ErythrocyteDistWidthRatio].valueQuantity.system 1..1 MS
// * component[ErythrocyteDistWidthRatio].valueQuantity.system only uri
// * component[ErythrocyteDistWidthRatio].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
// * component[ErythrocyteDistWidthRatio].valueQuantity.code 1..1 MS
// * component[ErythrocyteDistWidthRatio].valueQuantity.code only code
// * component[ErythrocyteDistWidthRatio].valueQuantity.code = #% (exactly)

// +++++++
* component[PlateletCount] ^short = "Platelet Count"
* component[PlateletCount].code 1..1 MS
* component[PlateletCount].code ^short = "PlateletCount code"
* component[PlateletCount].code = $loinc#777-3 // "Platelets [#/volume] in Blood by Automated count"
// * component[PlateletCount].code.text = "Platelets Auto (Bld) [#/Vol]"
// * component[PlateletCount].code.text ^short = "LOINC Display Name"
// * component[PlateletCount].valueQuantity only QuantityEuLab
* component[PlateletCount].valueQuantity MS
* component[PlateletCount].valueQuantity ^short = "automated CBC Profile component value"
* component[PlateletCount].valueQuantity.value 1..1 MS
* component[PlateletCount].valueQuantity.value only decimal
* component[PlateletCount].valueQuantity.unit 1..1 MS
* component[PlateletCount].valueQuantity.unit only string
* component[PlateletCount].valueQuantity.system 1..1 MS
* component[PlateletCount].valueQuantity.system only uri
* component[PlateletCount].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[PlateletCount].valueQuantity.code 1..1 MS
* component[PlateletCount].valueQuantity.code only code
* component[PlateletCount].valueQuantity.code = #10^9/L (exactly)

// +++++++
* component[PlateletDistWidth] ^short = "Platelet Distribution Width"
* component[PlateletDistWidth].code 1..1 MS
* component[PlateletDistWidth].code ^short = // "PlateletDistWidth code"
* component[PlateletDistWidth].code = $loinc#32207-3 "Platelet distribution width [Entitic volume] in Blood by Automated count"
// * component[PlateletDistWidth].code.text = "Platelet distribution width Auto (Bld) [Entitic vol]"
// * component[PlateletDistWidth].code.text ^short = "LOINC Display Name"
// * component[PlateletDistWidth].valueQuantity only QuantityEuLab
* component[PlateletDistWidth].valueQuantity MS
* component[PlateletDistWidth].valueQuantity ^short = "automated CBC Profile component value"
* component[PlateletDistWidth].valueQuantity.value 1..1 MS
* component[PlateletDistWidth].valueQuantity.value only decimal
* component[PlateletDistWidth].valueQuantity.unit 1..1 MS
* component[PlateletDistWidth].valueQuantity.unit only string
* component[PlateletDistWidth].valueQuantity.system 1..1 MS
* component[PlateletDistWidth].valueQuantity.system only uri
* component[PlateletDistWidth].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[PlateletDistWidth].valueQuantity.code 1..1 MS
* component[PlateletDistWidth].valueQuantity.code only code
* component[PlateletDistWidth].valueQuantity.code = #fL (exactly)

// +++++++
* component[PlateletMeanVolume] ^short = "Platelet Mean Volume"
* component[PlateletMeanVolume].code 1..1 MS
* component[PlateletMeanVolume].code ^short = "PlateletMeanVolume code"
* component[PlateletMeanVolume].code = $loinc#32623-1 // "Platelet mean volume [Entitic volume] in Blood by Automated count"
// * component[PlateletMeanVolume].code.text = "Platelet mean volume Auto (Bld) [Entitic vol]"
// * component[PlateletMeanVolume].code.text ^short = "LOINC Display Name"
// * component[PlateletMeanVolume].valueQuantity only QuantityEuLab
* component[PlateletMeanVolume].valueQuantity MS
* component[PlateletMeanVolume].valueQuantity ^short = "automated CBC Profile component value"
* component[PlateletMeanVolume].valueQuantity.value 1..1 MS
* component[PlateletMeanVolume].valueQuantity.value only decimal
* component[PlateletMeanVolume].valueQuantity.unit 1..1 MS
* component[PlateletMeanVolume].valueQuantity.unit only string
* component[PlateletMeanVolume].valueQuantity.system 1..1 MS
* component[PlateletMeanVolume].valueQuantity.system only uri
* component[PlateletMeanVolume].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[PlateletMeanVolume].valueQuantity.code 1..1 MS
* component[PlateletMeanVolume].valueQuantity.code only code
* component[PlateletMeanVolume].valueQuantity.code = #fL (exactly)
// ++++++++++++

Instance: Result-CBC
InstanceOf: ChLabObservation_CBC
Usage: #example
Title: "Result CBC Panel - Blood by Automated count, Results in sliced component"
Description: "laboratory result of automated Count of Blood Cells, Sysmex XN RunScreen"
* status = #final
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "BeatBunsen"
* component[WhiteBloodCellCount].valueQuantity.value = 2.90
* component[WhiteBloodCellCount].valueQuantity.unit = "10*9/L"
* component[RedBloodCellCount].valueQuantity.value = 4.35
* component[RedBloodCellCount].valueQuantity.unit = "10*12/L"
* component[Hemoglobin].valueQuantity.value = 107
* component[Hemoglobin].valueQuantity.unit = "g/L"
* component[Hematocrit].valueQuantity.value = 33
* component[Hematocrit].valueQuantity.unit = "%"
* component[MeanCorpuscularVolume].valueQuantity.value = 75.9
* component[MeanCorpuscularVolume].valueQuantity.unit = "fL"
* component[MeanCorpuscularHemoglobin].valueQuantity.value = 24.6
* component[MeanCorpuscularHemoglobin].valueQuantity.unit = "pg"
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity.value = 324
* component[MeanCorpuscularHemoglobinConcentration].valueQuantity.unit = "g/L"
* component[PlateletCount].valueQuantity.value = 113
* component[PlateletCount].valueQuantity.unit = "10*9/L"
