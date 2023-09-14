/*
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type

Instance: LaborPipette
InstanceOf: CHCoreOrganization
Title: "Labor Pipette"
Description: "Organization executing Laboratory tests and sending Diagnostic Reports"
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000234407"
* name = "Labor Pipette"
* active = true
* type.coding[0] = $sct#261904005 "Laboratory (environment)"
* type.coding[+] = urn:oid:2.16.840.1.113883.2.4.15.1060#V6 "University Medical Hospital"
* type.coding[+] = $organization-type#prov "Healthcare Provider"
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
* contact.telecom.use = # work
* contact.address.line[0] = "Laborstrasse 23"
* contact.address.line[+] = "4. Stock"
* contact.address.city = "Olten"
* contact.address.postalCode = "4600"
* contact.address.country = "CH"
*/