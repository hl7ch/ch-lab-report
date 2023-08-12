Profile: ChLabComposition
Parent: CHCoreComposition
Id: ch-lab-composition
Title: "CH Lab Composition: Laboratory Report"
Description: "This profile constrains the Composition resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Composition: Laboratory Report"

* obeys ch-lab-comp1

* type = $sct#4241000179101 "Laboratory report (record artifact)"

* subject only Reference(ChLabPatient)

// ╭────────────── instance 1-tvt ──────────────────────────────╮
// │  Scenario deep vein thrombosis: HbHt-panel, CRP, D-Dimer   |
// ╰────────────────────────────────────────────────────────────╯

Instance: Composition-1-tvt
InstanceOf: ChLabComposition
Description: "Example of Composition in the scenario of deep vein thrombosis"
Usage: #example
// Usage: #inline
* id = "4028a0b8-37fc-4491-a8e7-0f28e6fc59b4"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
// * type = $loinc#11502-2 "Laboratory report"
* subject = Reference(HansGuggindieluft)
* date = "2023-03-09T14:30:00+01:00"
* author = Reference(EvaErlenmeyer)
* author.display = "Dr. Eva Erlenmeyer"
* title = "Laboratory Report - 10 March, 2023 14:30"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2020-12-27T14:30:00+01:00"
* attester.party = Reference(LaborPipette)
* custodian = Reference(LaborPipette)
* section.title = "Hemoglobin + Hematocrit panel lab result report"
* section.code = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* section.code.text = "Hemoglobin and Hematocrit panel (Bld)" // Display name
* section.entry = Reference(HbHt-Observation)
