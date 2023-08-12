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
    DiagnosticReport 1..1 and
    Observation 0..* and
    Specimen 0..* and
    ServiceRequest 0..*

* entry[Composition].resource only ChLabComposition
* entry[DiagnosticReport].resource only ChLabDiagnosticReport
* entry[Patient].resource only ChLabPatient
* entry[Observation].resource only ChLabObservationResultsLaboratory
* entry[Specimen].resource only ChLabSpecimen
* entry[ServiceRequest].resource only ChLabServiceRequestLaboratoryOrder
* entry[PractitionerRole].resource only ChLabPractitionerRole
* entry[Practitioner].resource only ChLabPractitioner
* entry[Organization].resource only CHCoreOrganization

