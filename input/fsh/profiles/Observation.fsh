Profile: ChLabObservationResultsLaboratory
Parent: Observation
Id: ch-lab-observation-results-laboratory
Title: "CH Lab Observation Results: Laboratory"
Description: "This profile constrains the Observation resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Observation Results: Laboratory"

* obeys ch-lab-obs1

* subject only Reference(ChLabPatient)
* performer
* specimen only Reference(ChLabSpecimen)

// ╭────────────── instance 1-tvt ──────────────────────────────╮
// │  Scenario deep vein thrombosis: HbHt-panel, CRP, D-Dimer   |
// ╰────────────────────────────────────────────────────────────╯

Instance: 1-tvt-HbHt-Observation
InstanceOf: ChLabObservationResultsLaboratory
Title: "1-tvt HbHt-Observation"
Description: "Example for Hemoblobine and Hemotocrit panel Observation"
Usage: #example
* id = "1-tvt-hbht-observation"

// * meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab" // probably not needed
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#HM "Hematology"
* code = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.text = "Hemoglobin and Hematocrit panel (Bld)"
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
* hasMember = Reference(Hb-Observation)
* hasMember = Reference(Ht-Observation)
