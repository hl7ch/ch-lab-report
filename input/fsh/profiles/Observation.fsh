Profile: ChLabObservationResultsLaboratory
Parent: Observation
Id: ch-lab-observation-results-laboratory
Title: "CH Lab Observation Results: Laboratory"
Description: "This profile constrains the Observation resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory"

* obeys ch-lab-obs1

* subject only Reference(ChLabPatient)
* performer only Reference(ChLabPractitionerRole or ChLabPractitioner or CHCoreOrganization)
* specimen only Reference(ChLabSpecimen)

// ╭───── nested observations ─────────╮
// │  has value[x]  or has hasMember   │
// ╰───────────────────────────────────╯

Profile: ChLabErythrocyteCount
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-ery
Title: "CH Lab Observation Results: ErythrocyteCount"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory erythrocyte count in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory Erythrocyte Count"

Profile: ChLabLeucocyteCount
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-leuc
Title: "CH Lab Observation Results: LeucocyteCount"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory leucocyte count in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory Leucocyte Count"
