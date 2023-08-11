Instance: Hb-Observation
InstanceOf: ChLabObservationResultsLaboratory
Title: "Hb-Observation"
Description: "Example for Hemoblobine Observation"
Usage: #example
* id = "hb-observation"

// * meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab" // probably not needed
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#HM "Hematology"
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Hemoglobin (Bld) [Mass/Vol]" // LOINC Display Name
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// TODO values
* valueQuantity = 10.8 'umol/L' "umol/L"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#70621000052105 "Spectrophotometric technique (qualifier value)"
* specimen = Reference(Blood)
* referenceRange.low.value = 8.7  // women 7.4
* referenceRange.low.unit = "umol/L"
* referenceRange.high.value = 11.2    // women 9.9
* referenceRange.high.unit = "umol/L"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"