Profile: ChLabServiceRequestLaboratoryOrder
Parent: ServiceRequest
Id: ch-lab-servicerequest-laboratory-order
Title: "CH Lab ServiceRequest: Laboratory Order"
Description: "This profile constrains the ServiceRequest resource for the purpose of laboratory orders in Switzerland."
* . ^short = "CH Lab ServiceRequest: Laboratory Order"

* obeys ch-lab-sr1

* subject only Reference(ChLabPatient)
* specimen only Reference(ChLabSpecimen)
