Profile:      ChLabObservation_eGFR_male
Id:           ch-lab-observation-egfr-male
Parent:       ChLabObservationSingleTest
Title:        "eGFR Profile for males"
Description:  "Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular (eGFR) filtration rate can be calculated."

* code = $loinc#50044-7 "Glomerular filtration rate/1.73 sq M.predicted among females [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* code MS
* code ^short = "eGFR"
* code ^definition = "GFR estimating equations developed by the Modification of Diet in Renal Disease (MDRD) Study Group and the Chronic Kidney Disease Epidemiology Collaboration (CKD-EPI)...."

* method = $sct#702668005 "MDRD"

* component ..2 MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "2 possibilities: black - non-black"
* component ^slicing.ordered = false
* component contains
    blacks 1..1 MS and
    non-blacks 1..1 MS
* component[blacks] ^short = "eGFR among blacks"
* component[blacks].code = $loinc#48643-1
* component[blacks].code ^short = "eGFR among blacks code"
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

* component[non-blacks] ^short = "eGFR among non-blacks"
* component[non-blacks].code = $loinc#48642-3
* component[non-blacks].code ^short = "eGFR among non-blacks code"
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

Profile:      ChLabObservation_eGFR_female
Id:           ch-lab-observation-egfr-female
Parent:       ChLabObservationSingleTest
Title:        "eGFR Profile for females"
Description:  "Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular (eGFR) filtration rate can be calculated."

* code = $loinc#50044-7 "Glomerular filtration rate/1.73 sq M.predicted among females [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* code MS
* code ^short = "eGFR"
* code ^definition = "GFR estimating equations developed by the Modification of Diet in Renal Disease (MDRD) Study Group and the Chronic Kidney Disease Epidemiology Collaboration (CKD-EPI)...."

* method = $sct#702668005 "MDRD"

* component ..2 MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "2 possibilities: black - non-black"
* component ^slicing.ordered = false
* component contains
    blacks 1..1 MS and
    non-blacks 1..1 MS
* component[blacks] ^short = "eGFR among blacks"
* component[blacks].code = $loinc#48643-1
* component[blacks].code ^short = "eGFR among blacks code"
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

* component[non-blacks] ^short = "eGFR among non-blacks"
* component[non-blacks].code = $loinc#48642-3
* component[non-blacks].code ^short = "eGFR among non-blacks code"
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
