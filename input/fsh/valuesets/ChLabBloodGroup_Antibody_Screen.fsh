ValueSet: ChLabBloodGroupAntibodyScreen
Id: ch-lab-bloodgroup-antibody-screen
Title: "CH LAB BloodGroup Antibody Screen Tests (SNOMED CT coded procedures)"
Description: "Screening procedures to detect antibodies of ABO and Rho(D) systems"
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

// ValueSet based on local LOINC ancestor
ValueSet: ChLabBloodGroupAntibodyScreenResult
Id: ch-lab-bloodgroup-antibody-screen-result
Title: "CH LAB BloodGroup Antibody Screen Tests Result (LOINC codes)"
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
* $loinc#30008-7 "Blood group antibody screen [Titer] in Serum or Plasma by Albumin technique"
* $loinc#32638-9 "Blood group antibody screen [Presence] in Serum or Plasma by Saline method"
* $loinc#46271-3 "Blood group antibody screen [Presence] in Serum or Plasma --after transfusion reaction"
* $loinc#69369-7 "Blood group antibody screen [Presence] in Cord blood"
* $loinc#75263-4 "Blood group antibody screen [Presence] in Serum or Plasma by GEL" // 10
* $loinc#75264-2 "Blood group antibody screen [Presence] in Serum or Plasma by Low ionic strength saline (LISS)"
* $loinc#75265-9 "Blood group antibody screen [Presence] in Serum or Plasma by Polyethylene glycol (PEG) method"
* $loinc#890-4 "Blood group antibody screen [Presence] in Serum or Plasma"
* $loinc#891-2 "Blood group antibody screen.cell I [Presence] in Serum or Plasma"
* $loinc#892-0 "Blood group antibody screen.cell III [Presence] in Serum or Plasma"
* $loinc#893-8 "Blood group antibody screen.autologous [Interpretation] in Serum or Plasma"
* $loinc#894-6 "Blood group antibody screen.cell II [Presence] in Serum or Plasma"
* $loinc#895-3 "Blood group antibody screen.cells I+II+III [Presence] in Serum or Plasma"
* $loinc#896-1 "Blood group antibody screen [Presence] in Serum or Plasma by Cold absorption"
* $loinc#897-9 "Blood group antibody screen [Presence] in Serum or Plasma by Elution"   // 
* $loinc#898-7 "Blood group antibody screen.cell I [Presence] in Serum or Plasma by Prewarmed"
* $loinc#899-5 "Blood group antibody screen.cell II [Presence] in Serum or Plasma by Prewarmed"
* $loinc#900-1 "Blood group antibody screen.cell III [Presence] in Serum or Plasma by Prewarmed"
* $loinc#901-9 "Blood group antibody screen.cells I+II+III [Presence] in Serum or Plasma by Prewarmed"
* $loinc#902-7 "Blood group antibody screen.autologous [Presence] in Serum or Plasma by Prewarmed"
* $loinc#903-5 "Blood group antibody screen [Presence] in Serum or Plasma by RESt absorption"
* $loinc#904-3 "Blood group antibody screen [Presence] in Serum or Plasma by Warm absorption"   // 27

// ValueSet based on LOINC ancestor, produces list above locally

// ValueSet: ChLabBloodGroupAntibodyScreenResult
// Id: ch-lab-bloodgroup-antibody-screen-result
// Title: "ChLab BloodGroup Antibody Screen Tests Result"
// Description: "Detects atypical IgG antibodies prior to transfusion or during pregnancy. The screening test is designed specifically to detect IgG antibodies and some IgM antibodies (non ABO) may also be detected. Antibodies detected by the antibody screen should then be identified, and a titer performed if the antibody identified is considered to be clinically significant during pregnancy."
// * ^version = "0.1.0"
// * ^status = #active
// * ^experimental = true
// * ^date = "2024-05-10T10:21:46+00:00"
// * ^publisher = "HL7 Switzerland"
// * ^contact.name = "HL7 Switzerland"
// * ^contact.telecom.system = #url
// * ^contact.telecom.value = "https://www.hl7.ch/"
// * ^jurisdiction = urn:iso:std:iso:3166#CH
// // LOINC Partcode: LP67167-4   Blood group antibody screen
// * include codes from system $loinc where ancestor = "LP67167-4"
