Instance: TestkitCRP
InstanceOf: Device
Description: "Example of a laboratory Testkit"
Usage: #example
* identifier.system = "http://www.labor-gantenbein.ch/devices/id"
* identifier.value = "345675"
* udiCarrier 
  * deviceIdentifier = "040156300936045" // Unique device identifier (UDI) assigned to device label or package, same as GTIN
* status = #active
* manufacturer = "Sysmex"
* lotNumber = "lot.112233"
* serialNumber = "06882382" // REF
* deviceName
  * name = "Eurolyser CRP Test Kit"
  * type = #udi-label-name
