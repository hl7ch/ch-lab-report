Profile: ChLabReportComposition
Parent: CHCoreComposition
// Parent: CompositionLabReportEu
Id: ch-lab-report-composition
Title: "CH LAB-Report Composition: Laboratory Report"
Description: "This profile constrains the Composition resource for the purpose of laboratory test reports in Switzerland."
// * insert SetFmmandStatusRule ( 2, trial-use)
* . ^short = "Laboratory Report composition"
* . ^definition = "Laboratory Report composition.
\r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

// ╭──────── extensions ──────────────────────────────────────────────╮
// │  CDVersionNumber, InformationRecipient,                          │
// │  CompositionBasedOnOrderOrRequisition, DiagnosticReportReference │
// ╰──────────────────────────────────────────────────────────────────╯
* ^extension[$imposeProfile].valueCanonical = Canonical(CompositionLabReportEu)

// * extension contains CompositionBasedOnOrderOrRequisition named basedOn-order-or-requisition 0..*
// * extension[basedOn-order-or-requisition].valueReference only Reference(ServiceRequestLabEu)

* extension contains InformationRecipient named information-recipient 0..*
* extension[information-recipient].valueReference only Reference(ChLabPractitioner or Device or ChLabPatient or RelatedPerson or ChLabPractitionerRole or CHCoreOrganization)

* extension contains CompositionBasedOnOrderOrRequisition named basedOn-order-or-requisition 0..*
* extension[basedOn-order-or-requisition].valueReference only Reference(ChLabReportServiceRequest)

* extension contains DiagnosticReportReference named diagnosticReport-reference 0..1
* extension[diagnosticReport-reference].valueReference only Reference(ChLabDiagnosticReport)
* extension[diagnosticReport-reference].valueReference 1..1
* extension[diagnosticReport-reference].valueReference.reference 1..

// * category = $sct#4241000179101 // Laboratory report (record artifact)
* insert ReportCategoryRule

* subject only Reference(ChLabPatient)
* author only Reference(ChLabPractitionerRole or ChLabPractitioner or CHCoreOrganization)
* custodian only Reference(CHCoreOrganization)

  * ^comment = """Added to the FHIR R4 guide to strctly conform with the R4 rules for document bundle resources inclusion.
  Using this extension implies to accept a circular reference Composition to/from  DiagnosticReport"""

// * text ^short = "Narrative text"
* insert ReportIdentifierRule

// ╭──────── sections ───────────────╮
// │ Common rules for all sections   │
// ╰─────────────────────────────────╯
* section 1..
  * ^slicing.discriminator[+].type = #exists
  * ^slicing.discriminator[=].path = "$this.section"
  * ^slicing.discriminator[+].type = #exists
  * ^slicing.discriminator[=].path = "$this.entry"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
  * ^definition = """The \"body\" of the report is organized as a tree of up to two levels of sections: top level sections represent laboratory specialties. A top level section SHALL contain either one text block carrying all the text results produced for this specialty along with Laboratory Data Entries or a set of Laboratory Report Item Sections. In the first case the specialty section happens to also be a leaf section. In the latter case, each (second level) leaf section contained in the (top level) specialty section represents a Report Item: i.e., a battery, a specimen study (especially in microbiology), or an individual test. In addition, any leaf section SHALL contain a Laboratory Data Entries containing the observations of that section in a machine-readable format."""

* insert SectionCommonRules

// ╭────── sections ─────────╮
// │  single Section 0..1    │
// ╰─────────────────────────╯
* section contains lab-no-subsections ..* // check if ..1 or ..*
* section[lab-no-subsections]
  * ^short = "Variant 1: EU Laboratory Report section with entries and no sub-sections"
  * ^definition = """Variant 1: With this option, all laboratory report data entries are provided in the top level sections and no sub-sections are allowed."""
  * insert SectionElementsRules

// ╭────── sections ────────────────╮
// │  structured Sections  0 .. 1   │
// ╰────────────────────────────────╯
* section contains lab-subsections ..* // check if ..1 or ..*
* section[lab-subsections]
  * ^short = "Variant 2: EU Laboratory Report section with one to many subsections Laboratory Report Item"
  * ^definition = """Variant 2: With this option, this top level section doesn't include NEITHER a top level text NOR entry elements. Each Report Item is contained in a corresponding sub-sections which contains the Lab Report Data Entry."""
  // * code only $CodeableConcept-uv-ips
  * code from LabStudyTypesEuVs (preferred)
  * text 0..0
  * entry 0..0
  * insert SectionCommonRules
  * section 1..
    * insert SectionElementsRules
    * code from LabStudyTypesEuVs (preferred)

// ╭────── sections ────────────────╮
// │  Annotation section  0 .. 1    │
// ╰────────────────────────────────╯
* section contains annotations ..* // check if ..1 or ..*
* section[annotations]
  * ^short = "Annotation comment"
  * ^definition = """Narrative expression of comments accompanying the report, such as suggestions for evaluation, technical notes from the laboratory, etc.

Examples:
Suggestion: This result should be evaluated in relation to the patient's medical history and clinical condition.
Technical note: A list of accredited examination(s) is available at www.laboratory.com. """

  * code = http://loinc.org#48767-8
  * text 1..
  * entry 0..0
  * section 0..0