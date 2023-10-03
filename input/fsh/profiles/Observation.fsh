Profile: ChLabObservationResultsLaboratory
Parent: Observation
Id: ch-lab-observation-results-laboratory
Title: "CH Lab Observation Results: Laboratory"
Description: "This profile constrains the Observation resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory"

* obeys ch-lab-obs1

* extension contains $observation-instantiates-r5 named ObservationInstantiates 0..1  //1..1
* extension[ObservationInstantiates].valueReference 0..1  //1..1
* extension[ObservationInstantiates].valueReference only Reference(ObservationDefinition)

* subject only Reference(ChLabPatient)
* performer only Reference(ChLabPractitionerRole or ChLabPractitioner or CHCoreOrganization)
* specimen only Reference(ChLabSpecimen)

// ╭───── nested observations ─────────╮
// │  has value[x]  or has hasMember   │
// ╰───────────────────────────────────╯
