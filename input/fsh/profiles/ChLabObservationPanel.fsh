// ╭─────  profile for grouped observations ─────╮
// │  Container for singleTests Observations     │
// │         and panel Observations              │
// ╰─────────────────────────────────────────────╯

Profile: ChLabObservationPanel
Parent: ChLabObservationResultsLaboratory
Id: ChLab-observation-panel
Title: "CH LAB Observation Results: Panel"
Description: """This profile constrains the ChLabObservationResultsLaboratory profile to represent only a panel / battery of laboratory test results for the HL7 Swiss project. The top-level observation contains only further observations-panels and observations-single-tests in the hasMember element. The observation-panels may carry a conclusion in the note element and/or a global interpretation by the producer of the study, in the interpretation element; value[x] and component elements are not allowed and have to be shown in the observation-single-test profile."""

* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = $m49.htm#756 "Switzerland"
* ^purpose = "This profile constrains the ChLabObservationResultsLaboratory profile to represent a panel or battery of laboratory test results for the  HL7 Swiss project."
* ^copyright = "Used by permission of HL7 Switzerland, all rights reserved Creative Commons License"

* hasMember 1..*
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = ""
* hasMember ^slicing.ordered = false
* hasMember only Reference(ChLabObservationPanel or ChLabObservationSingleTest)
// set all x from value[x] to 0 to avoid sushi warning
* valueString ..0
* valueRange ..0
* valueRatio ..0
* valueTime ..0
* valueDateTime ..0
* valuePeriod ..0
* valueQuantity ..0
* valueCodeableConcept ..0
* component ..0
* interpretation MS
* note MS

Instance: ObservationPanel
InstanceOf: ChLabObservationPanel
Title: "Example of Observation Result Panel"
Description: "Contains nested Laboratory observation results"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* code = $loinc#24360-0 // "Hemoglobin and Hematocrit panel - Blood"
* code.text = "Hemoglobin and Hematocrit panel (Bld)"
* hasMember[0] = Reference(Observation/Hemoglobin)
* hasMember[+] = Reference(Observation/Hematocrit)

Instance: Hemoglobin
InstanceOf: ChLabObservationSingleTest
Usage: #example
Title: "Hemoglobin"
Description: "Single Laboratory Test Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* code = $loinc#718-7 // "Hemoglobin [Mass/volume] in Blood"
* code.text = "Hemoglobin (Bld) [Mass/Vol]"
* valueQuantity = 107 'g/L' "g/L"

Instance: Hematocrit
InstanceOf: ChLabObservationSingleTest
Usage: #example
Title: "Hematocrit"
Description: "Single Laboratory Test Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* code = $loinc#20570-8 // "Hematocrit [Volume Fraction] of Blood"
* code.text = "Hematocrit (Bld) [Mass/Vol]"
* valueQuantity = 33 '%' "%"
