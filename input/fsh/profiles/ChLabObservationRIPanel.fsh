// ╭──  profiles for Renal insufficiency ──╮
// │     RI Panel and RI Single Tests      │
// │         observation profiles          │
// ╰───────────────────────────────────────╯

Profile: ChLabObservationRIPanel
Parent: ChLabObservationPanel
Id: ChLabObservation-RI-panel
Title: "RI Panel - Blood by Automated count"   // LOINC long common name
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

* hasMember[CKD-EPI] only Reference(ChLabObservationCKD_EPI)
* hasMember[CKD-EPI] ^label = "Label"
* hasMember[CKD-EPI] ^short = "CKD-EPI"


* hasMember[AlbuminUrine] only Reference(ChLabObservationAlbuminUrine)
* hasMember[AlbuminUrine] ^label = "Label"
* hasMember[AlbuminUrine] ^short = "Albumin Urine"

// ╭─ profiles for renal insufficiency observations ──╮
// │  Profiles for renal insufficiency Single Tests   │
// ╰──────────────────────────────────────────────────╯

Profile: ChLabObservationRISingleTest
Parent: ChLabObservationSingleTest
Id: ChLabRI-single-test
Title: "Renal insufficiency Single Test" 
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

Profile: ChLabObservationCKD_EPI
Parent: ChLabObservationRISingleTest
Id: ch-lab-ckd-epi
Title: "CH Lab Observation Results: CKD-EPI"
Description: "This profile constrains the ChLabObservationSingleTest profile to estimate GFR."
* . ^short = "CH Lab Observation Results: Laboratory Leucocyte Count"
* code = $loinc#62238-1 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI)"
* code.text = "GFR/1.73 sq M.predicted CKD-EPI (S/P/Bld) [Vol rate/Area]" // LOINC Display Name
  * ^short = "LOINC Display Name"
* method = $sct#702873001 "Calculation technique (qualifier value)"

Profile: ChLabObservationAlbuminUrine
Parent: ChLabObservationRISingleTest
Id: ch-lab-albumin-urine
Title: "CH Lab Observation Results: Albumin Urine"
Description: "This profile constrains the ChLabObservationSingleTest profile determine the concentration of albumin in urine."
* . ^short = "CH Lab Observation Results: Albumin Urine"
// * labTestKit only Reference(Combur_Test)  // may be substituted with other Stripe tests
* code = $loinc#1754-1 "Albumin [Mass/volume] in Urine"
* code.text = "Albumin (U) [Mass/Vol]"
  * ^short = "LOINC Display Name"
* method = $sct#702660003 "Test strip technique (qualifier value)"


Instance: Combur_Test // must be linked in porfile above
InstanceOf: ChLabReportDeviceTestKit
Title: "Combur Urin Test Streifen"
Description: "Example of a laboratory Testkit"
Usage: #example
* id = "combur-test"
* identifier.system = "http://www.labor-gantenbein.ch/devices/id"
* identifier.value = "345111"
* udiCarrier 
  * deviceIdentifier = "TK040156333936001" // Unique device identifier (UDI) assigned to device label or package, same as GTIN. Fake Number !
* status = #active
* manufacturer = "Roche"
* lotNumber = "lot.444555"
* serialNumber = "1116787" // REF
* deviceName
  * name = "Combur-Test Teststreifen"  // Fake Name
  * type = #udi-label-name