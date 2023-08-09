Instance: Hb-Observation
InstanceOf: ChLabObservationResultsLaboratory
Title: "Hb-Observation"
Description: "Example for Hemoblobine Observation"
Usage: #example
* id = "hb-observation"

* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab" // probably not needed
* status = #final
* category = $observation-category#laboratory
* code.coding[0] = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Hemoglobin (Bld) [Mass/Vol]" // LOINC Display Name
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