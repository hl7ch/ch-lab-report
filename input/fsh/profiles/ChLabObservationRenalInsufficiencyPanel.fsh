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
// * hasMember 8..12
// * hasMember ^slicing.discriminator.type = #value
// * hasMember ^slicing.discriminator.path = "resolve().hasMember"
// * hasMember ^slicing.rules = #open
// * hasMember ^slicing.description = ""
// * hasMember ^slicing.ordered = false
* hasMember contains
  CKD-EPI 1..1 MS and // CKD-EPI for eGFR
  uACR 1..1 MS

* hasMember[CKD-EPI] only Reference(ChLabObservation_eGFRcr_CKD_EPI_2021 or ChLabObservation_eGFRcr_cys_CKD_EPI_2021)
// * hasMember[CKD-EPI] only Reference(ChLabObservation_eGFR_CKD_EPI_male or ChLabObservation_eGFR_CKD_EPI_female)
* hasMember[CKD-EPI] ^label = "Label"
* hasMember[CKD-EPI] ^short = "eGFR crea, CKD-EPI 2021 or eGFR crea cystatin, CKD-EPI 2021"

* hasMember[uACR] only Reference(ChLabObservation_uACR)
* hasMember[uACR] ^label = "Label"
* hasMember[uACR] ^short = "uACR, Urin Albumin/Creatinin Quotient"

// ╭─ profiles for renal insufficiency observations ──╮
// │  Profiles for renal insufficiency Single Tests   │
// ╰──────────────────────────────────────────────────╯

Profile: ChLabObservation_uACR
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-albumin-creatinine-urine-ratio
Title: "CH LAB Observation Results: Albumin/Creatinine Ratio in Urine"
Description: "This profile constrains the ChLabObservationSingleTest profile determine ratio of the concentration of albumin and creatinine in urine."
* . ^short = "CH LAB Observation Results: uACR"

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
// * labTestKit = Reference(Combur_Test)  // may be substituted with other Stripe tests
* code = $loinc#32294-1 "Albumin/Creatinine [Ratio] in Urine"
* code.text = "Albumin/Creatinine (U) [Ratio]"
  * ^short = "LOINC Display Name"
* method = $sct#271075006 "Urine albumin/creatinine ratio measurement (procedure)"

// https://github.com/hl7-eu/laboratory/blob/master/input/fsh/examples/lab_report/Observation-result-ratio-example.fsh
// https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3919350/
