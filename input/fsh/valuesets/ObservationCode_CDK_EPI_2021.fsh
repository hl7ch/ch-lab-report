// Alias: $custom-observation-codes = http://example.org/fhir/CodeSystem/custom-observation-codes

ValueSet: ObservationCode_CDK_EPI_2021
Id: observation-code-cdk-epi-2021
Title: "CH LAB-Report Codes for eGFR in CKD-EPI 2021"
Description: "ValueSet for the allowed eGFRcr and eGFRcr-cys codes, has no race term"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* $loinc#98979-8 "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI 2021)/1.73 sq M'"
* $loinc#98980-6 "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine and Cystatin C-based formula (CKD-EPI 2021)/1.73 sq M"