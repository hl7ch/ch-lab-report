Profile: ChLabPatient
Parent: CHCorePatient
Id: ch-lab-patient
Title: "CH LAB-Report Patient"
Description: "This profile constrains the Patient resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH LAB Patient"
* ^extension[$imposeProfile].valueCanonical = Canonical(CHCorePatient)

/*
Instance: FranzMuster
InstanceOf: ChLabPatient
Title: "CH LAB-Report Patient"
Description: ""
Usage: #example
* meta.profile = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Paris"
* extension[=].valueAddress.country = "Frankreich"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Köniz"
* extension[=].valueAddress.state = "BE"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $v3-ReligiousAffiliation#1077 "Protestant"
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756011110123400114"
* name.family = "Muster"
* name.given = "Franz"
* gender = #male
* birthDate = "1995-01-27"
* maritalStatus = $ech-11-maritalstatus#6 "in eingetragener Partnerschaft"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true
*/