// ╭────────────── Afinion 2 ─────────────────────────╮
// │ Compact multi-assay analyser that provides       │
// │ valuable rapid test results at the point-of-care │
// ╰──────────────────────────────────────────────────╯
Instance: Afinion-2
InstanceOf: ChLabReportDeviceAnalyzer
Title: "Afinion™ 2"
Description: "Example of a Hematology Analyzer"
Usage: #example
* identifier.system = "http://www.labor-gantenbein.ch/devices/id"
* identifier.value = "345675"
* udiCarrier 
  * deviceIdentifier = "040156300936045" // Unique device identifier (UDI) assigned to device label or package, same as GTIN. Fake Number !
* status = #active
* manufacturer = "Abbott"
* lotNumber = "lot.112233"
* serialNumber = "987654321" // REF
* deviceName
  * name = "Abbott Afinion™ 2"
  * type = #udi-label-name
