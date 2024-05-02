// ---------- can be reactivated with use of Testkits, Analyzers etc. -------------

/*
Profile: ChLabObservationDefinition
Parent: ObservationDefinition
Title: "CH LAB ObservationDefinition"
Id: ch-lab-observation-definition
Description: "Contains the Identifier for the Test-Kit and the Analyzer, the methods, the ranges"

// ╭─── Extension ────────╮
// │    specimenR5        │
// ╰──────────────────────╯
* extension contains $observationDefinition-specimen-r5 named ObservationDefinitionSpecimenR5 1..1
* extension[ObservationDefinitionSpecimenR5]
  * ^short = "Associated Lab Report SpecimenDefinitions"
  * ^definition = "This extension implements the R5 specimen element. It allow to link this DiagnoticReport with the SpecimenDefinition R5 documenting this Laboratory Report."
  *  valueReference 0..1 MS
  *  valueReference only Reference(ChLabSpecimenDefinition)

// ╭─── Extension ────────╮
// │  DeviceDefinitionR5  │
// ╰──────────────────────╯
* extension contains $observationDefinition-device-r5 named ObservationDefinitionDeviceR5 1..1
* extension[ObservationDefinitionDeviceR5]
  * ^short = "Associated Lab Report Devices or DeviceDefinitions"
  * ^definition = "This extension implements the R5 composition element. It allow to link this DiagnoticReport with the Composition documenting this Laboratory Report."
  *  valueReference 1..1
  *  valueReference only Reference(ChLabReportDeviceTestKit or ChLabReportDeviceDefinition)
// * code MS
* method MS // Indicates the mechanism used to perform the observation.

Instance: Albumin24hUrin
InstanceOf: ChLabObservationDefinition
Usage: #example
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* contained[0] = TestKitExample
* contained[+] = AnalyzerExample
* extension.url = "http://hl7.eu/fhir/laboratory/StructureDefinition/observation-deviceLabTestKit"
* extension.valueReference = Reference(TestKitExample)
* status = #final
* category = $observation-category#laboratory
* code = $loinc#1755-8 "Albumin [Mass/time] in 24 hour Urine"
* code.text = "Albumin (24H U) [Mass/Time]"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer.display = "Jan Laborant"
* valueRatio.numerator = 15 'mg' "mg"
* valueRatio.denominator = 24 'h' "h"
* device = Reference(AnalyzerExample)

Instance: TestKitExample
InstanceOf: Device
Usage: #inline
* manufacturer = "Best manufacturer"
* deviceName.name = "BEST® Micro Albuminuria Test Kit"
* deviceName.type = #manufacturer-name

Instance: AnalyzerExample
InstanceOf: Device
Usage: #inline
* manufacturer = "Best manufacturer"
* deviceName.name = "BEST® FLUORESCENCE PLUS ANALYZER"
* deviceName.type = #manufacturer-name

*/