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
* extension contains $observation-instantiates-r5 named ObservationInstantiatesR5 0..1  //1..1
* extension[ObservationInstantiatesR5]
  * ^short = "instantiate observationDefinition r5"
  * ^definition = "This extension implements the R5 instantiates[x] element, to link the ch-lab-result to the observationDefinition r5"
  * valueReference 0..1  //1..1
  * valueReference only Reference(ObservationDefinition)

* subject only Reference(ChLabPatient)
* performer only Reference(ChLabPractitionerRole or ChLabPractitioner or CHCoreOrganization)
* specimen only Reference(ChLabSpecimen)
