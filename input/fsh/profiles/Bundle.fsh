Profile: ChLabDocument
Parent: CHCoreDocument
Id: ch-lab-document
Title: "CH Lab Document: Laboratory Report"
Description: "This profile constrains the Bundle resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Document: Laboratory Report"

* obeys ch-lab-bdl1

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open

* entry contains
    composition 1..1 and
    diagnosticReport 1..1 and
    patient 1..1 and
    observation 0..* and
    specimen 0..* and
    practitionerRole 0..* and
    practitioner 0..* and
    organization 0..*

* entry[composition].resource only ChLabComposition
* entry[diagnosticReport].resource only ChLabDiagnosticReport
* entry[patient].resource only ChLabPatient
* entry[observation].resource only ChLabObservationResultsLaboratory
* entry[specimen].resource only Specimen
* entry[practitionerRole].resource only ChLabPractitionerRole
* entry[practitioner].resource only ChLabPractitioner
* entry[organization].resource only $ChCoreOrganization
