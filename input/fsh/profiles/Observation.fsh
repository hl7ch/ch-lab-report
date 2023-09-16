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

// ╭───── results of CBC ────────────────────────────╮
// │  WBC, RBC, HGB, HT, MCV, MCH, MCHC, Platelets   │
// ╰─────────────────────────────────────────────────╯

Profile: ChLabLeucocyteCount
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-wbc
Title: "CH Lab Observation Results: LeucocyteCount"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory leucocyte count in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory Leucocyte Count"

Profile: ChLabErythrocyteCount
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-rbc
Title: "CH Lab Observation Results: ErythrocyteCount"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory erythrocyte count in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory Erythrocyte Count"

Profile: ChLabHemoglobin
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-hb
Title: "CH Lab Observation Results: Hemoglobin"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory hemoglobin in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory Hemoglobin"

Profile: ChLabHematocrit
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-ht
Title: "CH Lab Observation Results: Hemotocrit"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory hemotocrit in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory Hematocrit"

Profile: ChLabMeanCorpuscularVolume
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-mcv
Title: "CH Lab Observation Results: MeanCorpuscularVolume"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory MCV in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory MCV"

Profile: ChLabMeanCorpuscularHemoglobin
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-mch
Title: "CH Lab Observation Results: Mean Corpuscular Hemoglobin"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory MCH in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory MCH"

Profile: ChLabMeanCorpuscularHemoglobinConcentration
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-mchc
Title: "CH Lab Observation Results: Mean Corpuscular Hemoglobin Concentration"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory MCHC in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory MCHC"

Profile: ChLabErythrocyteDistributionWidth
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-ery-dist-width
Title: "CH Lab Observation Results: Erythrocyte Distribution Width"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory Erythrocyte Distribution Width in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory Erythrocyte Distribution Width"


Profile: ChLabPlateletCount
Parent: ChLabObservationResultsLaboratory
Id: ch-lab-observation-results-platelets
Title: "CH Lab Observation Results: Platelet Count"
Description: "This profile constrains the ChLabObservationResultsLaboratory profile for the purpose of laboratory platelet count in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory Platelet Count"