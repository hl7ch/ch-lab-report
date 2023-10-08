Profile: ChLabDeviceTestKit
Parent: Device
Id: ch-lab-device-test-kit
Description: "Holds Laboratory Test-Kit"

* udiCarrier 0..1
  * deviceIdentifier 1..1 // UDI-DI
  * entryType

* manufacturer 1..1
* deviceName
  * name 1..1
  * type = $sct#272181003 // Clinical equipment and/or device (physical object)


// ╭─── Extension ────────╮
// │    DeviceR5          │
// ╰──────────────────────╯

Profile: ChLabDeviceAnalyzer
Parent: Device
Id: ch-lab-device-analyzer
Description: "Holds Laboratory Analyzer"

* udiCarrier 0..1
  * deviceIdentifier 1..1 // UDI-DI
  * entryType

* manufacturer
* deviceName
  * name
  * type = $sct#30234008 // Medical laboratory analyzer, device (physical object)


// ╭─── Extension ────────╮
// │    DeviceR5          │
// ╰──────────────────────╯