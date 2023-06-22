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
    Composition 1..1 and
    DiagnosticReport 1..1 and
    Patient 1..1 and
    Observation 0..* and
    Specimen 0..* and
    PractitionerRole 0..* and
    Practitioner 0..* and
    Organization 0..*

* entry[Composition].resource only ChLabComposition
* entry[DiagnosticReport].resource only ChLabDiagnosticReport
* entry[Patient].resource only ChLabPatient
* entry[Observation].resource only ChLabObservationResultsLaboratory
* entry[Specimen].resource only Specimen
* entry[PractitionerRole].resource only ChLabPractitionerRole
* entry[Practitioner].resource only ChLabPractitioner
* entry[Organization].resource only $ChCoreOrganization
