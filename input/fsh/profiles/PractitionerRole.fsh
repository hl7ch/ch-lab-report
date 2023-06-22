Profile: ChLabPractitionerRole
Parent: CHCorePractitionerRole
Id: ch-lab-practitionerrole
Title: "PractitionerRole (CH Lab)"
Description: "This profile constrains the PractitionerRole resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "PractitionerRole (CH Lab)"

* obeys ch-lab-pr1

* practitioner only Reference(ChLabPractitioner)
* organization only Reference($ChCoreOrganization)
