// ╭────────────── instance 4-sepsis ──────────────────────────╮
// │  Scenario Suspected sepsis: 4 samples for Blood culture,  │
// │  aerobic + anaerobic, Interval 30', Urine                 │
// │  Found: K. pneumoniae, E. coli, Strept. mitis             │
// ╰───────────────────────────────────────────────────────────╯
Instance: LabResultReport-5-sepsis
InstanceOf: ChLabReportDocument
Description: "Example of a Laboratory Report for suspected sepsis"
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"
* identifier.system = "http://example.org"
* identifier.value = "ba91c64b-f30c-4137-a484-34bbba5e8804"
* type = #document
* timestamp = "2023-03-09T14:30:00+01:00"

* entry[Composition].fullUrl = "urn:uuid:832c053d-e0a0-4467-9f85-4bde09b825af"
* entry[Composition].resource = Composition-5-sepsis

* entry[DiagnosticReport].fullUrl = "urn:uuid:1e56bbe9-ee25-45db-a887-987090f89810"
* entry[DiagnosticReport].resource = DiagnosticReport-5-sepsis

* entry[Patient].fullUrl = "urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b"
* entry[Patient].resource = KlebsiellaKeller

//================== gram stain ==========================0
* entry[Observation].fullUrl = "urn:uuid:09cebdc4-7ecd-4164-bdda-6a8207d1f2be"
* entry[Observation].resource = Observation-gram-stain

* entry[Observation].fullUrl = "urn:uuid:c0393c7c-bc8a-47d2-a1a9-d4e1f87c6449"
* entry[Observation].resource = Observation-wbc

* entry[Observation].fullUrl = "urn:uuid:4679fd4c-4ef3-4b91-b17c-8a97a25472fb"
* entry[Observation].resource = Observation-kPneumoniae

* entry[Observation].fullUrl = "urn:uuid:cd376843-9c66-4e63-b403-9299bd6c4fc2"
* entry[Observation].resource = Observation-kPneumoniae-quant


//================== susceptibility tests ==========================0
* entry[Observation].fullUrl = "urn:uuid:24f1a039-5146-4e51-8c07-dfd94bc7370d"
* entry[Observation].resource = Observation-eColi-susc-panel

* entry[Observation].fullUrl = "urn:uuid:9d3394c2-3b7b-4f88-9358-239adbeadba3"
* entry[Observation].resource = Observation-eColi-carbapenem-susc

* entry[Observation].fullUrl = "urn:uuid:4679fd4c-4ef3-4b91-b17c-8a97a25472fb"
* entry[Observation].resource = Observation-eColi-ciprofloxacin-susc

* entry[Observation].fullUrl = "urn:uuid:6a68a15a-5477-4d01-bfd6-fe7fa7cb97f8"
* entry[Observation].resource = Observation-eColi-vancomycin-susc

* entry[Observation].fullUrl = "urn:uuid:28a7f5b7-7ba4-4caf-ac43-80326dcf2cfb"
* entry[Observation].resource = Observation-eColi-vancomycin-susc

//=============== practitioner, organization =============================0

* entry[PractitionerRole][+].fullUrl = "urn:uuid:10b95d3c-5402-4631-a404-e0d7e74c9a8f"
* entry[PractitionerRole][=].resource = HansHauserKantonsspital

* entry[Practitioner][+].fullUrl = "urn:uuid:a7d5a837-288d-4234-923c-c9cb5b6f55a1"
* entry[Practitioner][=].resource = HansHauser

* entry[Organization][+].fullUrl = "urn:uuid:37e198ba-ebae-4438-bf8f-faa42eff82c6"
* entry[Organization][=].resource = Kantonsspital

/*
* entry[Practitioner][+].fullUrl = "urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052"
* entry[Practitioner][=].resource = EvaErlenmeyer

* entry[PractitionerRole][+].fullUrl = "urn:uuid:06929c8b-9fb9-43fe-b12c-439fd470be59"
* entry[PractitionerRole][=].resource = EvaErlenmeyerLaborPipette

* entry[Organization][+].fullUrl = "urn:uuid:152da916-a010-4047-b80a-900e2d55c676"
* entry[Organization][=].resource = LaborPipette
*/



// ╭────────────── Composition 5-sepsis ─────────────────────╮
// │ Scenario deep vein thrombosis: Microbiological results  │
// ╰─────────────────────────────────────────────────────────╯

Instance: Composition-5-sepsis
InstanceOf: ChLabReportComposition
Description: "Example of Composition in the scenario of deep vein thrombosis"
Usage: #inline
* id = "832c053d-e0a0-4467-9f85-4bde09b825af"

// ╭────────────── Extension ────────────────────────────────────╮
// │ provides a link to the order [(Reference(ServiceRequest)]   │
// │               or requisition [ServiceRequest.requisition]   │
// │ (i.e., 'Request.groupIdentifier')] that this report         │
// │                document is based on and fulfills            │
// ╰─────────────────────────────────────────────────────────────╯

// * extension[basedOn-order-or-requisition].valueReference only Reference(ServiceRequest-CBC-panel)
// * extension[0].url = "http://fhir.ch/ig/ch-lab-report/StructureDefinition/composition-basedOn-order-or-requisition"
// * extension[=].valueReference = Reference(ServiceRequest-CBC-panel)
// * extension[+].url = "http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition" // no dependent SR !!!
// * extension[=].valueReference = Reference(ServiceRequest-HGB)
// * extension[+].url = "http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition"
// * extension[=].valueReference = Reference(ServiceRequest-HT)
// * extension[+].url = "http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition"
// * extension[=].valueReference = Reference(ServiceRequest-CRP)
// * extension[+].url = "http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition"
// * extension[=].valueReference = Reference(ServiceRequest-D-Dimer)

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
// * type = $loinc#11502-2 "Laboratory report"
// * category = $sct#4241000179101 // Laboratory report (record artifact), but it is already in the profile !!
* subject = Reference(Patient/14fbf29b-5DAC-483e-b543-15031f12344b)
* date = "2023-03-09T14:30:00+01:00"
* author = Reference(Practitioner/12328339-f7d6-4bb6-80e4-89fd03ce5052)
* author.display = "Dr. Eva Erlenmeyer"
* title = "Laboratory Report - 10 March, 2023 14:30"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2020-12-27T14:30:00+01:00"
* attester.party = Reference(Practitioner/12328339-f7d6-4bb6-80e4-89fd03ce5052) // Who attested the report
* custodian = Reference(Organization/84483dc8-81d3-41cc-8d24-10c241279024)

// ╭────────────── Composition.sections ────────────────────────────────────────────────────╮
// │            sections contain all References of Observations                             │
// │               or requisition [ServiceRequest.requisition]                              │
// │ (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills  │
// ╰────────────────────────────────────────────────────────────────────────────────────────╯

* section[lab-subsections].title = "Bacterial Aerobic & Anaerobic Culture & Susceptibility"
* section[lab-subsections].code  = $loinc##18725-2 "Microbiology studies (set)"
* section[lab-subsections].code.text = "Mikrobiologische Untersuchungen:Komplex:-:^Patient:Set:"  // Language variants: de-DE

* section[lab-subsections].section[+].title = "Microscopic observation [Identifier] in Blood by Gram stain"
* section[lab-subsections].section[=].code  = $loinc#87969-2
* section[lab-subsections].section[=].entry = Reference(Observation-gram-stain)

* section[lab-subsections].section[0].title = "Microbiology studies (set)"
* section[lab-subsections].section[=].code  = $loinc#18725-2
* section[lab-subsections].section[=].entry = Reference(Observation-eColi-susc-panel)


// ╭──────────── DiagnosticReport 5-sepsis ──────────────────╮
// │ Scenario deep vein thrombosis: CBC-panel, CRP, D-Dimer  │
// ╰─────────────────────────────────────────────────────────╯
Instance: DiagnosticReport-5-sepsis
InstanceOf: ChLabDiagnosticReport
Description: "Example of DiagnosticReport for several lab results"
Usage: #inline
* id = "1e56bbe9-ee25-45db-a887-987090f89810"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* extension[DiagnosticReportCompositionR5].url = $diagnostic-report-composition-r5
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/832c053d-e0a0-4467-9f85-4bde09b825af)

* basedOn[0] = Reference(ServiceRequest-CBC-panel)
* basedOn[+] = Reference(ServiceRequest-CRP)
* basedOn[+] = Reference(ServiceRequest-D-Dimer)
* status = #final
// * code = $sct#4241000179101 "Laboratory report (record artifact)"  // in profile
// * category = $sct#4241000179101 // Laboratory report (record artifact), but it is already in the profile !!
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(EvaErlenmeyerLaborPipette)
* performer.display = "Dr. Eva Erlenmeyer"

// * specimen[0] = Reference(Blood)
// * specimen[+] = Reference(Blood-coag)
// * specimen[+] = Reference(Serum)

* result[0] = Reference(Observation-CBC-panel)  // no dependent observations!
// * result[+] = Reference(Observation-CRP)
// * result[+] = Reference(Observation-D-Dimer)


// ╭────── Patient 5-sepsis ────╮
// │ Scenario suspected sepsis │
// ╰───────────────────────────╯
Instance: KlebsiellaKeller
InstanceOf: CHCorePatient
Title: "Klebsiella Keller"
Description: "CH-Core-Patient, refers to 4-sepsis"
Usage: #inline
* id = "14fbf29b-5dac-483e-b543-15031f12344b"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: KlebsiellaKeller\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111114\n      </p><p><b>name</b>: Klebsiella Keller\n      </p><p><b>gender</b>: FEMALE\n      </p><p><b>birthDate</b>: Dec 12, 1975\n      </p><p><b>maritalStatus</b>: verheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '2' = '2', given as 'verheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Aarau"
* extension[=].valueAddress.country = "Schweiz"
// * extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
// * extension[=].valueAddress.city = "Lenzburg"
// * extension[=].valueAddress.state = "AG"
// * extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
// * extension[=].valueCodeableConcept = $religiousAffiliation#1025 "Jehovah's Witnesses"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111114"
* name.family = "Klebsiella"
* name.given = "Keller"
* telecom[0].system = #phone
* telecom[=].value = "+41 64 123 45 67"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "klebsiella.keller@example.ch"
* gender = #female
* birthDate = "1975-12-12"
* maritalStatus.coding[0] = $ech-11-maritalstatus#2 "verheiratet"
* maritalStatus.coding[+] = $v3-MaritalStatus#M "married"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

// ╭────── Observation 4-sepsis e. coli ──────────────────────╮
// │      Gram stain: wbc, kPneumoniae, eColi, strepMitis     │
// ╰──────────────────────────────────────────────────────────╯

Instance: Observation-gram-stain
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "09cebdc4-7ecd-4164-bdda-6a8207d1f2be"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Gram Stain"
* subject = Reference(Patient/14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(EvaErlenmeyer)
* performer[+].display = "Eva Erlenmeier"
* hasMember[+] = Reference(Observation/1097929f-890e-4e27-a31d-58599f3e2479) // Observation-wbc
* hasMember[+] = Reference(Observation/fcf220c3-7f3e-44f8-b669-48552a20fa0a) // Observation-kPneumoniae
//* hasMember[+] = Reference(Observation/331d513e-a57f-4464-9eec-25533aeb6d06) // Observation-eColi
//* hasMember[+] = Reference(Observation/331d513e-a57f-4464-9eec-25533aeb6d06) // Observation-strepMitis

Instance: Observation-wbc
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "c0393c7c-bc8a-47d2-a1a9-d4e1f87c6449"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#72163-9 "Leukocytes [Presence] in Specimen by Gram stain"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
* valueCodeableConcept = $sct#2667000 "Absent"
* valueCodeableConcept.text = "None observed"

Instance: Observation-kPneumoniae
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "4679fd4c-4ef3-4b91-b17c-8a97a25472fb"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
* valueCodeableConcept = $sct#87172008 "Gram-negative bacillus (organism)"
* hasMember[+] = Reference(Observation/2cecbd1e-4695-46dc-adf8-3ed3b95c0c1e) // Observation-kPneumoniae-quant

Instance: Observation-kPneumoniae-quant
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "cd376843-9c66-4e63-b403-9299bd6c4fc2"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Observed Quantity"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
* valueCodeableConcept = $sct#441614007 "Present + out of +++"
* valueCodeableConcept.text = "+"

// ╭────── Observation 4-sepsis e. coli ───────────────────────────────────╮
// │ Results: susceptibility Panel with 4 susceptibility observations      │
// ╰───────────────────────────────────────────────────────────────────────╯

Instance: Observation-eColi-susc-panel
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "24f1a039-5146-4e51-8c07-dfd94bc7370d"
* status = #final

* category[0] = $observation-category#laboratory
* category[+] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(Patient/14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(EvaErlenmeyer)
* performer[+].display = "Eva Erlenmeier"
* hasMember[+] = Reference(Observation/24f1a039-5146-4e51-8c07-dfd94bc7370d)
* hasMember[+] = Reference(Observation/9d3394c2-3b7b-4f88-9358-239adbeadba3)
* hasMember[+] = Reference(Observation/4679fd4c-4ef3-4b91-b17c-8a97a25472fb)
* hasMember[+] = Reference(Observation/6a68a15a-5477-4d01-bfd6-fe7fa7cb97f8)


Instance: Observation-eColi-carbapenem-susc
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "24f1a039-5146-4e51-8c07-dfd94bc7370d"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#88462-7 "Carbapenem [Susceptibility]"
* subject = Reference(Patient/14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(EvaErlenmeyer)
* performer[+].display = "Eva Erlenmeier"
* valueQuantity.value = 2
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: Observation-eColi-ciprofloxacin-susc
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "9d3394c2-3b7b-4f88-9358-239adbeadba3"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18906-8 "Ciprofloxacin [Susceptibility]"
* subject = Reference(Patient/14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(EvaErlenmeyer)
* performer[+].display = "Eva Erlenmeier"
* valueQuantity.value = 4
* valueQuantity.comparator = #>
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#R "Resistant"

Instance: Observation-eColi-neomycin-susc
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "4679fd4c-4ef3-4b91-b17c-8a97a25472fb"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18953-0 "Neomycin [Susceptibility]"
* subject = Reference(Patient/14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(EvaErlenmeyer)
* performer[+].display = "Eva Erlenmeier"
* valueQuantity.value = 0.5
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: Observation-eColi-vancomycin-susc
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "28a7f5b7-7ba4-4caf-ac43-80326dcf2cfb"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#19000-9 "Vancomycin [Susceptibility]"
* subject = Reference(Patient/14fbf29b-5dac-483e-b543-15031f12344b)
* performer = Reference(EvaErlenmeyer)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "Eva Erlenmeier"
* valueQuantity.value = 1
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"



// ╭────── PractitionerRole 4-sepsis ──────────────────────────────────────╮
// │    Hans Hauser Kantonsspital  │
// ╰───────────────────────────────────────────────────────────────────────╯
Instance: HansHauserKantonsspital
InstanceOf: CHCorePractitionerRole
Title: "Hans Hauser Kantonsspital"
Description: "PractitionerRole"
Usage: #inline
* practitioner = Reference(Practitioner/HansHauser)
* organization = Reference(Organization/Kantonsspital)

Instance: HansHauser
InstanceOf: CHCorePractitioner
Title: "Hans Hauser"
Description: "Practitioner, Senior Physician at Kantonsspital, refers to 4-sepsis"
Usage: #inline
* id = "a7d5a837-288d-4234-923c-c9cb5b6f55a1"
* identifier[0].system = "urn:oid:2.51.1.3"
* identifier[=].value = "7601000050700"
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[=].value = "A123313"
* name.use = #official
* name.family = "Hauser"
* name.given = "Hans"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "038 888 22 11"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "hans.hauser@gruppenpraxis.ch"
* telecom[=].use = #work

Instance: Kantonsspital
InstanceOf: CHCoreOrganization
Title: "Kantonsspital"
Description: "Example for Hospital"
Usage: #inline
* id = "37e198ba-ebae-4438-bf8f-faa42eff82c6"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000235503"
* name = "Kantonsspital Zug"
* telecom[0].system = #phone
* telecom[=].value = "+41 45 334 55 66"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@kantonsspital.zug.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.kanstonsspital.zug.ch"
* telecom[=].use = #work
* address.use = #work
* address.line[0] = "Seestrasse 14"
* address.line[+] = "Postfach 14"
* address.city = "Zug"
* address.postalCode = "8000"
* address.country = "Schweiz"

/*
Instance: EvaErlenmeyerLaborPipette
InstanceOf: ChLabPractitionerRole
Title: "Marc Mustermann at Arztpraxis"
Description: "PractitionerRole, refers to 1-tvt"
Usage: #inline
* id = "017e8e32-2f3b-4bef-baf1-92c7278a7048"
* practitioner = Reference(EvaErlenmeyer)
* organization = Reference(LaborPipette)
* code = urn:oid:2.16.840.1.113883.2.9.6.2.7#3212	 "Medical and Pathology Laboratory Technicians"

Instance: EvaErlenmeyer
InstanceOf: ChLabPractitioner
Title: "Eva Erlenmeyer"
Description: "Specialist for Laboratory Medicine, works in Labor Pipette"
Usage: #inline
* id = "12328339-f7d6-4bb6-80e4-89fd03ce5052"
* identifier[0].system = "urn:oid:2.51.1.3" // GLN
* identifier[=].value = "7601000050717"
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[=].value = "A123315"
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
* id = "152da916-a010-4047-b80a-900e2d55c676"
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
*/