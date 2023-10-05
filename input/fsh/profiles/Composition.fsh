Profile: ChLabReportComposition
Parent: CHCoreComposition
Id: ch-lab-composition
Title: "CH Lab Composition: Laboratory Report"
Description: "This profile constrains the Composition resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Composition: Laboratory Report"

* obeys ch-lab-comp1
* category = $sct#4241000179101 // Laboratory report (record artifact)
* type = $loinc#11502-2

* subject only Reference(ChLabPatient)
* author only Reference(ChLabPractitionerRole or ChLabPractitioner or CHCoreOrganization)
* custodian only Reference(CHCoreOrganization)

// ╭──────── extension ──────────╮
// │  basedOnOrderOrRequisition  │
// ╰─────────────────────────────╯
* extension contains CompositionBasedOnOrderOrRequisition named based-on-order-or-requisition-r5 0..*
* extension[based-on-order-or-requisition-r5].valueReference only Reference(ChLabServiceRequestLaboratoryOrder)
