Profile: ChLabReportDeviceDefinition  // Test-Kit or Analyzer
Parent: DeviceDefinition
Title: "Ch Lab Report Device Definition"
Id: ch-lab-report-device-definition
Description: "Holds udiDeviceIdentifier from Test , regulatoryIdentifier,"

* udiDeviceIdentifier 1..1
//   * type = basic
//   * deviceIdentifier 1..1   // -> UDI-DI of Test-Kit
//   * regulatoryIdentifier 1..1
* manufacturer[x] only Reference(CHCoreOrganization)
* deviceName
  * name
  * type = $sct#30234008 // or $sct272181003

// in R5 or R6 we can use here the regulatoryIdentifier, link -> relation : relatedDevice
// $sct#30234008 -> Medical laboratory analyzer, device (physical object)
// $sct272181003 -> Clinical equipment and/or device (physical object)
* parentDevice 0..1 // 