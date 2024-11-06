Profile: ChLabSpecimen // Should be convenient in CH LAB-Order too
Parent: Specimen
Title: "CH LAB Specimen"
Id: ch-lab-specimen
Description: "This profile constrains the Specimen resource for the purpose of laboratory test reports in Switzerland."
* ^extension[$imposeProfile].valueCanonical = Canonical(SpecimenEu)

// * insert SetFmmandStatusRule ( 2, trial-use)
* . ^short = "Laboratory Specimen"
* . ^definition = "Laboratory specimen"

// * extension contains $specimen-feature-type-r5 named SpecimenFeatureTypeR5 0..*
// * extension[SpecimenFeatureTypeR5].valueCodeableConcept
* subject only Reference(ChLabPatient or PatientAnimalEu or Group  or Device or Substance or Location)

* type from LabSpecimenTypesEuVs (preferred)
* type 0..1 // use case where specimen cannot be typed, so min. cardinality is 0
  * ^comment = "If the specimen.type conveys information about the site the specimen has been collected from, then, if the bodySite is present it shall be coherent with the type."
* parent only Reference(ChLabSpecimen)
* request
  * ^short = "Why the specimen was collected."
  * ^comment = """If the specimen information are known when the order is created then the ServiceRequest.specimen should be used.
If the ServiceRequest can be updated when the specimen is collected then the ServiceRequest.specimen or the Specimen.request could be used.
Otherwise the relationship is recorded in the Specimen.request element"""

// ╭────────────── collection, container, processing  ───────────────────────╮
// │ Additives are no more element of container, but Reference to processing │
// ╰─────────────────────────────────────────────────────────────────────────╯
* collection
  * bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
    * ^comment = "If the specimen.type conveys information about the site the specimen has been collected from, then, if the bodySite if present it shall be coherent with the type"
  * extension contains BodyStructureReference named bodySite 0..1
  * extension[bodySite].valueReference only Reference(BodyStructureEuLab)
* processing.additive only Reference(Substance or ChLabSpecimenAdditiveSubstance)
* container
  * type from LabSpecimenContainerEu (preferred)
  * additive[x] 0..0
  * extension contains $specimen-container-device-r5 named device 0..1
  * extension[device].valueReference only Reference(Device)
// ----------------------------------------
Profile: ChLabSpecimenAdditiveSubstance
Parent: Substance
Id: ch-lab-specimen-additive-substance-eu-lab
Title: "CH LAB Additive Substance"
Description: """This profile defines how to represent Specimen Additive Substances in HL7 FHIR for the purpose of this guide."""
* code from LabSpecimenAdditiveEu (preferred)

Instance: EDTA
InstanceOf: ChLabSpecimenAdditiveSubstance
Usage: #example
Title: "Dipotassium EDTA (ethylenediaminetetraacetate)"
Description: "Specimen Additive Substance EDTA"
* identifier.system = "http://intranet.pipette.ch/identifiers/substances"
* identifier.value = "1234333"
* category = $substance-category#chemical "Chemical"
* code.coding.code = #1256100007
* code.coding.system = $sct
* code.coding.display = "Edetate dipotassium (substance)"