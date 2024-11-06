Profile:      ChLabObservation_eGFR_CKD_EPI_2009
Parent:       ChLabObservation_eGFR
Id:           ch-lab-observation-egfr-ckd-epi-2009
Title:        "CH LAB Observation Results: eGFR-CKD-EPI(ASR) 2009 Profile for blacks and non-blacks"
Description:  """Renal function can be determined by laboratory measurement of serum creatinine, from 
which the estimated glomerular (eGFR_CKD_EPI) filtration rate can be calculated. Further input parameters are age, race, gender, body height and weight.\n 
Use [this calculator:](https://nierenrechner.de/index.php?page=egfr-ckd-rechner)
or [GFR Calculators:](http://www.mdrd.com/)"""

* code from ObservationCode_CDK_EPI_2009 (required)
  * ^short = "ValueSet for the allowed LOINC codes for eGFR CDK_EPI among blacks and non-blacks"

* component ..2 MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "2 possibilities: blacks - non-blacks"
* component ^slicing.ordered = false
* component contains
    blacks 1..1 and
    non-blacks 1..1
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
