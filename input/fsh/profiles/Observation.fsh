Profile: ChLabObservationResultsLaboratory
Parent: Observation
Id: ch-lab-observation-results-laboratory
Title: "CH Lab Observation Results: Laboratory"
Description: "This profile constrains the Observation resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory"

* obeys ch-lab-obs1 and singleTest-or-panel-required

* subject only Reference(ChLabPatient)
* performer
* specimen only Reference(ChLabSpecimen)

// ╭───── nested observations ─────────╮
// │  has value[x]  or has hasMember   │
// ╰───────────────────────────────────╯

Invariant: singleTest-or-panel-required
Description: "must have a value or a hasMember element"
Expression: "value.exists() or hasMember.exists()"
Severity: #error