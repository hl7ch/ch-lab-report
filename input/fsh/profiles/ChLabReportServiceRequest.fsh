/*
has to be compared with SR from CH LAB-Order
*/

Profile: ChLabReportServiceRequest
Parent: ServiceRequest
Id: ch-lab-report-servicerequest
Title: "CH LAB ServiceRequest: Laboratory Order"
Description: "This profile constrains the ServiceRequest resource for the purpose of laboratory orders in Switzerland."
// * . ^short = "CH LAB Document: Laboratory Order"
// * ^extension[$imposeProfile].valueCanonical = Canonical(BundleLabReportEu)

// * insert SetFmmandStatusRule ( 2, trial-use)

* identifier 1..
* code from LabOrderCodesEuVs (preferred)
* subject 1..
* subject only Reference(ChLabPatient or PatientAnimalEu or Group or Location or Device)
* requisition ^short = "Composite Request ID."
* specimen	only Reference(ChLabSpecimen)
  * ^short = "Specimens to be used by the laboratory procedure"
  * ^comment = """If the specimen information are known when the order is created then the ServiceRequest.specimen should be used.
If the ServiceRequest can be updated when the specimen is collected then the ServiceRequest.specimen or the Specimen.request could be used.
Otherwise the relationship is recorded in the Specimen.request element"""
  // add invariant ?
* insurance only Reference (Coverage)
* supportingInfo ^short = "Additional information: e.g AOEs and prior results"
* authoredOn ^short = "When the order was placed"

Invariant: code-or-basedOn-required
Description: "must have a code for what is beeing requested, or a basedOn element"
Expression: "code.exists() or basedOn.exists()"
Severity: #error
