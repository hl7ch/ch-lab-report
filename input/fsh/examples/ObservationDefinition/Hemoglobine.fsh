
// Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
// Alias: $loinc = http://loinc.org
// Alias: $sct = http://snomed.info/sct

/*
Instance: Hb-ObservationDefinition
InstanceOf: ChLabObservationDefinition
Usage: #example
* status = "active"
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Hemoglobin (Bld) [Mass/Vol]" // LOINC Display Name
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* device = Reference(Sysmex)
* preferredReportName = "Hemoglobin (Bld) [Mass/Vol]"
* permittedUnit.system = "http://unitsofmeasure.org"
* permittedUnit.code = "umol/L"
* permittedUnit.display = "umol/L"
* qualifiedValue[0].context.coding.system = "http://terminology.hl7.org/CodeSystem/referencerange-meaning"
* qualifiedValue[=].context.coding.code = "normal"
* qualifiedValue[=].context.coding.display = "Normal Range"
* qualifiedValue[=].rangeCategory = "reference"
* qualifiedValue[=].range.low.value = 8.7  // women 7.4
* qualifiedValue[=].range.high.value = 11.2    // women 9.9

*/
//* qualifiedValue[+].context.coding.system = "http://terminology.hl7.org/CodeSystem/referencerange-meaning"
//* qualifiedValue[=].context.coding.code = "normal"
//* qualifiedValue[=].context.coding.display = "Normal Range"
//* qualifiedValue[=].rangeCategory = "critical"

