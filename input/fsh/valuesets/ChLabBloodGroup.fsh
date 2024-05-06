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

ValueSet: ChLabBloodGroupAntibody
Id: ch-lab-bloodgroup-antibody-vs
Title: "ChLab Blood Group Antibody VS"
Description: "ValueSet Blood Group Antibody"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = true
* ^date = "2021-06-01T10:21:46+00:00"
* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.hl7.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
// look at: https://hl7.org/fhir/STU3/valueset-filter-operator.html 
// * include codes from system http://snomed.info/sct where concept is-a #19830006 "Blood group antibody"
* include codes from system http://snomed.info/sct where concept descendent-of #19830006 "Blood group antibody"
