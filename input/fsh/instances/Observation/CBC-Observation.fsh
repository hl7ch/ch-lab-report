Instance: ErythrocyteCount
InstanceOf: ChLabObservationResultsLaboratory
Title: "CBC panel Auto (Bld)"   // Display name
Description: "Erythrocytes [#/volume] in Blood by Automated count" // LOINC long common name 
Usage: #inline
* id = "93e87cd5-a3eb-4767-b0e7-9e01a11a4784"

* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* code.text = "RBC Auto (Bld) [#/Vol]" // LOINC Display Name
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// TODO values
* valueQuantity = 10.8 'umol/L' "umol/L"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
// * method = $sct#83561000052101 "Photometry technique (qualifier value)"
// * specimen = Reference(Blood)
// * referenceRange.low.value = 8.7  // women 7.4
// * referenceRange.low.unit = "umol/L"
// * referenceRange.high.value = 11.2    // women 9.9
// * referenceRange.high.unit = "umol/L"

Instance: LeucocyteCount
InstanceOf: ChLabObservationResultsLaboratory
Title: "Observation-Hb"
Description: "Example for Hemoblobine Observation"
Usage: #inline
* id = "93e87cd5-a3eb-4767-b0e7-9e01a11a4784"

* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
* code.text = "WBC Auto (Bld) [#/Vol]" // LOINC Display Name
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// TODO values
* valueQuantity = 10.8 'umol/L' "umol/L"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
// * method = $sct#83561000052101 "Photometry technique (qualifier value)"
// * specimen = Reference(Blood)
// * referenceRange.low.value = 8.7  // women 7.4
// * referenceRange.low.unit = "umol/L"
// * referenceRange.high.value = 11.2    // women 9.9
// * referenceRange.high.unit = "umol/L"