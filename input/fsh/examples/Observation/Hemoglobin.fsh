/*
Instance: Observation-CBC
InstanceOf: ChLabObservationResultsLaboratory
Title: "CBC panel - Blood by Automated count"
Description: "This panel is the traditional hemogram plus platelet count which must now be reported with with hemograms according to current US re-imbursement rule The panel includes 2 different RDWs to accommodate the two different ways of reporting them. (Most automated instruments report as a percent ). The hemoglobin produced by the automatic counters does not use a counting method to generate the hemoglobin so we have used the methodless version of hemoglobin in this panel."
Usage: #inline
* id = "0ad0810e-6eb4-11ee-b962-0242ac120002"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
* code.text = "CBC panel Auto (Bld)" // LOINC Display Name
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"

* hasMember = Reference(Observation-Hb)
* hasMember = Reference(Observation-Ht)
*/

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