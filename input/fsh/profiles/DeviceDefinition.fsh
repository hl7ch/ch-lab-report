Profile: ChLabDeviceDefinition      // Test-Kit or Analyzer
Parent: DeviceDefinition
Id: ch-lab-device-definition
Description: "Holds udiDeviceIdentifier from Test , regulatoryIdentifier, link -> relation : relatedDevice"

* udiDeviceIdentifier 1..1
//   * type = basic
//   * deviceIdentifier 1..1   // -> UDI-DI of Test-Kit
//   * regulatoryIdentifier 1..1
* manufacturer[x] only Reference(CHCoreOrganization)
* deviceName 1..1
* type = $sct#30234008
