Profile: ChLabPractitionerRole
Parent: CHCorePractitionerRole
Id: ch-lab-practitionerrole
Title: "CH Lab PractitionerRole"
Description: "This profile constrains the PractitionerRole resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab PractitionerRole"

* obeys ch-lab-pr1

* practitioner only Reference(ChLabPractitioner)
* organization only Reference(CHCoreOrganization)

Instance: MarcMustermannArztpraxis
InstanceOf: ChLabPractitionerRole
Title: "Marc Mustermann at Arztpraxis"
Description: "PractitionerRole, refers to 1-tvt"
Usage: #example
* practitioner = Reference(Practitioner/MarcMustermann)
* organization = Reference(Organization/Arztpraxis)
* code = urn:oid:2.16.840.1.113883.2.9.6.2.7#2211 "Generalist Medical Practitioners"

Instance: Arztpraxis
InstanceOf: CHCoreOrganization
Title: "Arztpraxis"
Description: "Practice, refers to 1-tvt, 2-pertussis and 3-gyn"
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000235503"
* name = "Arztpraxis Messen"
* telecom[0].system = #phone
* telecom[=].value = "+41555545566"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@arztpraxis.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.arztpraxis.ch"
* telecom[=].use = #work
* address.line = "Doktorgasse 2"
* address.city = "Messen"
* address.postalCode = "3254"
* address.country = "CH"

Instance: LaborPipette
InstanceOf: CHCoreOrganization
Title: "Labor Pipette"
Description: "Laboratory Organization, refers to all Storyboards"
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000234407"
* name = "Labor Pipette"
* telecom[0].system = #phone
* telecom[=].value = "+41223345566"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@labor-pipette.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.labor-pipette.ch"
* telecom[=].use = #work
* address.line = "Laborstrasse 23"
* address.city = "Olten"
* address.postalCode = "4600"
* address.country = "CH"