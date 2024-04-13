Instance: Combur-Test // must be linked in profile above
InstanceOf: ChLabReportDeviceTestKit
Title: "Combur Urin Test Streifen - Device"
Description: "Example of a laboratory Testkit"
Usage: #example
* identifier.system = "http://www.labor-gantenbein.ch/devices/id"
* identifier.value = "345111"
* udiCarrier 
  * deviceIdentifier = "TK040156333936001" // Unique device identifier (UDI) assigned to device label or package, same as GTIN. Fake Number !
* status = #active
* manufacturer = "Roche"
* lotNumber = "lot.444555"
* serialNumber = "1116787" // REF
* deviceName
  * name = "Combur-Test Teststreifen"  // Fake Name
  * type = #udi-label-name