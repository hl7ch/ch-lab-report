// ╭────────────── instance 1-tvt ──────────────────────────────╮
// │  Scenario deep vein thrombosis: HbHt-panel, CRP, D-Dimer   │
// ╰────────────────────────────────────────────────────────────╯

// Instance: LabResultReport-1-tvt
// InstanceOf: ChLabDocument
// Description: "Example of a Laboratory Report for scenario deep vein thrombosis"
// Usage: #example
// * meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"
// * identifier.system = "http://example.org"
// * identifier.value = "ba91c64b-f30c-4137-a484-34bbba5e8804"
// * type = #document
// * timestamp = "2023-03-09T14:30:00+01:00"
// * entry[0].fullUrl = "urn:uuid:4028a0b8-37fc-4491-a8e7-0f28e6fc59b4"
// * entry[=].resource = Composition-1-tvt
// * entry[+].fullUrl = "urn:uuid:3a743273-237a-446a-a8da-9e7521cce614"
// * entry[=].resource = DiagnosticReport-1-tvt
// * entry[+].fullUrl = "urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5"
// * entry[=].resource = HansGuggindieluft
// * entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-ba5629b12e7f"
// * entry[=].resource = HbHt-Observation
// * entry[+].fullUrl = "urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5"
// * entry[=].resource = Inline-Instance-for-BundleLabResultReportPOC-3
// * entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-ba5629b12e7f"
// * entry[=].resource = Inline-Instance-for-BundleLabResultReportPOC-4

Instance: Composition-1-tvt
InstanceOf: ChLabComposition
Description: "Example of Composition in the scenario of deep vein thrombosis"
Usage: #example
// Usage: #inline
* id = "4028a0b8-37fc-4491-a8e7-0f28e6fc59b4"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
// * type = $loinc#11502-2 "Laboratory report"
* subject = Reference(HansGuggindieluft)
* date = "2023-03-09T14:30:00+01:00"
* author = Reference(EvaErlenmeyer)
* author.display = "Dr. Eva Erlenmeyer"
* title = "Laboratory Report - 10 March, 2023 14:30"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2020-12-27T14:30:00+01:00"
* attester.party = Reference(LaborPipette)
* custodian = Reference(LaborPipette)
* section.title = "Hemoglobin + Hematocrit panel lab result report"
* section.code = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* section.code.text = "Hemoglobin and Hematocrit panel (Bld)" // Display name
* section.entry = Reference(HbHt-Observation)

Instance: DiagnosticReport-1-tvt
InstanceOf: ChLabDiagnosticReport
Description: "Example of DiagnosticReport in the scenario of deep vein thrombosis"
// Usage: #inline
Usage: #example
* id = "3a743273-237a-446a-a8da-9e7521cce614"
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"
// * extension[DiagnosticReportCompositionR5].url = $diagnostic-report-composition-r5
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/4028a0b8-37fc-4491-a8e7-0f28e6fc59b4)
* status = #final
* category = $v2-0074#HM "Hematology"
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer.display = "Dr. Eva Erlenmeyer"
* result = Reference(HbHt-Observation)