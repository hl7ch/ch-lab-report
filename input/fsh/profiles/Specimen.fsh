Profile: ChLabReportSpecimen
Parent: Specimen
Title: "CH LAB-Report Specimen"
Id: ch-lab-report-specimen
Description: "This profile constrains the Specimen resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Specimen: Laboratory"
* ^extension[$imposeProfile].valueCanonical = Canonical(SpecimenEu)

* extension contains $specimen-feature-type-r5 named SpecimenFeatureTypeR5 0..*
* extension[SpecimenFeatureTypeR5].valueCodeableConcept

* subject only Reference ( ChLabPatient or PatientAnimalEu or Group  or Device or Substance or Location)

* type from LabSpecimenTypesEuVs (preferred)
* type 1..1

//=== COMMENTED UNTIL https://chat.fhir.org/#narrow/stream/215610-shorthand/topic/Issue.20with.20Specimen.2Ecollection.2Edevice.20R5.20extension IS NOT RESOLVED

/*
* collection.extension contains $specimen-collection-device-r5 named SpecimenCollectionDeviceR5 0..1
* collection.extension[SpecimenCollectionDeviceR5]
*/

* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)


* processing.additive only Reference(Substance or SpecimenAdditiveSubstance)
* container.type from LabSpecimenContainerEu (preferred)

// ----------------------------------------

Profile: SpecimenAdditiveSubstance
Parent: Substance
Id: specimen-additive-substance-eu-lab
Title: "Substance: Specimen Additive Substance"
Description: """This profile defines how to represent Specimen Additive Substances in HL7 FHIR for the purpose of this guide."""
* code from LabSpecimenAdditiveEu (preferred)