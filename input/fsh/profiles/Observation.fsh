Profile: ChLabObservationResultsLaboratory
Parent: Observation
Id: ch-lab-observation-results-laboratory
Title: "Observation Results: Laboratory (CH Lab)"
Description: "This profile constrains the Observation resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "Observation Results: Laboratory (CH Lab)"

* obeys ch-lab-obs1

* subject only Reference(ChLabPatient)
* performer only Reference(ChLabPractitionerRole)
