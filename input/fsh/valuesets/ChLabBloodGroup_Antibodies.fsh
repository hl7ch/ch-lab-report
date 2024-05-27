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
* include codes from system $sct where concept descendent-of #19830006 "Blood group antibody"

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
* include codes from system $sct where concept descendent-of #252315008 "Blood group antibody screening (procedure)"

// ValueSet based on LOINC ancestor
/*
ValueSet: ChLabBloodGroupAntibodyScreenResult
Id: ch-lab-bloodgroup-antibody-screen-result
Title: "ChLab BloodGroup Antibody Screen Tests Result"
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
// LOINC Partcode: LP67167-4   Blood group antibody screen
* include codes from system $loinc where ancestor = "LP67167-4"
*/

// ValueSet based on local LOINC ancestor
ValueSet: ChLabBloodGroupAntibodyScreenResult
Id: ch-lab-bloodgroup-antibody-screen-result
Title: "ChLab BloodGroup Antibody Screen Tests Result"
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

* $loinc#101678-1 "Blood group antibody screen [Presence] in Blood from Newborn"
* $loinc#14606-8 "Blood group antibody screen [Presence] in Serum or Plasma by Prewarmed"
* $loinc#15343-7 "Blood group antibody screen [Titer] in Serum or Plasma"
* $loinc#18273-3 "Blood group antibody screen [Presence] in Serum or Plasma from Blood product unit"
* $loinc#18274-1 "Blood group antibody screen [Presence] in Serum or Plasma from Donor"