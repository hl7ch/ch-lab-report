Profile: ChLabPractitionerRole
Parent: CHCorePractitionerRole
Id: ch-lab-practitionerrole
Title: "CH Lab PractitionerRole"
Description: "This profile constrains the PractitionerRole resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab PractitionerRole"

* obeys ch-lab-pr1

* practitioner only Reference(ChLabPractitioner)
* organization only Reference(CHCoreOrganization)
