// Alias: $custom-observation-codes = http://example.org/fhir/CodeSystem/custom-observation-codes

ValueSet: ObservationCodeMDRD
Id: observation-code-mdrd-male-female
Title: "CH LAB-Report Codes for eGFR (MDRD)"
Description: "ValueSet for the allowed eGFR among males and eGFR among females codes"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false

* $loinc#77147-7 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"

* $loinc#70969-1 "Glomerular filtration rate/1.73 sq M.predicted among males [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* $loinc#50044-7 "Glomerular filtration rate/1.73 sq M.predicted among females [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
//  Not in the same logical level
//* $loinc#48643-1 "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
//* $loinc#48642-3 "Glomerular filtration rate/1.73 sq M.predicted among non-blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"