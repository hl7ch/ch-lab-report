// ╭── Device Profile ────╮
// │   Device Test-Kit    │
// ╰──────────────────────╯
Profile: ChLabReportDeviceTestKit
Parent: Device
Title: "CH LAB Device TestKit"
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

// * category = $device-categorie#in-vitro	"Tests done on samples such as blood or tissue that have been taken from the human body."
* type = $sct#303607000 "Biomedical equipment (physical object)"
/* This SNOMED CT code doesn't mean exactly the adequate concept, it's not enough granular.  Therefore, the concept of the laboratory analyzer is part of it! */
* parent MS

// ╭── Device Profile ────╮
// │   Device Analyzer    │
// ╰──────────────────────╯
Profile: ChLabReportDeviceAnalyzer
Parent: Device
Title: "Ch LabReport Device Analyzer"
Id: ch-lab-report-device-analyzer
Description: "Holds Laboratory Analyzer"

* udiCarrier 0..1 MS
  * deviceIdentifier 1..1 // UDI-DI
  * entryType   //  barcode | rfid | manual | card | self-reported | unknown
* status MS
* manufacturer MS

* deviceName MS
//   * name 1..1
//   * type 1..1

// * category = $device-categorie#in-vitro	"Tests done on samples such as blood or tissue that have been taken from the human body."
* type = $sct#30234008 "Medical laboratory analyzer, device (physical object)"

/* 
For further examples look at
https://github.com/hl7-eu/laboratory/blob/master/input/fsh/examples/lab_report/Observation-result-ratio-example.fsh
*/