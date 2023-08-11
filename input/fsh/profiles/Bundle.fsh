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

Instance: LabResultReport-1-tvt
InstanceOf: ChLabDocument
Description: "Example of a Laboratory Report for scenario deep vein thrombosis"
Usage: #example
// * meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"
* identifier.system = "http://example.org"
* identifier.value = "ba91c64b-f30c-4137-a484-34bbba5e8804"
* type = #document
* timestamp = "2023-03-09T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:4028a0b8-37fc-4491-a8e7-0f28e6fc59b4"
* entry[=].resource = Composition-1-tvt
* entry[+].fullUrl = "urn:uuid:3a743273-237a-446a-a8da-9e7521cce614"
* entry[=].resource = DiagnosticReport-1-tvt
* entry[+].fullUrl = "urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5"
* entry[=].resource = HansGuggindieluft
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-ba5629b12e7f"
* entry[=].resource = HbHt-Observation
// * entry[+].fullUrl = "urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5"
// * entry[=].resource = Inline-Instance-for-BundleLabResultReportPOC-3
// * entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-ba5629b12e7f"
// * entry[=].resource = Inline-Instance-for-BundleLabResultReportPOC-4
