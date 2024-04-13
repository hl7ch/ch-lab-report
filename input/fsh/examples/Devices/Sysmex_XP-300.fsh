// ╭────────────── Sysmex XP-300  ────────────────────────╮
// │  automated 3-part differential haematology analyser  │
// │             LIS (additional LAN port)                │
// ╰──────────────────────────────────────────────────────╯

Instance: XP-300
InstanceOf: ChLabReportDeviceAnalyzer
Title: "Sysmex XP-300"
Description: "Example of a Hematology Analyzer"
Usage: #example
* id = "3b9c6849-cf71-45e9-9d88-31f7879342f0"
* identifier.system = "http://www.labor-gantenbein.ch/devices/id"
* identifier.value = "345675"
* udiCarrier 
  * deviceIdentifier = "AN040156300934000" // Unique device identifier (UDI) assigned to device label or package, same as GTIN. Fake Number !
* status = #active
* manufacturer = "Sysmex"
* lotNumber = "lot.112233"
* serialNumber = "06882382" // REF
* deviceName
  * name = "XP-300"
  * type = #udi-label-name