// Alias: $custom-observation-codes = http://example.org/fhir/CodeSystem/custom-observation-codes

ValueSet: ObservationCode_MDRD_Male_Female
Id: observation-code-mdrd-male-female
Title: "CH LAB Codes for eGFR (MDRD)"
Description: "ValueSet for the allowed eGFR among males and eGFR among females codes"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* $loinc#70969-1 "Glomerular filtration rate/1.73 sq M.predicted among males [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* $loinc#50044-7 "Glomerular filtration rate/1.73 sq M.predicted among females [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
