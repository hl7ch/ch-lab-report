/*
ValueSet: ChLabBloodGroupVS
Id: ch-lab-bloodgroup-vs
Title: "ChLabBloodGroupVS"
Description: "Expanding ValueSet: Results Blood Group - SNOMED CT IPS Free Set"
* include codes from valueset $bg-ips-free-set
* include codes from valueset ResultsBloodGroupSnomedChLab

ValueSet: ResultsBloodGroupSnomedChLab
Id: results-bloodgroup-snomed-chlab
Title: "ResultsBloodGroupSnomedChLab"
Description: "Supplementary Values"
* ^status = #draft
* ^experimental = true
// * url = "http://fhir.ch/ig/ch-lab-report/ValueSet/results-bloodgroup-snomed-chlab"
* $sct#250376006 "Rh negative Du positive (finding)"
*/