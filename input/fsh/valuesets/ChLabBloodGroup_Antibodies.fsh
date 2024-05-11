ValueSet: ChLabBloodGroupAntibody
Id: ch-lab-bloodgroup-antibody-vs
Title: "CH Lab Results Blood Group Antibody"
Description: "ValueSet Blood Group Antibody"
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
* include codes from system http://snomed.info/sct where concept is-a #19830006 "Blood group antibody"

ValueSet: ChLabBloodGroupAntibodyScreen
Id: ch-lab-bloodgroup-antibody-screen
Title: "ChLab BloodGroup Antibody Screen Tests"
Description: "Detects atypical IgG antibodies prior to transfusion or during pregnancy. The screening test is designed specifically to detect IgG antibodies and some IgM antibodies (non ABO) may also be detected. Antibodies detected by the antibody screen should then be identified, and a titer performed if the antibody identified is considered to be clinically significant during pregnancy."
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
//  de-DE	German (Germany)	Blutgruppen-Antikörpersuchtest:Titer:Zeitpunkt:Serum oder Plasma:Semiquantitativ:
* include codes from system $sct where concept is-a #252315008 "Blood group antibody screening (procedure)"
