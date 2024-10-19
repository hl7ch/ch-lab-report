// ╭─── example eGFR_CKD_EPI by Creatinine-based formula ───╮
// │       Observation eGFRcr with referenceRanges          │
// ╰────────────────────────────────────────────────────────╯
Instance: Result-egfr-cr-ckd-epi-2021
InstanceOf: ChLabObservation_eGFR_CKD_EPI_2021
Usage: #example
Title: "Example of Result eGFR-cr CKD-EPI 2021"
Description: "eGFR-cr CKD-EPI 2021 based on Creatinin"
* code = $loinc#98979-8 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI 2021)"
* status = #final
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "BeatBunsen"
* note.text = "All estimation formulas have their limitations: Only valid in steady state, i.e. not in acute renal failure, with abnormal muscle mass of the patient, with
heavy meat consumption, dialysis and other conditions."
* valueQuantity = 74 'mL/min' "mL/min"
* referenceRange.low.value = 60
* referenceRange.low.unit = "mL/min"
* referenceRange.age.low.value = 31
* referenceRange.age.low.unit = "a"
* referenceRange.age.high.value = 100
* referenceRange.age.high.unit = "a"
* referenceRange.text = "Die Formel ist nur bis 93 Jahre validiert."

// ╭─ example eGFR_CKD_EPI by Creatinine/Cystatin-C-based formula ──╮
// │   Observation eGFRcr and eGFRcr-cys with referenceRanges     │
// ╰────────────────────────────────────────────────────────────────╯
Instance: Result-egfr-cr-cys-ckd-epi-2021
InstanceOf: ChLabObservation_eGFR_CKD_EPI_2021
Usage: #example
Title: "Example of Result eGFR-cr-cys CKD-EPI 2021"
Description: "eGFR-cr-cys CKD-EPI 2021 based on Creatinine and Cystatin C"
* code = $loinc#98980-6 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine and Cystatin C-based formula (CKD-EPI 2021)"
* status = #final
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "BeatBunsen"
* note.text = "All estimation formulas have their limitations: Only valid in steady state, i.e. not in acute renal failure, with abnormal muscle mass of the patient, with
heavy meat consumption, dialysis and other conditions."
* valueQuantity = 74 'mL/min' "mL/min"
* referenceRange.low.value = 60
* referenceRange.low.unit = "mL/min"
* referenceRange.age.low.value = 31
* referenceRange.age.low.unit = "a"
* referenceRange.age.high.value = 100
* referenceRange.age.high.unit = "a"
* referenceRange.text = "Die Formel ist nur bis 93 Jahre validiert."

/*
* referenceRange[adult].low.value = 60
* referenceRange[adult].low.unit = "mL/min"
* referenceRange[adult].age.low.value = 31
* referenceRange[adult].age.low.unit = "a"
* referenceRange[adult].age.high.value = 100
* referenceRange[adult].age.high.unit = "a"
* referenceRange[adult].text = "Die Formel ist nur bis 93 Jahre validiert."
*/

// * component[blacks].code = $loinc#48643-1 "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
// * component[blacks].valueQuantity.comparator = #>
// * component[blacks].valueQuantity = 60 'mL/min' 
// * component[blacks].valueQuantity.unit = "mL/min/1.73m2"
// * component[blacks].referenceRange.low = 60 'mL/min' "mL/min/1.73m2"
// * component[blacks].referenceRange.appliesTo.text = "black/african-american"
// * component[blacks].referenceRange.age.low = 18 'a' "yrs"
// 
// // * component[non-blacks].code = $loinc#48642-3 "Glomerular filtration rate/1.73 sq M.predicted among non-blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
// * component[non-blacks].valueQuantity.comparator = #>
// * component[non-blacks].valueQuantity = 60 'mL/min'
// * component[non-blacks].valueQuantity.unit = "mL/min/1.73m2"
// * component[non-blacks].referenceRange.low = 60 'mL/min' "mL/min/1.73m2"
// * component[non-blacks].referenceRange.appliesTo.text = "non-black/african-american"
// * component[non-blacks].referenceRange.age.low = 18 'a' "yrs"
//  
// * interpretation.coding = $v3-ObservationInterpretation#N "Normal"
// * interpretation.text = "interpretation of results should be assigned based upon the level of kindey function"
