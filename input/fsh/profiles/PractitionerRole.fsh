Profile: ChLabPractitionerRole
Parent: CHCorePractitionerRole
Id: ch-lab-practitionerrole
Title: "CH LAB PractitionerRole"
Description: "This profile constrains the PractitionerRole resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH LAB PractitionerRole"
* ^extension[$imposeProfile].valueCanonical = Canonical(PractitionerRoleEu)

* insert SetFmmandStatusRule ( 2, trial-use)
* practitioner only Reference(ChLabPractitioner)
* organization only Reference(CHCoreOrganization)

