Instance: LabResultReport-3-breath-test
InstanceOf: ChLabReportDocument
Description: "Example of a laboratory report containing scalar results in chronological order"
Usage: #example
* meta.lastUpdated = "2024-03-13T01:43:30Z"
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"
* identifier.system = "http://example.org"
* identifier.value = "b611e310-0a3a-44a9-8897-1bed3443394d"
* type = #document
* timestamp = "2024-03-13T01:43:30Z"

// ╭────────────── example 3-breath-test ──────────────────╮
// │  Scenario 3-Carbohydrate malabsorption of Lactose     │
// ╰───────────────────────────────────────────────────────╯

* entry[Composition].fullUrl = "urn:uuid:1c437141-1784-4c8f-8f69-6deaea948a4d"
* entry[Composition].resource = Composition-3-breath-test
* entry[DiagnosticReport].fullUrl = "urn:uuid:aa659dd8-28be-4c7e-ab27-286c5beff53c"
* entry[DiagnosticReport].resource = DiagnosticReport-3-breath-test

//================== Patient ===================================0
* entry[Patient].fullUrl = "urn:uuid:9b3d24a2-9d79-4d3a-b3e2-7dd8fdde5eff"
* entry[Patient].resource = EmilEmmenegger

//============== Observations Breath Test ==================0
* entry[Observation][+].fullUrl = "urn:uuid:f36365f1-4b7e-4458-99af-d950b8608ea7"
* entry[Observation][=].resource = Observation-3-breath-test

//================== Specimen ================================0
* entry[Specimen][+].fullUrl = "urn:uuid:85c72094-e3e8-4d3a-8a18-c2812310fd10"
* entry[Specimen][=].resource = Gas-3-breath-test

//=============== practitioner, organization =============================0
* entry[PractitionerRole][+].fullUrl = "urn:uuid:3771d254-cee2-498e-a448-c5660ccd583d"   // entry[30]
* entry[PractitionerRole][=].resource = TheoTillmannGruppenpraxis

* entry[Practitioner][+].fullUrl = "urn:uuid:d55425b0-406c-4dde-9ea8-6b0dffbd75ab"
* entry[Practitioner][=].resource = TheoTillmann

* entry[Organization][+].fullUrl = "urn:uuid:8816b3f6-376f-4e2d-b83f-53e69e2b7ffb"
* entry[Organization][=].resource = Gruppenpraxis

* entry[Practitioner][+].fullUrl = "urn:uuid:49f8e829-1242-47a9-b958-32be38d09e5b"
* entry[Practitioner][=].resource = KatrinKlauser

* entry[PractitionerRole][+].fullUrl = "urn:uuid:525e02f3-cac3-4cdc-a497-ce6e441b8a80"
* entry[PractitionerRole][=].resource = KatrinKlauserLaborSchildknecht

* entry[Organization][+].fullUrl = "urn:uuid:8030393e-d1c2-409f-841b-0c3af4e68494"
* entry[Organization][=].resource = LaborSchildknecht

Instance: Composition-3-breath-test
InstanceOf: ChLabReportComposition
Description: "Example of Composition in the scenario protein electrophoresis"
Usage: #inline
* id = "1c437141-1784-4c8f-8f69-6deaea948a4d"

// ╭────────────── Extension ────────────────────────────────────╮
// │ provides a link to the order [(Reference(ServiceRequest)]   │
// │               or requisition [ServiceRequest.requisition]   │
// │ (i.e., 'Request.groupIdentifier')] that this report         │
// │                document is based on and fulfills            │
// ╰─────────────────────────────────────────────────────────────╯
* extension[versionNumber].valueString = "V1" // 0
* extension[information-recipient][+].valueReference = Reference(urn:uuid:3771d254-cee2-498e-a448-c5660ccd583d) "TheoTillmannGruppenpraxis"  //  1

// Composition Identifier must be same as in DiagnosticReport
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:075e3f2d-7ed8-4b6e-a3bb-9b784f5006c0"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Case study 1</div><div>      <h3>Electrophoresis</h3>      <p>A patient, Emil Emmenegger, presents to Dr. med. Theo Tillmann at the Olten group practice on 09.03.2016. He complains of coughing, shortness of breath and shows an enlarged liver; look for Alpha-1-antitrypsin deficiency</p>  </div></div>"

* status = #final
* type = $loinc#11502-2 "Laboratory report" // must be the same as in DiagnosticReport.code

// Composition Subject must be same as in DiagnosticReport
* subject = Reference(urn:uuid:9b3d24a2-9d79-4d3a-b3e2-7dd8fdde5eff) "Emil Emmenegger"
* date = "2024-03-13T01:43:30Z"
* author = Reference(urn:uuid:49f8e829-1242-47a9-b958-32be38d09e5b)
* author.display = "Dr. Katrin Klauser"
* title = "Laboratory Report - 10 Theoh, 2023 14:30"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2024-03-13T01:43:30Z"
* attester.party = Reference(urn:uuid:49f8e829-1242-47a9-b958-32be38d09e5b) "Katrin Klauser" // Who attested the report
* custodian = Reference(urn:uuid:8030393e-d1c2-409f-841b-0c3af4e68494) "Labor Schildknecht"

// ╭────────────── Composition.sections ─────────────────╮
// │ sections contain all References of Observations     │
// │ or requisition [ServiceRequest.requisition]         │
// │ (i.e., 'Request.groupIdentifier')]                  │
// │ that this report document is based on and fulfills  │
// ╰─────────────────────────────────────────────────────╯

* section[lab-subsections].title = "Laboratory examinations"
* section[lab-subsections].code  = $loinc#26436-6 "Laboratory studies (set)"
* section[lab-subsections].code.text = "Laboratory studies"

* section[lab-subsections].section[0].title = "Chemistry studies (set)"
* section[lab-subsections].section[=].code  = $loinc#18719-5
* section[lab-subsections].section[=].entry = Reference(urn:uuid:f36365f1-4b7e-4458-99af-d950b8608ea7) "Observation-3-breath-test"

// ╭────── DiagnosticReport 3-breath-test Panel ─────────╮
// │ basedOnSR, code, result Ref, presentedForm PDF      │
// ╰─────────────────────────────────────────────────────╯
Instance: DiagnosticReport-3-breath-test
InstanceOf: ChLabDiagnosticReport
Description: "Example of DiagnosticReport for several lab results"
Usage: #inline
* id = "aa659dd8-28be-4c7e-ab27-286c5beff53c"
* extension[DiagnosticReportCompositionR5].url = $extension-DiagnosticReport.composition
* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:1c437141-1784-4c8f-8f69-6deaea948a4d)

// must be same identifier as in Composition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:075e3f2d-7ed8-4b6e-a3bb-9b784f5006c0"

// * basedOn[0] = Reference(urn:uuid:40eaa087-a49e-444c-9dbd-d3bdef9efcad) "ServiceRequest-3-breath-test"

* status = #final
// * category[studyType] = $loinc#26436-6 "Laboratory studies (set)"
// * category[specialty] = $sct#394915009 "General pathology"
* code = $loinc#11502-2 "Laboratory report"

* subject = Reference(urn:uuid:9b3d24a2-9d79-4d3a-b3e2-7dd8fdde5eff) "Emil Emmenegger"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:525e02f3-cac3-4cdc-a497-ce6e441b8a80)
* performer.display = "Dr. Katrin Klauser"
* specimen = Reference(urn:uuid:85c72094-e3e8-4d3a-8a18-c2812310fd10) "Gas-3-breath-test"
* result = Reference(urn:uuid:f36365f1-4b7e-4458-99af-d950b8608ea7) "Observation-3-breath-test"
// * media.link = Reference(urn:uuid:19ca50e3-fef9-494c-856c-881a59c7bfed)
// * media.comment = "Serum-Elektrophorese Protein"
* presentedForm.contentType = #application/pdf
* presentedForm.title = "H2 CH4 Atemtest"
// * presentedForm.data = ""

// ╭──────── Patient 3-breath-test ─────────────────────╮
// │ Scenario 3-Carbohydrate malabsorption of Lactose   │
// ╰────────────────────────────────────────────────────╯
Instance: EmilEmmenegger
InstanceOf: ChLabPatient
Title: "Emil Emmenegger, Patient"
Description: "CH-Core-Patient, refers to 3-breath-test"
Usage: #inline
* id = "9b3d24a2-9d79-4d3a-b3e2-7dd8fdde5eff"
* meta.id = "meta-12345"
* meta.lastUpdated = "2024-03-13T01:43:30Z"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: EmilEmmenegger\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111111\n      </p><p><b>name</b>: Emil Emmenegger \n      </p><p><b>gender</b>: MALE\n      </p><p><b>birthDate</b>: Jan 01, 1981\n      </p><p><b>maritalStatus</b>: unverheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '5' = '5', given as 'unverheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Zürich"
* extension[=].valueAddress.country = "Schweiz"
// * extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
// * extension[=].valueAddress.city = "Breitenbach"
// * extension[=].valueAddress.state = "BL"
// * extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
// * extension[=].valueCodeableConcept = $religiousAffiliation#1007 "Atheism"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111222"
* name.text = "Emil Emmenegger"
* name.family = "Emmenegger"
* name.given = "Emil"
* telecom[0].system = #phone
* telecom[=].value = "079 222 33 44"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "emil.emmenegger@example.com"
* gender = #male
* birthDate = "1981-01-01"
* maritalStatus.coding[0] = $ech-11-maritalstatus#5 "unverheiratet"
* maritalStatus.coding[+] = $v3-MaritalStatus#U "unmarried"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true
* generalPractitioner = Reference(urn:uuid:d55425b0-406c-4dde-9ea8-6b0dffbd75ab) "Dr. med. Theo Tillmann"

Instance: Observation-3-breath-test
InstanceOf: ChLabObservationResultsLaboratory
Title: "Protein electrophoresis panel - Serum or Plasma"
Description: "The protein concentration that is reported in electrophoresis is the same as that reported routinely."
Usage: #inline
* id = "f36365f1-4b7e-4458-99af-d950b8608ea7"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#74803-8 "Lactose challenge (hydrogen breath test) [Interpretation] in Exhaled gas"
* code.text = "Lactose challenge (hydrogen breath test) (Exhl gas) [Interp]" // LOINC Display Name
* subject = Reference(urn:uuid:9b3d24a2-9d79-4d3a-b3e2-7dd8fdde5eff) "Emil Emmenegger"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:49f8e829-1242-47a9-b958-32be38d09e5b) "Katrin Klauser"
* specimen = Reference(urn:uuid:85c72094-e3e8-4d3a-8a18-c2812310fd10) "Gas-3-breath-test"

// ---- TODO values!!
* valueQuantity = 5 '[ppm]' "[ppm]"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "[ppm]"
* method = $sct#252233000 "Hydrogen breath test (procedure)"
* referenceRange.low.value = 4.5 
* referenceRange.low.unit = "[ppm]"
* referenceRange.high.value = 11
* referenceRange.high.unit = "[ppm]"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"
// * device = Reference(urn:uuid:d1fcb5ca-99bc-435f-947d-53481453ef25) "Protein-Electrophoresis-System"


// * hasMember[+] = Reference(urn:uuid:d130cf00-e7bc-49f3-8de5-8341c740865b) "Observation-Albumin-abs"

// ╭─── specimen 3-breath-test ─────╮
// │     exhaled gas                │
// ╰────────────────────────────────╯
Instance: Gas-3-breath-test
InstanceOf: ChLabSpecimen
Title: "Exhaled gaz samples"
Description: "Example for Specimen of exhaled gas"
Usage: #inline
* id = "85c72094-e3e8-4d3a-8a18-c2812310fd10"
* identifier.value = "48736-12345-99887"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $v2-0487#EXG "Gas, exhaled (=breath)"
* subject = Reference(urn:uuid:9b3d24a2-9d79-4d3a-b3e2-7dd8fdde5eff) "Emil Emmenegger"
* collection.collector = Reference(urn:uuid:d55425b0-406c-4dde-9ea8-6b0dffbd75ab)
* collection.collectedDateTime = "2024-03-13T01:43:30Z"
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* container.type = $sct#706053007 "General specimen container"

// ╭─── ordering organization  ────────╮
// │  PR, Practitioner, Organization   │
// ╰───────────────────────────────────╯
Instance: TheoTillmannGruppenpraxis
InstanceOf: ChLabPractitionerRole
Title: "Theo Tillmann at Gruppenpraxis"
Description: "PractitionerRole, refers to 3-breatjtest"
Usage: #inline
* id = "3771d254-cee2-498e-a448-c5660ccd583d"
* practitioner = Reference(urn:uuid:d55425b0-406c-4dde-9ea8-6b0dffbd75ab) "Dr. med. Theo Tillmann"
* organization = Reference(urn:uuid:8816b3f6-376f-4e2d-b83f-53e69e2b7ffb)
* code = urn:oid:2.16.840.1.113883.2.9.6.2.7#2211 "Generalist Medical Practitioners"

Instance: TheoTillmann
InstanceOf: ChLabPractitioner
Title: "Theo Tillmann"
Description: "Practitioner, works in Gruppenpraxis, refers to 3-breatjtest"
Usage: #inline
* id = "d55425b0-406c-4dde-9ea8-6b0dffbd75ab"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000050441"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[ZSR].value = "A123444"
* name.use = #official
* name.family = "Tillmann"
* name.given = "Theo"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "033 444 22 11"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "theo.tillmann@gruppenpraxis.ch"
* telecom[=].use = #work
* address.line = "Doktorgasse 2"
* address.city = "Messen"
* address.postalCode = "3254"
* address.country = "CH"
* qualification.code = $v2-0360#MD "Doctor of Medicine"

Instance: Gruppenpraxis
InstanceOf: CHCoreOrganization
Title: "Gruppenpraxis"
Description: "Practice, refers to 3-breath-test"
Usage: #inline
* id = "8816b3f6-376f-4e2d-b83f-53e69e2b7ffb"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601054050718"
* name = "Gruppenpraxis Messen"
* telecom[0].system = #phone
* telecom[=].value = "+41555545566"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@gruppenpraxis.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.gruppenpraxis.ch"
* telecom[=].use = #work
* address.line = "Doktorgasse 2"
* address.city = "Messen"
* address.postalCode = "3254"
* address.country = "CH"

// ╭─── Laboratory  ───────────────────╮
// │  PR, Practitioner, Organization   │
// ╰───────────────────────────────────╯
Instance: KatrinKlauserLaborSchildknecht
InstanceOf: ChLabPractitionerRole
Title: "Marc Mustermann at Gruppenpraxis"
Description: "PractitionerRole, refers to 1-tvt"
Usage: #inline
* id = "525e02f3-cac3-4cdc-a497-ce6e441b8a80"
* practitioner = Reference(urn:uuid:49f8e829-1242-47a9-b958-32be38d09e5b)
* organization = Reference(urn:uuid:8030393e-d1c2-409f-841b-0c3af4e68494)
* code = urn:oid:2.16.840.1.113883.2.9.6.2.7#3212	 "Medical and Pathology Laboratory Technicians"

Instance: KatrinKlauser
InstanceOf: ChLabPractitioner
Title: "Katrin Klauser"
Description: "Specialist for Laboratory Medicine, works in Labor Schildknecht"
Usage: #inline
* id = "49f8e829-1242-47a9-b958-32be38d09e5b"
* identifier[GLN].system = "urn:oid:2.51.1.3" // GLN
* identifier[GLN].value = "7601000050717"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[ZSR].value = "A123315"
* name.use = #official
* name.family = "Klauser"
* name.given = "Katrin"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "033 444 55 66"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "katrin.klauser@labor-schildknecht.ch"
* telecom[=].use = #work
* qualification.code = $v2-0360#MD "Doctor of Medicine"
* address.line = "Laborstrasse 23"
* address.city = "Olten"
* address.postalCode = "4600"
* address.country = "CH"

Instance: LaborSchildknecht
InstanceOf: CHCoreOrganization
Title: "Labor Schildknecht"
Description: "Laboratory Organization executing Laboratory tests and sending Diagnostic Reports"
Usage: #inline
* id = "8030393e-d1c2-409f-841b-0c3af4e68494"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000234407"
* name = "Labor Schildknecht"
* telecom.system = #phone
* telecom.value = "+41223345566"
* telecom.use = #work
* address.line = "Laborstrasse 23"
* address.city = "Olten"
* address.use = #work
* address.postalCode = "4600"
* address.country = "CH"
* contact.name.use = #official
* contact.name.text = "Dr. Katrin Klauser"
* contact.name.family = "Klauser"
* contact.name.given = "Katrin"
* contact.name.prefix = "Dr. med."
* contact.telecom.system = #phone
* contact.telecom.value = "+41334445566"
* contact.telecom.use = #work
* contact.telecom.system = #email
* contact.telecom.value = "katrin.klauser@labor-schildknecht.ch"
* contact.address.line[0] = "Laborstrasse 23"
* contact.address.line[+] = "4. Stock"
* contact.address.city = "Olten"
* contact.address.postalCode = "4600"
* contact.address.country = "CH"