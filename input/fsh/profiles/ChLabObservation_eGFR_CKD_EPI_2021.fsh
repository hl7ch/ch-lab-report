Profile: ChLabObservation_eGFR_CKD_EPI_2021
Parent: ChLabObservation_eGFR
Id: ch-lab-observation-egfr-ckd-epi-2021
Title: "CH LAB Observation Results: eGFR - CKD-EPI(AS) Creatinin based Profile"
Description: """Glomerular filtration rate (GFR) is considered the best overall index of kidney function; however measured GFR is not practical in the routine clinical setting. Estimated glomerular filtration rate (eGFR) is a suitable alternative and can be calculated for adults >= 18 years using an equation incorporating the patient's age, gender, and measured serum/plasma/blood creatinine only (eGFRcr) (this term) or both serum/plasma/blood creatinine and serum/plasma cystatin C (eGFRcr-cys) [LOINC: 98979-8](https://loinc.org/98979-8/). The serum/plasma/blood creatinine value is based on a measurement procedure that is traceable to the isotope dilution mass spectrometry (IDMS) reference measurement procedure for creatinine. The 2021 CKD-EPI equations used for eGFRcr and eGFRcr-cys do not have a race term as does the older estimating equations that they replace. [https://www.nejm.org/doi/pdf/10.1056/NEJMoa2102953](https://www.nejm.org/doi/pdf/10.1056/NEJMoa2102953)"""

* code from ObservationCode_CDK_EPI_2021 (required)
  * ^short = "ValueSet for the allowed LOINC codes aiming at Creatinin / Creatinin and Cystatin C based eGFR"

// * code = $loinc#98979-8 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI 2021)"
// * code MS
// * code ^short = "eGFRcr SerPlBld CKD-EPI 2021"  //  LOINC Short Name
// * code ^definition = "GFR/1.73 sq M.predicted Creatinine-based formula (CKD-EPI 2021) (S/P/Bld) [Vol rate/Area]"   //  LOINC Display Name

// attention: Reference Ranges have to be validated
// * referenceRange 1..3  // 3..3
// * referenceRange ^slicing.discriminator.type = #value
// * referenceRange ^slicing.discriminator.path = "age.low.value"
// * referenceRange ^slicing.rules = #open
// * referenceRange ^slicing.description = "Reference range by age"
// * referenceRange ^slicing.ordered = false
// * referenceRange contains 
//     child 0..1 MS and
//     youth 0..1 MS and
//     adult 0..1 MS
// * referenceRange[child].low.value = 90
// * referenceRange[child].low.unit = "mL/min"
// * referenceRange[child].age.low.value = 0
// * referenceRange[child].age.low.unit = "a"
// * referenceRange[child].age.high.value = 30
// * referenceRange[child].age.high.unit = "a"
// * referenceRange[child].text = "Die Formel ist nur ab 18 Jahre validiert."
// * referenceRange[youth].low.value = 90
// * referenceRange[youth].low.unit = "mL/min"
// * referenceRange[youth].age.low.value = 18
// * referenceRange[youth].age.low.unit = "a"
// * referenceRange[youth].age.high.value = 30
// * referenceRange[youth].age.high.unit = "a"
// * referenceRange[youth].text = "Die Formel ist ab 18 bis 93 Jahre validiert."
// * referenceRange[adult].low.value = 60
// * referenceRange[adult].low.unit = "mL/min"
// * referenceRange[adult].age.low.value = 31
// * referenceRange[adult].age.low.unit = "a"
// * referenceRange[adult].age.high.value = 100
// * referenceRange[adult].age.high.unit = "a"
// * referenceRange[adult].text = "Die Formel ist nur bis 93 Jahre validiert."

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
* valueQuantity = 74 'mL/min' "mL/min"

* referenceRange.low.value = 60
* referenceRange.low.unit = "mL/min"
* referenceRange.age.low.value = 31
* referenceRange.age.low.unit = "a"
* referenceRange.age.high.value = 100
* referenceRange.age.high.unit = "a"
* referenceRange.text = "Die Formel ist nur bis 93 Jahre validiert."

/*
Profile: ChLabObservation_eGFRcr_cys_CKD_EPI_2021
Parent: ChLabObservation_eGFR
Id: ch-lab-observation-egfr-cr-cys-ckd-epi-2021
Title: "CH LAB Observation Results: eGFRcr-cys - CKD-EPI(AS) Creatinin and Cystatin-C based Profile"
Description: """Glomerular filtration rate (GFR) is considered the best overall index of kidney function; however measured GFR is not practical in the routine clinical setting. Estimated glomerular filtration rate (eGFR) is a suitable alternative and can be calculated for adults >= 18 years using an equation incorporating the patient's age, gender, and measured serum/plasma/blood creatinine only (eGFRcr) (this term) or both serum/plasma/blood creatinine and serum/plasma cystatin C (eGFRcr-cys) [LOINC: 98980-6](https://loinc.org/98980-6/). The serum/plasma/blood creatinine value is based on a measurement procedure that is traceable to the isotope dilution mass spectrometry (IDMS) reference measurement procedure for creatinine. The 2021 CKD-EPI equations used for eGFRcr and eGFRcr-cys do not have a race term as does the older estimating equations that they replace. [https://www.nejm.org/doi/pdf/10.1056/NEJMoa2102953](https://www.nejm.org/doi/pdf/10.1056/NEJMoa2102953)"""

* code = $loinc#98980-6 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine and Cystatin C-based formula (CKD-EPI 2021)"
* code MS
* code ^short = "eGFRcr-cys SerPlBld CKD-EPI 2021"
* code ^definition = "GFR/1.73 sq M.predicted Creatinine and Cystatin C-based formula (CKD-EPI 2021) (S/P/Bld) [Vol rate/Area]"   //  LOINC Display Name

// attention: Reference Ranges have to be validated
// * referenceRange 1..3  // 3..3
// * referenceRange ^slicing.discriminator.type = #value
// * referenceRange ^slicing.discriminator.path = "age.low.value"
// * referenceRange ^slicing.rules = #open
// * referenceRange ^slicing.description = "Reference range by age"
// * referenceRange ^slicing.ordered = false
// * referenceRange contains 
//     child 0..1 MS and
//     youth 0..1 MS and
//     adult 0..1 MS
// * referenceRange[child].low.value = 90
// * referenceRange[child].low.unit = "mL/min"
// * referenceRange[child].age.low.value = 0
// * referenceRange[child].age.low.unit = "a"
// * referenceRange[child].age.high.value = 30
// * referenceRange[child].age.high.unit = "a"
// * referenceRange[child].text = "Die Formel ist nur ab 18 Jahre validiert."
// * referenceRange[youth].low.value = 90
// * referenceRange[youth].low.unit = "mL/min"
// * referenceRange[youth].age.low.value = 18
// * referenceRange[youth].age.low.unit = "a"
// * referenceRange[youth].age.high.value = 30
// * referenceRange[youth].age.high.unit = "a"
// * referenceRange[youth].text = "Die Formel ist ab 18 bis 93 Jahre validiert."
// * referenceRange[adult].low.value = 60
// * referenceRange[adult].low.unit = "mL/min"
// * referenceRange[adult].age.low.value = 31
// * referenceRange[adult].age.low.unit = "a"
// * referenceRange[adult].age.high.value = 100
// * referenceRange[adult].age.high.unit = "a"
// * referenceRange[adult].text = "Die Formel ist nur bis 93 Jahre validiert."
*/

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
* valueQuantity = 74 'mL/min' "mL/min"
* referenceRange.low.value = 60
* referenceRange.low.unit = "mL/min"
* referenceRange.age.low.value = 31
* referenceRange.age.low.unit = "a"
* referenceRange.age.high.value = 100
* referenceRange.age.high.unit = "a"
* referenceRange.text = "Die Formel ist nur bis 93 Jahre validiert."

//  https://www.swissnephrology.ch/wp/wp-content/uploads/2023/01/161121_SGN_Pocketguide_CKD_Web_A4_d_WZ.pdf