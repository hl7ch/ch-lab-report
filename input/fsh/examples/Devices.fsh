Instance: TestkitCRP
InstanceOf: Device
Description: "Example of a laboratory Testkit"
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
  * name = "Eurolyser CRP Test Kit"
  * type = #udi-label-name

// ╭────────────── Sysmex XP-300  ────────────────────────╮
// │  automated 3-part differential haematology analyser  │
// │             LIS (additional LAN port)                │
// ╰──────────────────────────────────────────────────────╯

Instance: XP-300
InstanceOf: Device
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
