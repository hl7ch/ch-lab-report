Instance: Ht-Observation
InstanceOf: ChLabObservationResultsLaboratory
Title: "Ht-Observation"
Description: "Example for Hemocrite Observation"
Usage: #example
* id = "ht-observation"

// * meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab" // probably not needed
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#HM "Hematology"
* code = $loinc#20570-8 "Hematocrit [Volume Fraction] of Blood"
//* code.coding[+] = urn:oid:1.2.203.24341.11.2.2#2504 "Na (S; látková konc. [mmol/l] spektrofotometrie-FAES)"
* code.text = "Hematocrit (Bld) [Volume fraction]" // display text
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// TODO values
* valueQuantity = 48 '%' "%"
//* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#85457002 "Centrifugation (procedure)"
* specimen = Reference(Blood)
* referenceRange.low.value = 42   // women 37
* referenceRange.low.unit = "%"
* referenceRange.high.value = 50  // women 45
* referenceRange.high.unit = "%"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"