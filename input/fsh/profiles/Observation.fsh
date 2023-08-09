Profile: ChLabObservationResultsLaboratory
Parent: Observation
Id: ch-lab-observation-results-laboratory
Title: "CH Lab Observation Results: Laboratory"
Description: "This profile constrains the Observation resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory"

* obeys ch-lab-obs1

* subject only Reference(ChLabPatient)
* performer
* specimen only Reference(ChLabSpecimen)

// ##################################################
//  | Instance from HL7 Europe Laboratory Report |
// ####################################################

Instance: Inline-Instance-for-SimpleChemistryResultReport-18
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "18bd102e-0abf-42b0-b4e6-97e47fd385eb"
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* status = #final
* category = $observation-category#laboratory
* code.coding[0] = $loinc#2947-0 "Sodium [Moles/volume] in Blood"
* code.coding[+] = urn:oid:1.2.203.24341.11.2.2#2504 "Na (S; látková konc. [mmol/l] spektrofotometrie-FAES)"
* code.text = "Sodium (Bld) [Moles/Vol]"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(urn:uuid:e512e2e2-9600-4c69-a269-af3ab5421e09) "Jan Laborant"
* valueQuantity = 156 'umol/L' "umol/L"
* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#70621000052105 "Absorpční spektrofotometrie"
* specimen = Reference(urn:uuid:25dfb673-e7d6-43d0-b50b-6739f1ea9c91)
* referenceRange.low.value = 136
* referenceRange.low.unit = "umol/L"
* referenceRange.high.value = 144
* referenceRange.high.unit = "umol/L"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"

// ##################################################
//  | Instance for 1-tvt casestudy/scenario |
// ####################################################

Instance: 1-tvt-HbHt-Observation
InstanceOf: ChLabObservationResultsLaboratory
Title: "1-tvt HbHt-Observation"
Description: "Example for Hemoblobine and Hemotocrit panel Observation"
Usage: #example
* id = "1-tvt-observation"

* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab" // probably not needed
* status = #final
* category = $observation-category#laboratory
* code.coding[0] = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.text = "Hemoglobin and Hematocrit panel (Bld)"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(urn:uuid:e512e2e2-9600-4c69-a269-af3ab5421e09) "Jan Laborant"
* valueQuantity = 156 'umol/L' "umol/L"
* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#70621000052105 "Absorpční spektrofotometrie"
* specimen = Reference(urn:uuid:25dfb673-e7d6-43d0-b50b-6739f1ea9c91)
* referenceRange.low.value = 136
* referenceRange.low.unit = "umol/L"
* referenceRange.high.value = 144
* referenceRange.high.unit = "umol/L"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* hasMember = Reference(Hb-Observation)
* hasMember = Reference(Ht-Observation)