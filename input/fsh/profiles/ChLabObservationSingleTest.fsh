// ╭──  profile for single test observarions ────╮
// │  must contain: value[x] or component or     │
// │  data absent reason -> Invariant: eu-lab-1  │
// ╰─────────────────────────────────────────────╯

Profile: ChLabObservationSingleTest
Parent: ChLabObservationResultsLaboratory
Id: ChLab-observation-single-test
Title: "CH LAB-Report Observation Results: Single Test" 
Description: """This profile constrains the ChLabObservationResultsLaboratory profile to represent single test results for the  HL7 Swiss project. The profile enables only value[x] and component elements, hasMember elemens are not allowed"""

* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = $m49.htm#756 "Switzerland"
* ^purpose = "This profile constrains the ChLabObservationResultsLaboratory profile to represent a single Test result or a component for the  HL7 Swiss project."
* ^copyright = "Used by permission of HL7 Switzerland, all rights reserved Creative Commons License"

* hasMember ..0

* valueBoolean 0..1