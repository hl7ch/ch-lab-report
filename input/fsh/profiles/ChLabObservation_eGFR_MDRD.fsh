// ╭── profile of eGFR_MDRD for male and female Patients ───╮
// │ Observation with components for blacks and non-blacks  │
// ╰────────────────────────────────────────────────────────╯

Profile:      ChLabObservation_eGFR_MDRD
Id:           ch-lab-observation-egfr-mdrd
Parent:       ChLabObservation_eGFR
Title:        "CH LAB Observation Results: eGFR - MDRD Profile for males"
Description:  "Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular (eGFR_MDMR) filtration rate can be calculated."

* code from ObservationCodeMDRD (required)
  * ^short = "ValueSet for the allowed LOINC codes for eGFR MDRD among males and females"

// * code = $loinc#70969-1 "Glomerular filtration rate/1.73 sq M.predicted among males [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
// * code MS
// * code ^short = "eGFR_MDMR"
// * code ^definition = "GFR estimating equations developed by the Modification of Diet in Renal Disease (MDRD) Study Group and the Chronic Kidney Disease Epidemiology Collaboration (CKD-EPI)...."

* referenceRange.low.value = 60
* referenceRange.low.unit = "mL/min"

* component ..2 MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "2 possibilities: black - non-black"
* component ^slicing.ordered = false
* component contains
    blacks 1..1 MS and
    non-blacks 1..1 MS
* component[blacks] ^short = "eGFR_MDMR among blacks"
* component[blacks].code = $loinc#48643-1 "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* component[blacks].code ^short = "eGFR_MDMR among blacks code"
* component[blacks].valueQuantity only QuantityEuLab
* component[blacks].valueQuantity MS
* component[blacks].valueQuantity ^short = "Lab Result Component Value"
* component[blacks].valueQuantity.value 1..1 MS
* component[blacks].valueQuantity.value only decimal
* component[blacks].valueQuantity.unit 1..1 MS
* component[blacks].valueQuantity.unit only string
* component[blacks].valueQuantity.system 1..1 MS
* component[blacks].valueQuantity.system only uri
* component[blacks].valueQuantity.code 1..1 MS
* component[blacks].valueQuantity.code only code
* component[blacks].valueQuantity.code = #mL/min (exactly)

* component[non-blacks] ^short = "eGFR_MDMR among non-blacks"
* component[non-blacks].code = $loinc#48642-3  "Glomerular filtration rate/1.73 sq M.predicted among non-blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* component[non-blacks].code ^short = "eGFR_MDMR among non-blacks code"
* component[non-blacks].valueQuantity only QuantityEuLab
* component[non-blacks].valueQuantity MS
* component[non-blacks].valueQuantity ^short = "Lab Result Component Value"
* component[non-blacks].valueQuantity.value 1..1 MS
* component[non-blacks].valueQuantity.value only decimal
* component[non-blacks].valueQuantity.unit 1..1 MS
* component[non-blacks].valueQuantity.unit only string
* component[non-blacks].valueQuantity.system 1..1 MS
* component[non-blacks].valueQuantity.system only uri
* component[non-blacks].valueQuantity.code 1..1 MS
* component[non-blacks].valueQuantity.code only code
* component[non-blacks].valueQuantity.code = #mL/min (exactly)

// ╭── profile of eGFR_MDRD for female Patients ────────────╮
// │ Observation with components for blacks and non-blacks  │
// ╰────────────────────────────────────────────────────────╯

/*
Profile:      ChLabObservation_eGFR_MDRD_female
Id:           ch-lab-observation-egfr-mdrd-female
Parent:       ChLabObservation_eGFR
Title:        "CH LAB Observation Results: eGFR - MDRD Profile for females"
Description:  "Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular (eGFR_MDMR) filtration rate can be calculated."

* code = $loinc#50044-7 "Glomerular filtration rate/1.73 sq M.predicted among females [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* code MS
* code ^short = "eGFR_MDMR"
* code ^definition = "GFR estimating equations developed by the Modification of Diet in Renal Disease (MDRD) Study Group and the Chronic Kidney Disease Epidemiology Collaboration (CKD-EPI)...."

* referenceRange.low.value = 60
* referenceRange.low.unit = "mL/min"

* component ..2 MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "2 possibilities: blacks - non-blacks"
* component ^slicing.ordered = false
* component contains
    blacks 1..1 MS and
    non-blacks 1..1 MS
* component[blacks] ^short = "eGFR_MDMR among blacks"
* component[blacks].code = $loinc#48643-1 "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* component[blacks].code ^short = "eGFR_MDMR among blacks code"
* component[blacks].valueQuantity only QuantityEuLab
* component[blacks].valueQuantity MS
* component[blacks].valueQuantity ^short = "Lab Result Component Value"
* component[blacks].valueQuantity.value 1..1 MS
* component[blacks].valueQuantity.value only decimal
* component[blacks].valueQuantity.unit 1..1 MS
* component[blacks].valueQuantity.unit only string
* component[blacks].valueQuantity.system 1..1 MS
* component[blacks].valueQuantity.system only uri
* component[blacks].valueQuantity.code 1..1 MS
* component[blacks].valueQuantity.code only code
* component[blacks].valueQuantity.code = #mL/min (exactly)

* component[non-blacks] ^short = "eGFR_MDMR among non-blacks"
* component[non-blacks].code = $loinc#48642-3 "Glomerular filtration rate/1.73 sq M.predicted among non-blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* component[non-blacks].code ^short = "eGFR_MDMR among non-blacks code"
* component[non-blacks].valueQuantity only QuantityEuLab
* component[non-blacks].valueQuantity MS
* component[non-blacks].valueQuantity ^short = "Lab Result Component Value"
* component[non-blacks].valueQuantity.value 1..1 MS
* component[non-blacks].valueQuantity.value only decimal
* component[non-blacks].valueQuantity.unit 1..1 MS
* component[non-blacks].valueQuantity.unit only string
* component[non-blacks].valueQuantity.system 1..1 MS
* component[non-blacks].valueQuantity.system only uri
* component[non-blacks].valueQuantity.code 1..1 MS
* component[non-blacks].valueQuantity.code only code
* component[non-blacks].valueQuantity.code = #mL/min (exactly)
*/

// ╭──────  example eGFR-MDRD for a male Patient  ──────────╮
// │ Observation with components for blacks and non-blacks  │
// ╰────────────────────────────────────────────────────────╯

Instance: Observation-eGFR-MDRD-male
InstanceOf: ChLabObservation_eGFR_MDRD
Description: "Example of an Observation Instance with component.referenceRange"
Usage: #example
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03720-eGFR-MDRD-male"
* code = $loinc#70969-1 "Glomerular filtration rate/1.73 sq M.predicted among males [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* status = #final

* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2023-09-14T07:34:00+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann"

// * component[blacks].code = $loinc#48643-1 "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* component[blacks].valueQuantity.comparator = #>
* component[blacks].valueQuantity = 60 'mL/min' 
* component[blacks].valueQuantity.unit = "mL/min/1.73m2"
* component[blacks].referenceRange.low = 60 'mL/min' "mL/min/1.73m2"
* component[blacks].referenceRange.appliesTo.text = "black/african-american"
* component[blacks].referenceRange.age.low = 18 'a' "yrs"

* component[non-blacks].code = $loinc#48642-3 "Glomerular filtration rate/1.73 sq M.predicted among non-blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* component[non-blacks].valueQuantity.comparator = #>
* component[non-blacks].valueQuantity = 60 'mL/min'
* component[non-blacks].valueQuantity.unit = "mL/min/1.73m2"
* component[non-blacks].referenceRange.low = 60 'mL/min' "mL/min/1.73m2"
* component[non-blacks].referenceRange.appliesTo.text = "non-black/african-american"
* component[non-blacks].referenceRange.age.low = 18 'a' "yrs"
 
* interpretation.coding = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "interpretation of results should be assigned based upon the level of kindey function"

// ╭──────  example eGFR-MDRD for a female Patient  ───────╮
// │ Observation with components for blacks and non-blacks │
// ╰───────────────────────────────────────────────────────╯

Instance: Observation-eGFR-MDRD-female
InstanceOf: ChLabObservation_eGFR_MDRD
Description: "Example of an Observation Instance with component.referenceRange"
Usage: #example
* identifier.system = "https://examle.com/labvalues"
* identifier.value = "1304-03720-eGFR-MDRD-female"
* code = $loinc#50044-7 "Glomerular filtration rate/1.73 sq M.predicted among females [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"

* status = #final

* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* effectiveDateTime = "2023-09-14T07:34:00+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann"

// * component[blacks].code = $loinc#48643-1 "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* component[blacks].valueQuantity.comparator = #>
* component[blacks].valueQuantity = 60 'mL/min' 
* component[blacks].valueQuantity.unit = "mL/min/1.73m2"
* component[blacks].referenceRange.low = 60 'mL/min' "mL/min/1.73m2"
* component[blacks].referenceRange.appliesTo.text = "black/african-american"
* component[blacks].referenceRange.age.low = 18 'a' "yrs"

* component[non-blacks].code = $loinc#48642-3 "Glomerular filtration rate/1.73 sq M.predicted among non-blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* component[non-blacks].valueQuantity.comparator = #>
* component[non-blacks].valueQuantity = 60 'mL/min'
* component[non-blacks].valueQuantity.unit = "mL/min/1.73m2"
* component[non-blacks].referenceRange.low = 60 'mL/min' "mL/min/1.73m2"
* component[non-blacks].referenceRange.appliesTo.text = "non-black/african-american"
* component[non-blacks].referenceRange.age.low = 18 'a' "yrs"
 
* interpretation.coding = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "interpretation of results should be assigned based upon the level of kindey function"
