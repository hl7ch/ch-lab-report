Profile: ChLabServiceRequestLaboratoryOrder
Parent: ServiceRequest
Id: ch-lab-servicerequest-laboratory-order
Title: "CH Lab ServiceRequest: Laboratory Order"
Description: "This profile constrains the ServiceRequest resource for the purpose of laboratory orders in Switzerland."
* . ^short = "CH Lab ServiceRequest: Laboratory Order"

* obeys ch-lab-sr1 and code-or-basedOn-required
* category = $sct#108252007 // Laboratory procedure (procedure)
* subject only Reference(ChLabPatient)
* specimen only Reference(ChLabSpecimen)

* extension contains CompositionBasedOnOrderOrRequisition named basedOn-order-or-requisition 0..*

Invariant: code-or-basedOn-required
Description: "must have a code for what is beeing requested, or a basedOn element"
Expression: "code.exists() or basedOn.exists()"
Severity: #error
