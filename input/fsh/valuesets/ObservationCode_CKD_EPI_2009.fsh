// Alias: $custom-observation-codes = http://example.org/fhir/CodeSystem/custom-observation-codes

ValueSet: ObservationCode_CDK_EPI_2009
Id: observation-code-cdk-epi-2009
Title: "CH LAB-Report Codes for eGFR in CKD-EPI"
Description: "ValueSet for the allowed eGFRcr and eGFRcr-cys codes among non-blacks"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* $loinc#62238-1 "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI)/1.73 sq M"
* $loinc#94677-2 "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine and Cystatin C-based formula (CKD-EPI)/1.73 sq M"