/*
Instance: Sysmex
InstanceOf: DeviceDefinition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/livd/StructureDefinition/devicedefinition-uv-livd"
* udiDeviceIdentifier.deviceIdentifier = "00380740003746" // UDI-DI of Test-Kit
* udiDeviceIdentifier.issuer = "https://www.fda.gov/"
* udiDeviceIdentifier.jurisdiction = "https://unstats.un.org/unsd/methodology/m49/021"
* manufacturerString = "Abbott Diagnostics"
* modelNumber = "ARCHITECT c4000"
* capability.extension.url = "http://hl7.org/fhir/uv/livd/StructureDefinition/ext-analyte"
* capability.extension.valueReference = Reference(ObservationDefinition/b87458ca-b29a-4244-b347-39111caf9ef2)
* capability.type = $resource-types#ObservationDefinition
*/