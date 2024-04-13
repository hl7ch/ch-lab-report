Instance: TestkitD-Dimer
InstanceOf: ChLabReportDeviceTestKit
Title: "Roche CARDIAC D-Dimer Testkit"
Description: "Example of a laboratory Testkit"
Usage: #example
* id = "523fa1b9-f24d-4ae6-aa98-92d7f57b2066"
* identifier.system = "http://www.labor-gantenbein.ch/devices/id"
* identifier.value = "345675"
* udiCarrier 
  * deviceIdentifier = "TK040156300936002" // Unique device identifier (UDI) assigned to device label or package, same as GTIN. Fake Number !
* status = #active
* manufacturer = "Roche"
* lotNumber = "lot.112233"
* serialNumber = "06882382" // REF
* deviceName
  * name = "Roche CARDIAC D-Dimer"  // Fake Name !
  * type = #udi-label-name