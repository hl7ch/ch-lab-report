Instance: EvaErlenmeyerLaborPipette
InstanceOf: ChLabPractitionerRole
Title: "Eva Erlenmeyer at Labor Pipette"
Description: "PractitionerRole, refers to 1-tvt"
Usage: #inline
* id = "8472931c-fbd0-437b-9ed1-4f66472c78b5"
* practitioner = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* organization = Reference(urn:uuid:84483dc8-81d3-41cc-8d24-10c241279024)
* code = urn:oid:2.16.840.1.113883.2.9.6.2.7#3212	 "Medical and Pathology Laboratory Technicians"

Instance: EvaErlenmeyer
InstanceOf: ChLabPractitioner
Title: "Eva Erlenmeyer"
Description: "Specialist for Laboratory Medicine, works in Labor Pipette"
Usage: #inline
* id = "12328339-f7d6-4bb6-80e4-89fd03ce5052"
* identifier[GLN].system = "urn:oid:2.51.1.3" // GLN
* identifier[GLN].value = "7601000050717"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[ZSR].value = "Y274589"
* name.use = #official
* name.family = "Erlenmeyer"
* name.given = "Eva"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "033 444 55 66"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "eva.erlenmeyer@labor-pipette.ch"
* telecom[=].use = #work
* qualification.code = $v2-0360#MD "Doctor of Medicine"
* address.line = "Laborstrasse 23"
* address.city = "Olten"
* address.postalCode = "4600"
* address.country = "CH"

Instance: LaborPipette
InstanceOf: CHCoreOrganization
Title: "Labor Pipette"
Description: "Laboratory Organization executing Laboratory tests and sending Diagnostic Reports"
Usage: #inline
* id = "84483dc8-81d3-41cc-8d24-10c241279024"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000234407"
* name = "Labor Pipette"
* telecom.system = #phone
* telecom.value = "+41223345566"
* telecom.use = #work
* address.line = "Laborstrasse 23"
* address.city = "Olten"
* address.use = #work
* address.postalCode = "4600"
* address.country = "CH"
* contact.name.use = #official
* contact.name.text = "Dr. Eva Erlenmeyer"
* contact.name.family = "Erlenmeyer"
* contact.name.given = "Eva"
* contact.name.prefix = "Dr. med."
* contact.telecom.system = #phone
* contact.telecom.value = "+41334445566"
* contact.telecom.use = #work
* contact.telecom.system = #email
* contact.telecom.value = "eva.erlenmeyer@labor-pipette.ch"
* contact.address.line[0] = "Laborstrasse 23"
* contact.address.line[+] = "4. Stock"
* contact.address.city = "Olten"
* contact.address.postalCode = "4600"
* contact.address.country = "CH"
