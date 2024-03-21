// ╭─────  profiles for grouper observations ────╮
// │  Container for singleTests Observations     │
// │          or panel Observations              │
// ╰─────────────────────────────────────────────╯

Profile: ChLabObservationPanel
Parent: ChLabObservationResultsLaboratory
Id: ChLab-observation-panel
Title: "CH LAB-Observation - Panel"
Description: """This profile constrains the ChLabObservationResultsLaboratory profile to represent a panel or battery of laboratory test results for the  HL7 Swiss project."""

* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = $m49.htm#756 "Switzerland"
* ^purpose = "This profile constrains the ChLabObservationResultsLaboratory profile to represent a panel or battery of laboratory test results for the  HL7 Swiss project."
* ^copyright = "Used by permission of HL7 Switzerland, all rights reserved Creative Commons License"

* hasMember 1..*
* hasMember ^slicing.discriminator.type = #value
* hasMember ^slicing.discriminator.path = "resolve().hasMember"
* hasMember ^slicing.rules = #closed
* hasMember ^slicing.description = ""
* hasMember ^slicing.ordered = true
* hasMember only Reference(ChLabObservationPanel or ChLabObservationSingleTest)

Profile: ChLabObservationSingleTest
Parent: ChLabObservationResultsLaboratory
Id: ChLab-observation-single-test
Title: "CBC Single Test - Blood by Automated count, Observation" 
Description: """This profile constrains the ChLabObservationResultsLaboratory profile to represent a panel or battery of laboratory test results for the  HL7 Swiss project."""

* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = $m49.htm#756 "Switzerland"
* ^purpose = "This profile constrains the ChLabObservationResultsLaboratory profile to represent a single Test result or a component for the  HL7 Swiss project."
* ^copyright = "Used by permission of HL7 Switzerland, all rights reserved Creative Commons License"
* hasMember ..0