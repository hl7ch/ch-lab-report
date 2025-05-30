// ╭── profile of eGFR_MDRD for male and female Patients ───╮
// │ Observation with components for blacks and non-blacks  │
// ╰────────────────────────────────────────────────────────╯

Profile:      ChLabObservation_eGFR_MDRD
Id:           ch-lab-observation-egfr-mdrd
Parent:       ChLabObservation_eGFR
Title:        "CH LAB-Report Observation Results: eGFR - MDRD Profile for male and female Patients, components for blacks and non-blacks"
Description:  """Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular
(eGFR_MDMR) filtration rate can be calculated. Further input parameters are age, race and gender.  
Note: The MDRD equation is hardly used any more and is replaced by the CKD-EPI equation.  
[GFR Calculators:](http://www.mdrd.com/)"""

* code from ObservationCodeMDRD (required)
  * ^short = "ValueSet for the allowed LOINC codes for eGFR MDRD among males and females"
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
* component[blacks].code = $loinc#48643-1 // "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
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
* component[non-blacks].code = $loinc#48642-3  // "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)/1.73 sq M among non black population"
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
