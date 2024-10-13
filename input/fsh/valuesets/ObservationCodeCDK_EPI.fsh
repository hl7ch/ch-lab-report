// Alias: $custom-observation-codes = http://example.org/fhir/CodeSystem/custom-observation-codes

ValueSet: ObservationCode_CDK_EPI
Id: observation-code-cdk-epi
Title: "CH LAB Codes for eGFR in CKD-EPI"
Description: "ValueSet for the allowed eGFRcr and eGFRcr-cys codes among non-blacks"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* $loinc#62238-1 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI)"
* $loinc#94677-2 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine and Cystatin C-based formula (CKD-EPI)"