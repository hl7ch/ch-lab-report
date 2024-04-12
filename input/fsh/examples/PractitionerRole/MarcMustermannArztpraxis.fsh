Instance: MarcMustermannArztpraxis
InstanceOf: ChLabPractitionerRole
Title: "Marc Mustermann at Arztpraxis"
Description: "PractitionerRole, refers to 1-tvt"
Usage: #inline
* id = "017e8e32-2f3b-4bef-baf1-92c7278a7048"
* practitioner = Reference(urn:uuid:e23d6fa1-88bc-497c-a4df-eb3fa60eaa37) "Dr. med. Marc Mustermann"
* organization = Reference(urn:uuid:32c4c990-cedb-4999-998d-bab1d55db49f)
* code = urn:oid:2.16.840.1.113883.2.9.6.2.7#2211 "Generalist Medical Practitioners"

Instance: MarcMustermann
InstanceOf: ChLabPractitioner
Title: "Marc Mustermann"
Description: "Practitioner, works in Arztpraxis, refers to 1-tvt"
Usage: #inline
* id = "e23d6fa1-88bc-497c-a4df-eb3fa60eaa37"
* identifier[0].system = "urn:oid:2.51.1.3"
* identifier[=].value = "7601000050700"
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[=].value = "A123309"
* name.use = #official
* name.family = "Mustermann"
* name.given = "Marc"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "033 333 22 11"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "marc.mustermann@gruppenpraxis.ch"
* telecom[=].use = #work
* address.line = "Doktorgasse 2"
* address.city = "Messen"
* address.postalCode = "3254"
* address.country = "CH"
* qualification.code = $v2-0360#MD "Doctor of Medicine"

Instance: Arztpraxis
InstanceOf: CHCoreOrganization
Title: "Arztpraxis"
Description: "Practice, refers to 1-tvt, 2-electrophoresis, Observation_eGFK_CKD_EPI and Observation_eGFK_MDRD"
Usage: #inline
* id = "32c4c990-cedb-4999-998d-bab1d55db49f"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000235503"
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