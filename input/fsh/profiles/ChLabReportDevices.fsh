// ╭── Device Profile ────╮
// │   Device Test-Kit    │
// ╰──────────────────────╯
Profile: ChLabReportDeviceTestKit
Parent: Device
Title: "CH LAB-Report Device: TestKit"
Id: ch-lab-report-device-test-kit
Description: "Holds Laboratory Test-Kit Data." 
* definition
* udiCarrier 0..1 MS
  * deviceIdentifier 1..1 // UDI-DI
  * entryType   //  barcode | rfid | manual | card | self-reported | unknown
* status MS
* manufacturer MS

* deviceName MS
//   * name 1..1
//   * type 1..1
// * category = $device-categorie#in-vitro	"Tests done on samples such as blood or tissue that have been taken from the human body."
* type = $sct#303607000  // "Biomedical equipment (physical object)"
/* This SNOMED CT code doesn't mean exactly the adequate concept, it's not enough granular.  Therefore, the concept of the laboratory
analyzer is part of it! */
* parent MS

// ╭── Device Profile ────╮
// │   Device Analyzer    │
// ╰──────────────────────╯
Profile: ChLabReportDeviceAnalyzer
Parent: Device
Title: "CH LAB-Report Device: Analyzer"
Id: ch-lab-report-device-analyzer
Description: "Holds Laboratory Analyzer Data."

* udiCarrier 0..1 MS
  * deviceIdentifier 1..1 // UDI-DI
  * entryType   //  barcode | rfid | manual | card | self-reported | unknown
* status MS
* manufacturer MS

* deviceName MS
//   * name 1..1
//   * type 1..1

// * category = $device-categorie#in-vitro	"Tests done on samples such as blood or tissue that have been taken from the human body."
* type = $sct#30234008  // "Medical laboratory analyzer, device (physical object)"

/* 
For further examples look at
https://github.com/hl7-eu/laboratory/blob/master/input/fsh/examples/lab_report/Observation-result-ratio-example.fsh
*/

/*
Current proposal to describe the usage of 'Must Support' in Swiss dependent IG's if a more specific 'Must Support' usages is not defined:

If a Minimal Data Set is provided by IPAG or IPS, those elements should be also defined as 'Must Support' in Swiss IG's.
The behaviour should be considered from IHE with the use of R2 as defined in Appendix Z: R2 Required if known. If the sending application 
has data for the element, it is required to populate the element with a non-empty value. If the value is not known, the element may be 
omitted. A receiving application may ignore the information conveyed by the element. A receiving application shall not raise an error 
solely due to the presence or absence of the element.
*/