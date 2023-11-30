Profile: ChLabObservationResultsLaboratory
Parent: Observation
Id: ch-lab-observation-results-laboratory
Title: "CH Lab Observation Results: Laboratory"
Description: "This profile constrains the Observation resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory"

* obeys ch-lab-obs1

// ╭── extension ObservationInstantiatesR5 ──╮
// │  Instantiates ObservationDefinitionR5   │
// ╰─────────────────────────────────────────╯
* extension contains ObservationInstantiatesR5 named observation-instantiates-r5 0..1  //1..1
* extension[observation-instantiates-r5]
  * ^short = "instantiate observationDefinition r5"
  * ^definition = "This extension implements the R5 instantiates[x] element, to link the ch-lab-result to the observationDefinition r5"
  * valueReference 0..1  //1..1
// * valueReference only Reference(ObservationDefinition)

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies the general type of observation being made. In this profile, fixed to \"laboratory\"."
* category ^comment = "\"laboratory\" includes laboratory medicine and pathology"
* category contains laboratory 1..1
* category[laboratory] = $observation-category#laboratory
* category contains studyType 0..*
* category[studyType] from http://hl7.eu/fhir/laboratory/ValueSet/lab-studyType-eu-lab
* category contains specialty 0..*
* category[specialty] from http://hl7.eu/fhir/laboratory/ValueSet/lab-specialty-eu-lab

* subject only Reference(ChLabPatient)
* performer only Reference(ChLabPractitionerRole or ChLabPractitioner or CHCoreOrganization)
* specimen only Reference(ChLabReportSpecimen)
