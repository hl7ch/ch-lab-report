/*
Profile: ChLabObservationDefinition
Parent: ObservationDefinition
Id: ch-lab-observation-ActivityDefinition
Description: "Contains the Identifier for the Test-Kit and the Analyzer"

* extension contains $observationDefinition-r5 named ObservationDefinitionR5 0..1  //1..1
* extension[ObservationDefinitionR5].valueReference 0..1  //1..1
* extension[ObservationDefinitionR5].valueReference only Reference(ObservationDefinition)

*/
/*
Instance: b87458ca-b29a-4244-b347-39111caf9ef2
InstanceOf: ObservationDefinition
Usage: #example
// * status = "active"
* category = $observation-category#laboratory

* meta.profile = "http://hl7.org/fhir/uv/livd/StructureDefinition/observationdefinition-uv-livd"
* extension[0].url = "http://hl7.org/fhir/uv/livd/StructureDefinition/ext-device"
* extension[=].valueReference = Reference(DeviceDefinition/1faf1d64-df18-4d7a-b45d-3872ddd3f165)
* extension[+].url = "http://hl7.org/fhir/uv/livd/StructureDefinition/ext-vendorReferenceIdentifier"
* extension[=].valueIdentifier.value = "3L82"
* code = $ARCHITECT#1069 "GluC"

// * code = $loinc#13980-8 "Albumin/Protein.total in Serum or Plasma by Electrophoresis"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method = $sct#115341008 "Total measurement"
* preferredReportName = "Serum albumin/​Protein total"
* permittedUnit.system = "http://unitsofmeasure.org"
* permittedUnit.code = "%"
* permittedUnit.display = "%"
* qualifiedValue[0].context.coding.system = "http://terminology.hl7.org/CodeSystem/referencerange-meaning"
* qualifiedValue[=].context.coding.code = "normal"
* qualifiedValue[=].context.coding.display = "Normal Range"
* qualifiedValue[=].rangeCategory = "reference"
* qualifiedValue[=].range.low.value = 50
* qualifiedValue[+].context.coding.system = "http://terminology.hl7.org/CodeSystem/referencerange-meaning"
* qualifiedValue[=].context.coding.code = "normal"
* qualifiedValue[=].context.coding.display = "Normal Range"
* qualifiedValue[=].rangeCategory = "critical"
* qualifiedValue[=].range.high.value = 40

Alias: $resource-types = http://hl7.org/fhir/resource-types
*/

