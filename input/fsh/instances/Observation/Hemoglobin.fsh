/*
Instance: Observation-Hb
InstanceOf: ChLabObservationResultsLaboratory
Title: "Observation-Hb"
Description: "Example for Hemoblobine Observation"
Usage: #inline
* id = "93e87cd5-a3eb-4767-b0e7-9e01a11a4784"

* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Hemoglobin (Bld) [Mass/Vol]" // LOINC Display Name
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// TODO values
* valueQuantity = 10.8 'umol/L' "umol/L"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(Blood)
* referenceRange.low.value = 8.7  // women 7.4
* referenceRange.low.unit = "umol/L"
* referenceRange.high.value = 11.2    // women 9.9
* referenceRange.high.unit = "umol/L"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"
*/