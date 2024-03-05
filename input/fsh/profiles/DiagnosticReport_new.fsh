// Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
// Alias: $extension-DiagnosticReport.composition = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition
// Alias: $Composition-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab
// Alias: $ServiceRequest-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
// Alias: $Patient-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab
Alias: $Patient-animal-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-animal-eu-lab
// Alias: $Specimen-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Specimen-eu-lab
// Alias: $Observation-resultslab-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab
// Alias: $lab-studyType-eu-lab = http://hl7.eu/fhir/laboratory/ValueSet/lab-studyType-eu-lab
// Alias: $lab-specialty-eu-lab = http://hl7.eu/fhir/laboratory/ValueSet/lab-specialty-eu-lab
// Alias: $lab-reportType-eu-lab = http://hl7.eu/fhir/laboratory/ValueSet/lab-reportType-eu-lab

Profile: ChLabDiagnosticReport
Parent: DiagnosticReport
Id: ch-lab-diagnosticreport
Title: "CH Lab DiagnosticReport: Laboratory Report"
Description: "This profile constrains the DiagnosticReport resource for the purpose of laboratory test reports in Switzerland."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^version = "0.2.0-ci"
* ^status = #draft
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* . ^short = "Laboratory Report DiagnosticReport"
* . ^definition = "Laboratory Report DiagnosticReport"
* extension contains $extension-DiagnosticReport.composition named DiagnosticReportCompositionR5 1..1
* extension[DiagnosticReportCompositionR5] ^short = "Associated Lab Report Composition"
* extension[DiagnosticReportCompositionR5] ^definition = "This extension implements the R5 composition element. It allow to link this DiagnosticReport with the Composition documenting this Laboratory Report."
* extension[DiagnosticReportCompositionR5].value[x] 1..
// * extension[DiagnosticReportCompositionR5].value[x] only Reference($Composition-eu-lab)
* extension[DiagnosticReportCompositionR5].value[x] only Reference(ChLabReportComposition)
* identifier ^short = "Report identifier"
* identifier ^definition = "Identifiers assigned to this Laboratory Report by the performer or other systems. It shall be common to several report versions"
* identifier ^comment = "Composition.identifier SHALL be equal to one of the DiagnosticReport.identifier, if at least one exists"
// * basedOn only Reference($ServiceRequest-eu-lab)
* basedOn only Reference(ChLabReportServiceRequest)
* status ^short = "Status of the Report"
* status ^comment = "DiagnosticReport.status and Composition.status shall be aligned, based on the http://hl7.eu/fhir/laboratory/ConceptMap/ConceptMap-eu-diagRptStatus2CompStatus mapping"
* category only $CodeableConcept-uv-ips
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "Report Category"
* category ^definition = "A code that classifies this laboratory report. Two basic categories has been selected in this guide: laboratory specialty and Study type. Laboratory specialty is characteristic of the laboratory that produced the test result while Study type is an arbitrary classificion of the test type."
* category ^comment = "DiagnosticReport.category and Composition.category shall be aligned"
* category contains
    studyType 0..* and
    specialty 0..*
* category[studyType] from LabStudyTypesEuVs (required)
* category[studyType] ^short = "The way of grouping of the test results into clinically meaningful domains (e.g. hematology study, microbiology study, etc.)"
* category[studyType] ^definition = "Laboratory services, i.e., results of tests performed, could be characterized using typology of services, commonly called study types. Study type could be seen as an attribute or grouping mechanism that assigns a common clinical sense to certain types of laboratory test results., e.g., Hemoglobin, Platelet count, etc. belongs to 'Hematology study'."
* category[studyType] ^comment = "In comparison to the laboratory specialty which is an attribute of laboratory, study type is a categorization of laboratory service. It needs to be mentioned that classification of test to study types in not standardized."
* category[specialty] from LabSpecialtyEuVs (required)
* category[specialty] ^short = "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"
* category[specialty] ^definition = "Laboratory specialty is an attribute of any laboratory setting representing professional qualification of the laboratory to execute certain kind of laboratory tests."
* category[specialty] ^comment = "Specialty could be used as parameter for searching/querying of laboratory test results."
* code only $CodeableConcept-uv-ips
* code from LabReportTypesEuVs (preferred)
* code ^short = "Type of (Laboratory) Report"
* code ^definition = "Specifies that it refers to a Laboratory Report"
* code ^comment = "At least one DiagnosticReport.code.coding and Composition.type.coding SHALL be equal"
* subject 1..
* subject only Reference(ChLabPatient or $Patient-animal-eu-lab or Group or Location or Device)
* subject ^short = "Who and/or what this report is about"
* subject ^definition = "Who or what this report is about. The report can be about a human patient, a living subject, a device (e.g. a machine), a location or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure)."
* subject ^comment = "DiagnosticReport and Composition SHALL have the same subject"
* encounter ^short = "The healthcare event which this Laboratory Report is about (when test ordered)."
* encounter ^definition = "The healthcare event (e.g. a patient and healthcare provider interaction) which this DiagnosticReport is about."
* encounter ^comment = "This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests).\n\n  DiagnosticReport and Composition SHALL have the same encounter."
* effective[x] ^short = "Clinically relevant time/time-period for report."
* performer ^short = "Responsible Diagnostic Service."
* performer ^comment = "If a DiagnosticReport.resultsInterpreter exists this is expected to be a Composition.author; otherwise a DiagnosticReport.performer should be an author."
* resultsInterpreter ^comment = "If a DiagnosticReport.resultsInterpreter exists this is expected to be a Composition.author; otherwise a DiagnosticReport.performer should be an author."
// * specimen only Reference($Specimen-eu-lab)
* specimen only Reference(ChLabSpecimen)
* specimen ^short = "Specimens this report is based on."
* result only Reference(ChLabObservationResultsLaboratory)
* result ^short = "results"
* imagingStudy ..0
* presentedForm ^short = "Entire report as issued (pdf recommended)"