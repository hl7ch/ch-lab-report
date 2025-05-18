// ╭──── 4-sepsis Patient ────╮
// │      Katarina Keller     │
// ╰──────────────────────────╯
Instance: KatarinaKeller
InstanceOf: ChLabPatient
Title: "Katarina Keller"
Description: "CH-Core-Patient, refers to 4-sepsis"
Usage: #inline
* id = "14fbf29b-5dac-483e-b543-15031f12344b"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: KatarinaKeller\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111114\n      </p><p><b>name</b>: Katarina Keller\n      </p><p><b>gender</b>: FEMALE\n      </p><p><b>birthDate</b>: Dec 12, 1975\n      </p><p><b>maritalStatus</b>: verheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '2' = '2', given as 'verheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
// * extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
// * extension[=].valueAddress.city = "Aarau"
// * extension[=].valueAddress.country = "Schweiz"
// * extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
// * extension[=].valueAddress.city = "Lenzburg"
// * extension[=].valueAddress.state = "AG"
// * extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
// * extension[=].valueCodeableConcept = $religiousAffiliation#1025 "Jehovah's Witnesses"
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756011110123400113"
* name.family = "Keller"
* name.given = "Katarina"
* telecom[0].system = #phone
* telecom[=].value = "+41 64 123 45 67"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "katarina.keller@example.ch"
* gender = #female
* birthDate = "1975-12-12"
* maritalStatus.coding[0] = $ech-11-maritalstatus#2 "verheiratet"
* maritalStatus.coding[+] = $v3-MaritalStatus#M "married"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

Instance: HealthInsuranceCard
InstanceOf: CHCoreCoverage
Title: "Health Insurance Card"
Description: "Example for Insurance"
Usage: #inline
* id = "4f3d1a62-714d-4709-beca-313694eae916"
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "A123456780"
* status = #active
* type = $v3-ActCode#EHCPOL "extended healthcare"
* subscriber = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* beneficiary = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* period.end = "2012-03-17"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123456789"
