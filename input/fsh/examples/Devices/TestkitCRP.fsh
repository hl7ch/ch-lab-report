Instance: TestkitCRP
InstanceOf: ChLabReportDeviceTestKit
Title: "Afinion™ CRP Test"
Description: "Example of a laboratory Testkit"
Usage: #example
* id = "729d1c62-051e-4e3a-80d4-06f861b2a794"
* identifier.system = "http://example.org/Labor-Gantenbein/devices/id"
* identifier.value = "345675"
* udiCarrier 
  * deviceIdentifier = "TK040156300936001" // Unique device identifier (UDI) assigned to device label or package, same as GTIN. Fake Number !
* status = #active
* manufacturer = "Abbott"
* lotNumber = "lot.112233"
* serialNumber = "1116787" // REF
* deviceName
  * name = "Afinion™ CRP"
  * type = #udi-label-name