Instance: TestkitCRP
InstanceOf: ChLabReportDeviceTestKit
Title: "Afinion™ CRP Test"
Description: "Example of a laboratory Testkit"
Usage: #example
* identifier.system = "http://www.labor-gantenbein.ch/devices/id"
* identifier.value = "345675"
* udiCarrier 
  * deviceIdentifier = "040156300936045" // Unique device identifier (UDI) assigned to device label or package, same as GTIN. Fake Number !
* status = #active
* manufacturer = "Abbott"
* lotNumber = "lot.112233"
* serialNumber = "1116787" // REF
* deviceName
  * name = "Afinion™ CRP"
  * type = #udi-label-name

Instance: TestkitD-Dimer
InstanceOf: ChLabReportDeviceTestKit
Title: "Roche CARDIAC D-Dimer Testkit"
Description: "Example of a laboratory Testkit"
Usage: #example
* identifier.system = "http://www.labor-gantenbein.ch/devices/id"
* identifier.value = "345675"
* udiCarrier 
  * deviceIdentifier = "040156300936045" // Unique device identifier (UDI) assigned to device label or package, same as GTIN. Fake Number !
* status = #active
* manufacturer = "Roche"
* lotNumber = "lot.112233"
* serialNumber = "06882382" // REF
* deviceName
  * name = "Roche CARDIAC D-Dimer"  // Fake Name !
  * type = #udi-label-name


// ╭────────────── Sysmex XP-300  ────────────────────────╮
// │  automated 3-part differential haematology analyser  │
// │             LIS (additional LAN port)                │
// ╰──────────────────────────────────────────────────────╯
Instance: XP-300
InstanceOf: ChLabReportDeviceAnalyzer
Title: "Sysmex XP-300"
Description: "Example of a Hematology Analyzer"
Usage: #example
* identifier.system = "http://www.labor-gantenbein.ch/devices/id"
* identifier.value = "345675"
* udiCarrier 
  * deviceIdentifier = "040156300936045" // Unique device identifier (UDI) assigned to device label or package, same as GTIN. Fake Number !
* status = #active
* manufacturer = "Sysmex"
* lotNumber = "lot.112233"
* serialNumber = "06882382" // REF
* deviceName
  * name = "XP-300"
  * type = #udi-label-name

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
