Profile: ChLabObservationResultsLaboratory
Parent: Observation
Id: ch-lab-observation-results-laboratory
Title: "CH Lab Observation Results: Laboratory"
Description: "This profile constrains the Observation resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory"

* ^extension[$imposeProfile].valueCanonical = Canonical(ObservationResultsLaboratoryEu)

// ╭── extension ObservationInstantiatesR5 ──╮
// │  Instantiates ObservationDefinitionR5   │
// ╰─────────────────────────────────────────╯
* extension contains ObservationInstantiatesR5 named observation-instantiates-r5 0..1  //1..1
* extension[observation-instantiates-r5]
  * ^short = "instantiate observationDefinition r5"
  * ^definition = "This extension implements the R5 instantiates[x] element, to link the ch-lab-result to the observationDefinition r5"
  * valueReference 0..1  //1..1
// * valueReference only Reference(ObservationDefinition)

// * extension contains $observation-analysis-time named analysis-time 0..1
* extension contains $workflow-supportingInfo named supportingInfo 0..*

* extension contains $observation-triggeredBy-r5 named triggeredBy-r5 0..*
* extension[triggeredBy-r5].extension[observation] ^short = "Triggering observation."
* extension[triggeredBy-r5].extension[type] ^short = "The type of trigger" // from http://hl7.org/fhir/ValueSet/observation-triggeredbytype

* extension contains ObservationCertifiedRefMaterialCodeable named certifiedRefMaterialCodeable 0..*
* extension contains ObservationCertifiedRefMaterialIdentifer named certifiedRefMaterialIdentifer 0..*

* extension contains DeviceLabTestKit named labTestKit 0..*
* extension[labTestKit].valueReference 
  * ^short = "Laboratory Test Kit"
  * ^definition = """The laboratory test kit used for this test."""


* category only $CodeableConcept-uv-ips
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies the general type of observation being made. In this profile, fixed to \"laboratory\"."
* category ^comment = "\"laboratory\" includes laboratory medicine and pathology"
* category contains laboratory 1..1
* category[laboratory] = $observation-category#laboratory
* category contains studyType 0..*
* category[studyType] only $CodeableConcept-uv-ips
* category[studyType] from LabStudyTypesEuVs
* category[studyType] ^short = "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"
* category contains specialty 0..*
* category[specialty] only $CodeableConcept-uv-ips
* category[specialty] from LabSpecialtyEuVs
* category[specialty] ^short = "The way of grouping of the test results into clinically meaningful groups (e.g. liver test; minerals; glucose profiles)"

* code
//* code from $results-laboratory-observations-uv-ips (preferred)
* code from LaboratoryResultStandardEuVs (preferred)  // new binding to EU test codes VS
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".  In this profile this code represents either a simple laboratory test or a laboratory study with multiple child observations"
* code ^comment = "In the context of this Observation-laboratory-uv-ips profile, when the observation plays the role of a grouper of member sub-observations, the code represent the group (for instance a panel code). In case no code is available, at least a text shall be provided."
* performer 1..
//* performer only Reference(PractitionerRoleEu or PractitionerEu or OrganizationUvIps or CareTeam or PatientEuLab or RelatedPerson)
* performer only Reference(ChLabPractitionerRole or ChLabPractitioner or ChLabOrganization)
// * performer.extension contains $event-performerFunction named performerFunction 0..*
// * performer.extension[performerFunction] = $v3-ParticipationType#RESP

* dataAbsentReason ^short = "Provides a reason why the expected value is missing."
// * insert ObservationResultsValueEu
* interpretation only $CodeableConcept-uv-ips
* method ^definition = "Laboratory technigue that has been used"
* method ^comment = "Laboratory technique (method of measurement) are integral parts of the test specification of some laboratory test coding systems (e.g. NPU), in LOINC hovewer measurement principle is not always present in the test definition. In some cases however knowledge of the used measurment techique is important for proper interpretation of the test result.
That's why it is important to explicitly include informaiton about measurement method is such cases."
* method only $CodeableConcept-uv-ips
* method from LabTechniqueEuVs (preferred) // added binding to an agreed eu lab measurement method value set
* specimen only Reference(SpecimenEu)
  * ^comment = "When the specimen is applicable and known it shall be documented"
// * hasMember only Reference(ObservationResultsLaboratoryEu or ObservationResultsEu)
* device ^short = "Measuring instrument"
* hasMember only Reference(ObservationResultsLaboratoryEu)
* hasMember ^definition = "A reference to another Observation profiled by Observation-results-laboratory-uv-ips. The target observation (for instance an individual test member of a panel) is considered as a sub-observation of the current one, which plays the role of a grouper."
* hasMember ^comment = "This element is used in the context of international patient summary when there is a need to group a collection of observations, because they belong to the same panel, or because they share a common interpretation comment, or a common media attachment (illustrative image or graph). In these cases, the current observation is the grouper, and its set of sub-observations are related observations using the type \"has-member\".  For a discussion on the ways Observations can be assembled in groups together see [Observation Grouping](http://hl7.org/fhir/observation.html#obsgrouping)."
* issued ^short = "Date/Time this result was made available"

* subject only Reference(ChLabPatient)
* specimen only Reference(ChLabSpecimen)
