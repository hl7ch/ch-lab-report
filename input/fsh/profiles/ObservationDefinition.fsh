Profile: ChLabObservationDefinition
Parent: ObservationDefinition
Id: ch-lab-observation-ActivityDefinition
Description: "Contains the Identifier for the Test-Kit and the Analyzer, the methods, the ranges"

// ╭─── Extension ────────╮
// │  DeviceDefinitionR5  │
// ╰──────────────────────╯
* extension contains $observationDefinition-device-r5 named ObservationDefinitionDeviceR5 1..1
* extension[ObservationDefinitionDeviceR5]
  * ^short = "Associated Lab Report Devices or DeviceDefinitions"
  * ^definition = "This extension implements the R5 composition element. It allow to link this DiagnoticReport with the Composition documenting this Laboratory Report."
  *  valueReference 1..1
  *  valueReference only Reference(ChLabDevice or ChLabDeviceDefinition)

* code 1..1
* method 1..1