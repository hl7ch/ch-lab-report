// ╭── Device Profile ────╮
// │   Device Analyzer    │
// ╰──────────────────────╯
Profile: ChLabReportDeviceTestKit
Parent: Device
Id: ch-lab-report-device-test-kit
Description: "Holds Laboratory Test-Kit"
* definition MS
* udiCarrier 0..1 MS
  * deviceIdentifier 1..1 // UDI-DI
  * entryType   //  barcode | rfid | manual | card | self-reported | unknown
* status MS
* manufacturer MS

* deviceName MS
//   * name 1..1
//   * type 1..1

* type = $sct#272181003 // Clinical equipment and/or device (physical object)
* parent MS

// ╭── Device Profile ────╮
// │   Device Analyzer    │
// ╰──────────────────────╯
Profile: ChLabDeviceAnalyzer
Parent: Device
Id: ch-lab-device-analyzer
Description: "Holds Laboratory Analyzer"

* udiCarrier 0..1 MS
  * deviceIdentifier 1..1 // UDI-DI
  * entryType   //  barcode | rfid | manual | card | self-reported | unknown
* status MS
* manufacturer MS

* deviceName MS
//   * name 1..1
//   * type 1..1

* type = $sct#30234008 // Medical laboratory analyzer, device (physical object)
