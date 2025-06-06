Instance: HansGuggindieluft
InstanceOf: ChLabPatient
Title: "Hans Guggindieluft"
Description: "CH-Core-Patient, refers to 1-tvt"
Usage: #inline
* id = "6b8a0365-5022-403b-a5a5-8d8680d701ef"
* meta.id = "meta-12345"
* meta.lastUpdated = "2023-08-18T01:43:30Z"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: HansGuggindieluft\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111111\n      </p><p><b>name</b>: Hans Guggindieluft \n      </p><p><b>gender</b>: MALE\n      </p><p><b>birthDate</b>: Jan 01, 1981\n      </p><p><b>maritalStatus</b>: unverheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '5' = '5', given as 'unverheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
// * meta.profile = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient"
// * extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
// * extension[=].valueAddress.city = "Paris"
// * extension[=].valueAddress.country = "Schweiz"
// * extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
// * extension[=].valueAddress.city = "Glarus"
// * extension[=].valueAddress.country = "Schweiz"
// * extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
// * extension[=].valueAddress.city = "Breitenbach"
// * extension[=].valueAddress.state = "BL"
// * extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
// * extension[=].valueCodeableConcept = $religiousAffiliation#1007 "Atheism"
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756011110123400112"
* name.text = "Hans Guggindieluft"
* name.family = "Guggindieluft"
* name.given = "Hans"
* telecom[0].system = #phone
* telecom[=].value = "079 979 79 79"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "hans.guggindieluft@example.ch"
* gender = #male
* birthDate = "1981-01-01"
* maritalStatus.coding[0] = $ech-11-maritalstatus#5 "unverheiratet"
* maritalStatus.coding[+] = $v3-MaritalStatus#U "unmarried"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true
* generalPractitioner = Reference(urn:uuid:e23d6fa1-88bc-497c-a4df-eb3fa60eaa37) "Dr. med. Marc Mustermann"