/*
Instance: Observation-Ht
InstanceOf: ChLabObservationResultsLaboratory
Title: "Ht-Observation"
Description: "Example for Hematocrit Observation"
Usage: #inline
* id = "6329ad78-c886-44f8-9471-3783cc990ff0"
* status = #final
* category[0] = $observation-category#laboratory
// * category[+] = $v2-0074#HM "Hematology"
* category[+] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#20570-8 "Hematocrit [Volume Fraction] of Blood"
* code.text = "Hematocrit (Bld) [Volume fraction]" // display text
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// TODO values
* valueQuantity = 48 '%' "%"
//* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#703454003 "Centrifugation technique (qualifier value)"
* specimen = Reference(Blood)
* referenceRange.low.value = 42   // women 37
* referenceRange.low.unit = "%"
* referenceRange.high.value = 50  // women 45
* referenceRange.high.unit = "%"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"
*/