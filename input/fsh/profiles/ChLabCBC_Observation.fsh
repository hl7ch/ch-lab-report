// hier comes the CPC Observation Profile
/*
Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $extension-Observation.triggeredBy = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy
Alias: $observation-certifiedRefMaterialCodeable = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-certifiedRefMaterialCodeable
Alias: $observation-certifiedRefMaterialIdentifer = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-certifiedRefMaterialIdentifer
Alias: $observation-deviceLabTestKit = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-deviceLabTestKit
Alias: $extension-Observation.value[x] = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value[x]
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-animal-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-animal-eu-lab
Alias: $Patient-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab
Alias: $PractitionerRole-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/PractitionerRole-eu-lab
Alias: $Practitioner-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Practitioner-eu-lab
Alias: $Organization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
Alias: $Range-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Range-uv-ips
Alias: $Ratio-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Ratio-eu-lab
Alias: $Quantity-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Quantity-eu-lab
Alias: $Specimen-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Specimen-eu-lab
Alias: $lab-studyType-eu-lab = http://hl7.eu/fhir/laboratory/ValueSet/lab-studyType-eu-lab
Alias: $lab-specialty-eu-lab = http://hl7.eu/fhir/laboratory/ValueSet/lab-specialty-eu-lab
Alias: $lab-obsCode-eu-lab = http://hl7.eu/fhir/laboratory/ValueSet/lab-obsCode-eu-lab
Alias: $results-coded-values-laboratory-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-coded-values-laboratory-uv-ips
Alias: $lab-technique-eu-lab = http://hl7.eu/fhir/laboratory/ValueSet/lab-technique-eu-lab
Alias: $results-laboratory-observations-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-laboratory-observations-uv-ips

Profile: ChLabCBC_Observation
Parent: ChLabObservationResultsLaboratory
Id: ChLabCBC-Observation
Title: "Observation Results: laboratory CBC Profile"
Description: """This profile constrains the Observation resource to represent results produced by automated CBC (count of Blod-Cells) for the  HL7 Swiss project.
This observation may represent the result of a simple laboratory test such as hematocrit or it may group the set of results produced by a multi-test study or panel such as a complete blood count, a dynamic function test, a urine specimen study. In the latter case, the observation carries the overall conclusion of the study and or a global interpretation by the producer of the study, in the comment element; and references the atomic results of the study as "has-member" child observations."""
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^version = "0.2.0-ci"
* ^status = #draft
* ^experimental = false
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^purpose = "This profile constrains the Observation resource to represent a laboratory in vitro diagnostic test or panel/study. In case of a panel/study, the results of the panel appear as sub-observations. In this case this top-level Observation acts as a grouper of all the observations belonging to the panel or study.  The top-level observation may carry a conclusion in the value element and or a global interpretation by the producer of the study, in the comment element."
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"

// * extension ^short = "Laboratory Test Kit"
// * extension ^definition = "The laboratory test kit used for this test."
// * extension contains
//     SupportingInfo named supportingInfo 0..* and
//     $extension-Observation.triggeredBy named triggeredBy-r5 0..* and
//     $observation-certifiedRefMaterialCodeable named certifiedRefMaterialCodeable 0..* and
//     $observation-certifiedRefMaterialIdentifer named certifiedRefMaterialIdentifer 0..* and
//     $observation-deviceLabTestKit named labTestKit 0..* and
//     $extension-Observation.value[x] named value-r5 0..1
// * extension[triggeredBy-r5].extension contains
//     observation 0..* and
//     type 0..*
// * extension[triggeredBy-r5].extension[observation] ^short = "Triggering observation."
// * extension[triggeredBy-r5].extension[type] ^short = "The type of trigger"
// * extension[value-r5] ^short = "only for result of type Attachment"
// * extension[value-r5].value[x] only Attachment
* status ^short = "Status of this observation (e.g. preliminary, final,...)"
// * category only $CodeableConcept-uv-ips
// * category ^slicing.discriminator.type = #pattern
// * category ^slicing.discriminator.path = "$this"
// * category ^slicing.rules = #open
// * category ^comment = "\"laboratory\" includes laboratory medicine and pathology"
// * category contains
//     laboratory 1..1 and
//     studyType 0..* and
//     specialty 0..*
// * category[laboratory] = $observation-category#laboratory
// * category[studyType] from $lab-studyType-eu-lab (required)
// * category[studyType] ^short = "The way of grouping of the test results into clinically meaningful domains (e.g. hematology study, microbiology study, etc.)"
// * category[specialty] from $lab-specialty-eu-lab (required)
// * category[specialty] ^short = "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"
* code only $CodeableConcept-uv-ips
* code from $lab-obsCode-eu-lab (preferred)
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".  In this profile this code represents either a simple laboratory test or a laboratory study with multiple child observations"
* code ^comment = "In the context of this Observation-laboratory-uv-ips profile, when the observation plays the role of a grouper of member sub-observations, the code represent the group (for instance a panel code). In case no code is available, at least a text shall be provided."
// * subject 1..
// * subject only Reference($Patient-animal-eu-lab or $Patient-eu-lab or Group or Device or Location)
// * subject.reference 1..
// * effective[x] 1..
// * effective[x] only dateTime or Period
// * effective[x].extension contains DataAbsentReason named data-absent-reason 0..1
// * effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
// * effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
// * issued ^short = "Date/Time this result was made available"
// * performer 1..
// * performer only Reference($PractitionerRole-eu-lab or $Practitioner-eu-lab or $Organization-uv-ips or CareTeam or $Patient-eu-lab or RelatedPerson)
// * performer.extension contains PerformerFunction named performerFunction 0..*
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #closed
* valueString 0..1
* valueString only string
* valueString ^sliceName = "valueString"
* valueRange 0..1
* valueRange only $Range-uv-ips
* valueRange ^sliceName = "valueRange"
* valueRatio 0..1
* valueRatio only $Ratio-eu-lab
* valueRatio ^sliceName = "valueRatio"
* valueTime 0..1
* valueTime only time
* valueTime ^sliceName = "valueTime"
* valueDateTime 0..1
* valueDateTime only dateTime
* valueDateTime ^sliceName = "valueDateTime"
* valuePeriod 0..1
* valuePeriod only Period
* valuePeriod ^sliceName = "valuePeriod"
* valueQuantity 0..1
* valueQuantity only $Quantity-eu-lab
* valueQuantity ^sliceName = "valueQuantity"
* valueCodeableConcept 0..1
* valueCodeableConcept only $CodeableConcept-uv-ips
* valueCodeableConcept from $results-coded-values-laboratory-uv-ips (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^binding.extension[0].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-snomed-ct-ips-free-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a blood group findings value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-presence-absence-snomed-ct-ips-free-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a presence and absence findings (qualifier values) value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-microorganism-snomed-ct-ips-free-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a microorganisms value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* dataAbsentReason ^short = "Provides a reason why the expected value is missing."
* interpretation only $CodeableConcept-uv-ips
* method only $CodeableConcept-uv-ips
* method from $lab-technique-eu-lab (preferred)
* method ^definition = "Laboratory technigue that has been used"
* method ^comment = "Laboratory technique (method of measurement) are integral parts of the test specification of some laboratory test coding systems (e.g. NPU), in LOINC hovewer measurement principle is not always present in the test definition. In some cases however knowledge of the used measurment techique is important for proper interpretation of the test result.\nThat's why it is important to explicitly include informaiton about measurement method is such cases."
* specimen only Reference($Specimen-eu-lab)
* specimen ^comment = "When the specimen is applicable and known it shall be documented"
* device ^short = "Measuring instrument"
* hasMember only Reference(ObservationResultsLaboratoryEu)
* hasMember ^definition = "A reference to another Observation profiled by Observation-results-laboratory-uv-ips. The target observation (for instance an individual test member of a panel) is considered as a sub-observation of the current one, which plays the role of a grouper."
* hasMember ^comment = "This element is used in the context of international patient summary when there is a need to group a collection of observations, because they belong to the same panel, or because they share a common interpretation comment, or a common media attachment (illustrative image or graph). In these cases, the current observation is the grouper, and its set of sub-observations are related observations using the type \"has-member\".  For a discussion on the ways Observations can be assembled in groups together see [Observation Grouping](http://hl7.org/fhir/observation.html#obsgrouping)."
* component ^short = "Laboratory result"
* component.extension contains $extension-Observation.value[x] named value-r5 0..1
* component.extension[value-r5] ^short = "only for result of type Attachment"
* component.extension[value-r5].value[x] only Attachment
* component.code only $CodeableConcept-uv-ips
* component.code from $results-laboratory-observations-uv-ips (preferred)
* component.value[x] ^slicing.discriminator.type = #type
* component.value[x] ^slicing.discriminator.path = "$this"
* component.value[x] ^slicing.rules = #closed
* component.valueString 0..1
* component.valueString only string
* component.valueString ^sliceName = "valueString"
* component.valueRange 0..1
* component.valueRange only $Range-uv-ips
* component.valueRange ^sliceName = "valueRange"
* component.valueRatio 0..1
* component.valueRatio only $Ratio-eu-lab
* component.valueRatio ^sliceName = "valueRatio"
* component.valueTime 0..1
* component.valueTime only time
* component.valueTime ^sliceName = "valueTime"
* component.valueDateTime 0..1
* component.valueDateTime only dateTime
* component.valueDateTime ^sliceName = "valueDateTime"
* component.valuePeriod 0..1
* component.valuePeriod only Period
* component.valuePeriod ^sliceName = "valuePeriod"
* component.valueQuantity 0..1
* component.valueQuantity only $Quantity-eu-lab
* component.valueQuantity ^sliceName = "valueQuantity"
* component.valueCodeableConcept 0..1
* component.valueCodeableConcept only $CodeableConcept-uv-ips
* component.valueCodeableConcept from $results-coded-values-laboratory-uv-ips (preferred)
* component.valueCodeableConcept ^sliceName = "valueCodeableConcept"
* component.valueCodeableConcept ^binding.extension[0].extension[0].url = "purpose"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* component.valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-snomed-ct-ips-free-set"
* component.valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a blood group findings value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* component.valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* component.valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* component.valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-presence-absence-snomed-ct-ips-free-set"
* component.valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a presence and absence findings (qualifier values) value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* component.valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* component.valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* component.valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-microorganism-snomed-ct-ips-free-set"
* component.valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a microorganisms value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* component.valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

Invariant: eu-lab-1
Description: "If observation status is other then \"registered\" or \"cancelled\", at least one of these Observation elements shall be provided:  \"value\", \"dataAbsentReason\", \"hasMember\" or \"component\""
* severity = #error
* expression = "(status in ('registered'|'cancelled')) or value.exists() or hasMember.exists() or component.exists() or dataAbsentReason.exists()"

Invariant: eu-lab-2
Description: "If observation has components and observation status is other then \"registered\" or \"cancelled\", at least one of these Observation.component elements shall be provided:  \"value\" or \"dataAbsentReason\""
* severity = #error
* expression = "component.exists() implies (status in ('registered'|'cancelled')) or component.value.exists() or component.dataAbsentReason.exists()"
*/