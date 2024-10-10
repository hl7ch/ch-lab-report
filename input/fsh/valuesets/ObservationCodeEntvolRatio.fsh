// Alias: $custom-observation-codes = http://example.org/fhir/CodeSystem/custom-observation-codes

ValueSet: ObservationCodeEntvolRatio
Id: observation-code-entsvol-ratio
Title: "Two LOINC Test Codes for Erythrocyte Distribuiton Width"
Description: "ValueSet for the allowed codes ENTVOL and RATIO"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* $loinc#21000-5 "Erythrocyte distribution width [Entitic volume] by Automated count"
* $loinc#788-0 "Erythrocyte distribution width [Ratio] by Automated count"