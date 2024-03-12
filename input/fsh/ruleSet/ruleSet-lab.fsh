RuleSet: ReportIdentifierRule
* identifier /* obeys labRpt-id */
  * ^short = "Report identifier"
  * ^definition = "Identifiers assigned to this Laboratory Report by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier SHALL be equal to one of the DiagnosticReport.identifier, if at least one exists"

// ╭──────────────── Section rules ─────────────────────────────╮
// │  SectionCommonRules, SectionComRules, SectionElementsRules │
// │  NoSubSectionsRules, SectionEntrySliceComRules             │
// ╰────────────────────────────────────────────────────────────╯

RuleSet: SectionCommonRules
* section.title 1..
* section.code 1..

RuleSet: SectionComRules (short, def, code)
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* ^extension[0].valueString = "Section"
* ^short = "{short}"
* ^definition = "{def}"
* title 1..
* code 1..
* code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* code = {code} (exactly)
* text 1..
* text only Narrative
* emptyReason ..0
* emptyReason ^mustSupport = false

RuleSet: SectionElementsRules
* code from LabStudyTypesEuVs (preferred)
* text ^short = "Text summary of the section, for human interpretation."
* entry only Reference (ChLabObservationResultsLaboratory)
* entry 1..
* section ..0

RuleSet: NoSubSectionsRules
* section ..0
* section ^mustSupport = false

RuleSet: SectionEntrySliceComRules (short, def)
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resolve()"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^short = "{short}"
* entry ^definition = "{def}"

//--------------------------------------------

RuleSet: ReportCategoryRule
* category /* obeys labRpt-category */
  * ^short = "Report Category"
  * ^definition = "Specifies the Report Category: usually Laboratory"
  * ^comment = "DiagnosticReport.category and Composition.category shall be aligned"
* category only $CodeableConcept-uv-ips
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies this laboratory report."
* category contains studyType 0..*
* category[studyType] only $CodeableConcept-uv-ips
* category[studyType] from LabStudyTypesEuVs
* category[studyType] ^short = "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"
* category contains specialty 0..*
* category[specialty] only $CodeableConcept-uv-ips
* category[specialty] from LabSpecialtyEuVs
* category[specialty] ^short = "The way of grouping of the test results into clinically meaningful groups (e.g. liver test; minerals; glucose profiles)"

// ╭──────────────── FMM FHIR Maturity Levels ──────────────────────╮
// │  FMM 1..6  https://build.fhir.org/versions.html#maturity       │
// │  SetFmmandStatusRule, SetFmmandStatusRuleInstance              │
// │  standard status: informative, draft, trial-use, normative, ...│
// │  http://hl7.org/fhir/ValueSet/standards-status                 │
// ╰────────────────────────────────────────────────────────────────╯
