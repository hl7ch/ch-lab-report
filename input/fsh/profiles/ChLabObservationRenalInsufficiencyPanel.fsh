// ╭──  profiles for Renal insufficiency ──╮
// │     RI Panel and RI Single Tests      │
// │         observation profiles          │
// ╰───────────────────────────────────────╯

Profile: ChLabObservationRenalInsufficiencyPanel
Parent: ChLabObservationPanel
Id: ch-lab-observation-renal-insufficiency-panel
Title: "CH LAB Observation Results: Renal Insufficiency Panel"   // SNOMED concept
Description: """This panel collects the lab results in relation to renal insufiency."""

* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = $m49.htm#756 "Switzerland"
* ^purpose = "This profile constrains the ChLabObservationPanel profile to represent results in relation to renal insufficiency for the  HL7 Swiss project. Their hasMember element contain References to estimated GFR and Albumin Urine Test Observations."
* ^copyright = "Used by permission of HL7 Switzerland, all rights reserved Creative Commons License"

* code = $sct#723188008 "Renal insufficiency (disorder)"
* code.text = "Collection of Laboratory results in relation to renal insufficiency" // 
* hasMember ..12
* hasMember ^slicing.discriminator.type = #value
* hasMember ^slicing.discriminator.path = "resolve().hasMember"
* hasMember ^slicing.rules = #closed
* hasMember ^slicing.description = ""
* hasMember ^slicing.ordered = true
* hasMember contains
  CKD-EPI 1..1 MS and // CKD-EPI for eGFR
  AlbuminUrine 1..1 MS 

* hasMember[CKD-EPI] only Reference(ChLabObservation_eGFR_CKD_EPI_male or ChLabObservation_eGFR_CKD_EPI_female)
* hasMember[CKD-EPI] ^label = "Label"
* hasMember[CKD-EPI] ^short = "CKD-EPI"


* hasMember[AlbuminUrine] only Reference(ChLabObservationAlbuminUrine)
* hasMember[AlbuminUrine] ^label = "Label"
* hasMember[AlbuminUrine] ^short = "Albumin Urine"

// ╭─ profiles for renal insufficiency observations ──╮
// │  Profiles for renal insufficiency Single Tests   │
// ╰──────────────────────────────────────────────────╯

Profile: ChLabObservationRenalInsufficiencySingleTest
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-renal-insufficiency-single-test
Title: "CH LAB Observation Renal insufficiency Single Test" 
Description: """This profile constrains the ChLabObservationSingleTest profile to represent a single result to estimate Renal insufficiency for the  HL7 Swiss project."""

* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = $m49.htm#756 "Switzerland"
* ^purpose = "This profile constrains the ChLabObservationSingleTest profile to represent single Tests in relation to renal insufficiency for the  HL7 Swiss project."
* ^copyright = "Used by permission of HL7 Switzerland, all rights reserved Creative Commons License"
* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* hasMember ..0

/*
Profile: ChLabObservationCKD_EPI
Parent: ChLabObservationRenalInsufficiencySingleTest
Id: ch-lab-ckd-epi
Title: "CH LAB Observation Results: CKD-EPI"
Description: "This profile constrains the ChLabObservationSingleTest profile to estimate GFR."
* . ^short = "CH LAB Observation Results: Laboratory Leucocyte Count"
* code = $loinc#62238-1 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI)"
* code.text = "GFR/1.73 sq M.predicted CKD-EPI (S/P/Bld) [Vol rate/Area]" // LOINC Display Name
  * ^short = "LOINC Display Name"
* method = $sct#702873001 "Calculation technique (qualifier value)"
*/

Profile: ChLabObservationAlbuminUrine
Parent: ChLabObservationRenalInsufficiencySingleTest
Id: ch-lab-albumin-urine
Title: "CH LAB Observation Results: Albumin Urine"
Description: "This profile constrains the ChLabObservationSingleTest profile determine the concentration of albumin in urine."
* . ^short = "CH LAB Observation Results: Albumin Urine"
// * labTestKit = Reference(Combur_Test)  // may be substituted with other Stripe tests
* code = $loinc#1754-1 "Albumin [Mass/volume] in Urine"
* code.text = "Albumin (U) [Mass/Vol]"
  * ^short = "LOINC Display Name"
* method = $sct#702660003 "Test strip technique (qualifier value)"

//  https://github.com/hl7-eu/laboratory/blob/master/input/fsh/examples/lab_report/Observation-result-ratio-example.fsh

