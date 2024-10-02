ValueSet: ChLabBloodGroupAntibody
Id: ch-lab-bloodgroup-antibody-vs
Title: "CH LAB BloodGroup Antibody Result (SNOMED CT coded substances)"
Description: "ValueSet of Blood Group Antibodies (substance) coded with SNOMED CT"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = true
* ^date = "2024-05-10T10:21:46+00:00"
* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.hl7.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
// look at: https://hl7.org/fhir/STU3/valueset-filter-operator.html 
* include codes from system $sct where concept descendent-of #19830006 "Blood group antibody"

