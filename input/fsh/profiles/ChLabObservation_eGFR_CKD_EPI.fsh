Profile:      ChLabObservation_eGFR_CKD_EPI_male
Id:           ch-lab-observation-egfr-ckd-epi-male
Parent:       ChLabObservation_eGFR
Title:        "CH LAB Observation Results: eGFR - CKD-EPI(ASR) Profile for males"
Description:  "Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular (eGFR_CKD_EPI) filtration rate can be calculated."

* code = $loinc#50044-7 "Glomerular filtration rate/1.73 sq M.predicted among females [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* code MS
* code ^short = "eGFR_CKD_EPI"
* code ^definition = "GFR estimating equations developed by the Modification of Diet in Renal Disease (MDRD) Study Group and the Chronic Kidney Disease Epidemiology Collaboration (CKD-EPI)...."

* referenceRange 1..3  // 3..3
* referenceRange ^slicing.discriminator.type = #value
* referenceRange ^slicing.discriminator.path = "age.low.value"
* referenceRange ^slicing.rules = #open
* referenceRange ^slicing.description = "Reference range by age"
* referenceRange ^slicing.ordered = false
* referenceRange contains 
    child 0..1 MS and
    youth 0..1 MS and
    adult 0..1 MS
* referenceRange[child].low.value = 90
* referenceRange[child].low.unit = "mL/min"
* referenceRange[child].age.low.value = 0
* referenceRange[child].age.low.unit = "a"
* referenceRange[child].age.high.value = 30
* referenceRange[child].age.high.unit = "a"
* referenceRange[child].text = "Die Formel ist nur ab 18 Jahre validiert."
* referenceRange[youth].low.value = 90
* referenceRange[youth].low.unit = "mL/min"
* referenceRange[youth].age.low.value = 18
* referenceRange[youth].age.low.unit = "a"
* referenceRange[youth].age.high.value = 30
* referenceRange[youth].age.high.unit = "a"
* referenceRange[youth].text = "Die Formel ist ab 18 bis 93 Jahre validiert."
* referenceRange[adult].low.value = 60
* referenceRange[adult].low.unit = "mL/min"
* referenceRange[adult].age.low.value = 31
* referenceRange[adult].age.low.unit = "a"
* referenceRange[adult].age.high.value = 100
* referenceRange[adult].age.high.unit = "a"
* referenceRange[adult].text = "Die Formel ist nur bis 93 Jahre validiert."

* component ..2 MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "2 possibilities: blacks - non-blacks"
* component ^slicing.ordered = false
* component contains
    blacks 1..1 MS and
    non-blacks 1..1 MS
* component[blacks] ^short = "eGFR_CKD_EPI among blacks"
* component[blacks].code = $loinc#88293-6 "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI)"
* component[blacks].code ^short = "eGFR_CKD_EPI among blacks code"
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

* component[non-blacks] ^short = "eGFR_CKD_EPI among non-blacks"
* component[non-blacks].code = $loinc#88294-4 "Glomerular filtration rate/1.73 sq M.predicted among non-blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI)"
* component[non-blacks].code ^short = "eGFR_CKD_EPI among non-blacks code"
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

Profile:      ChLabObservation_eGFR_CKD_EPI_female
Id:           ch-lab-observation-egfr-female
Parent:       ChLabObservationSingleTest
Title:        "CH LAB Observation Results: eGFR - CKD-EPI(ASR) Profile for females"
Description:  "Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular (eGFR_CKD_EPI) filtration rate can be calculated."

* code = $loinc#50044-7 "Glomerular filtration rate/1.73 sq M.predicted among females [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* code MS
* code ^short = "eGFR_CKD_EPI"
* code ^definition = "GFR estimating equations developed by the Modification of Diet in Renal Disease (MDRD) Study Group and the Chronic Kidney Disease Epidemiology Collaboration (CKD-EPI)...."

* referenceRange 1..3  // since only one of 3 referenceRanges are applicable, cardinality should be 1..1
* referenceRange ^slicing.discriminator.type = #value
* referenceRange ^slicing.discriminator.path = "age.low.value"
* referenceRange ^slicing.rules = #open
* referenceRange ^slicing.description = "Reference range by age"
* referenceRange ^slicing.ordered = false
* referenceRange contains 
    child 0..1 MS and
    youth 0..1 MS and
    adult 0..1 MS
* referenceRange[child].low.value = 90
* referenceRange[child].low.unit = "mL/min"
* referenceRange[child].age.low.value = 0
* referenceRange[child].age.low.unit = "a"
* referenceRange[child].age.high.value = 30
* referenceRange[child].age.high.unit = "a"
* referenceRange[child].text = "Die Formel ist nur ab 18 Jahre validiert."
* referenceRange[youth].low.value = 90
* referenceRange[youth].low.unit = "mL/min"
* referenceRange[youth].age.low.value = 18
* referenceRange[youth].age.low.unit = "a"
* referenceRange[youth].age.high.value = 30
* referenceRange[youth].age.high.unit = "a"
* referenceRange[youth].text = "Die Formel ist ab 18 bis 93 Jahre validiert."
* referenceRange[adult].low.value = 60
* referenceRange[adult].low.unit = "mL/min"
* referenceRange[adult].age.low.value = 31
* referenceRange[adult].age.low.unit = "a"
* referenceRange[adult].age.high.value = 100
* referenceRange[adult].age.high.unit = "a"
* referenceRange[adult].text = "Die Formel ist nur bis 93 Jahre validiert."

* component ..2 MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "2 possibilities: black - non-black"
* component ^slicing.ordered = false
* component contains
    blacks 1..1 MS and
    non-blacks 1..1 MS
* component[blacks] ^short = "eGFR_CKD_EPI among blacks"
* component[blacks].code = $loinc#88293-6 "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI)"
* component[blacks].code ^short = "eGFR_CKD_EPI among blacks code"
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

* component[non-blacks] ^short = "eGFR_CKD_EPI among non-blacks"
* component[non-blacks].code = $loinc#88294-4 "Glomerular filtration rate/1.73 sq M.predicted among non-blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI)"
* component[non-blacks].code ^short = "eGFR_CKD_EPI among non-blacks code"
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
