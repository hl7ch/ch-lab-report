Profile: ChLabObservationResultsLaboratory
Parent: Observation
Id: ch-lab-observation-results-laboratory
Title: "CH Lab Observation Results: Laboratory"
Description: "This profile constrains the Observation resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory"

* obeys ch-lab-obs1

* subject only Reference(ChLabPatient)
* performer only Reference(ChLabPractitionerRole)
