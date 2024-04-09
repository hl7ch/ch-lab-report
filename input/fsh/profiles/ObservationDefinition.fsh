Profile: ChLabObservationDefinition
Parent: ObservationDefinition
Title: "CH LAB ObservationDefinition"
Id: ch-lab-observation-ActivityDefinition
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

