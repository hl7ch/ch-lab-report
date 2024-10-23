Profile: ChLabPractitioner
Parent: CHCorePractitioner
Id: ch-lab-practitioner
Title: "CH LAB Practitioner"
Description: "This profile constrains the Practitioner resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH LAB Practitioner"
* ^extension[$imposeProfile].valueCanonical = Canonical(PractitionerEu)
// * insert SetFmmandStatusRule ( 2, trial-use)
* identifier[GLN] 0..1
* name 1..
// * address 1..
// * address.postalCode 1..
// * address.city 1..
