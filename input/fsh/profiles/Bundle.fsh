Profile: ChLabReportDocument
Parent: CHCoreDocument
Id: ch-lab-report-document
Title: "CH Lab Document: Laboratory Report"
Description: "This profile constrains the Bundle resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Document: Laboratory Report"
* ^extension[$imposeProfile].valueCanonical = Canonical(BundleLabReportEu)

* entry contains
    DiagnosticReport 1..1 and
    Observation 0..* and
    Specimen 0..* and
    ServiceRequest 0..*

* entry[Composition].resource only ChLabReportComposition
* entry[DiagnosticReport].resource only ChLabDiagnosticReport
* entry[Patient].resource only ChLabPatient
* entry[Observation].resource only ChLabObservationResultsLaboratory
* entry[Specimen].resource only ChLabSpecimen
* entry[ServiceRequest].resource only ChLabReportServiceRequest
* entry[PractitionerRole].resource only ChLabPractitionerRole
* entry[Practitioner].resource only ChLabPractitioner
* entry[Organization].resource only CHCoreOrganization

