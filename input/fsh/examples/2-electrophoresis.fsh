Instance: LabResultReport-2-electrophoresis
InstanceOf: ChLabReportDocument
Description: "Example of a Laboratory Report containing images"
Usage: #example
* meta.lastUpdated = "2024-03-13T01:43:30Z"
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"
* identifier.system = "http://example.org"
* identifier.value = "b83c9370-0c3b-4ecc-8924-ee2eb444f9c4"
* type = #document
* timestamp = "2024-03-13T01:43:30Z"

// ╭────────────── instance 2-electrophoresis ─────────────────╮
// │  Scenario 2 -Antitrypsin Deficiency                       │
// ╰───────────────────────────────────────────────────────────╯

* entry[Composition].fullUrl = "urn:uuid:075e3f2d-7ed8-4b6e-a3bb-9b784f5006c0"
* entry[Composition].resource = Composition-2-electrophoresis
* entry[DiagnosticReport].fullUrl = "urn:uuid:6cf06200-6760-4fdc-a1ea-3ed7aff4ebe9"
* entry[DiagnosticReport].resource = DiagnosticReport-2-electrophoresis

//================== Patient ==========================0
* entry[Patient].fullUrl = "urn:uuid:d4b28882-e138-4dcd-8315-323768917d23"
* entry[Patient].resource = GarfieldTestpatient

//================== Observations Electrophoresis ==========================0
* entry[Observation][+].fullUrl = "urn:uuid:f36365f1-4b7e-4458-99af-d950b8608ea7"
* entry[Observation][=].resource = Observation-2-electrophoresis-panel

* entry[Observation][+].fullUrl = "urn:uuid:d130cf00-e7bc-49f3-8de5-8341c740865b"
* entry[Observation][=].resource = Observation-Albumin-abs
* entry[Observation][+].fullUrl = "urn:uuid:123cb5a5-feff-4beb-b383-57182e266934"
* entry[Observation][=].resource = Observation-Albumin-rel

// * entry[Observation][+].fullUrl = "urn:uuid:c433b63b-6cb3-4752-9382-9041eb968a9b"
// * entry[Observation][=].resource = Observation-Alpha1-abs
// * entry[Observation][+].fullUrl = "urn:uuid:9e579886-1818-44c4-a205-15de184e8aee"
// * entry[Observation][=].resource = Observation-Alpha1-rel
// 
// * entry[Observation][+].fullUrl = "urn:uuid:3b66cbbf-16cd-4a23-941d-000918fbf605"
// * entry[Observation][=].resource = Observation-Alpha2-abs
// * entry[Observation][+].fullUrl = "urn:uuid:9a91f646-4a8d-4f0e-bb9a-4b66f95ada8f"
// * entry[Observation][=].resource = Observation-Alpha2-rel
// 
// * entry[Observation][+].fullUrl = "urn:uuid:545e196f-b4e5-42bf-aa8b-4e6bf54813cc"
// * entry[Observation][=].resource = Observation-Beta1-abs
// * entry[Observation][+].fullUrl = "urn:uuid:e80bc059-96bb-41d4-862c-a9657b26faa7"
// * entry[Observation][=].resource = Observation-Beta1-rel
// 
// * entry[Observation][+].fullUrl = "urn:uuid:6c7b0ef0-fbc7-4549-ab85-7cd17074cc0e"
// * entry[Observation][=].resource = Observation-Beta2-abs
// * entry[Observation][+].fullUrl = "urn:uuid:a9da4f7b-5bb7-46c5-8f3f-91ec4988f4fe"
// * entry[Observation][=].resource = Observation-Beta2-rel
// 
// * entry[Observation][+].fullUrl = "urn:uuid:e2007911-b882-4a63-a491-ebc4dcf0fea9"
// * entry[Observation][=].resource = Observation-Gamma-abs
// * entry[Observation][+].fullUrl = "urn:uuid:18daa8cc-b1f0-4be0-8eb8-690c8ae740d0"
// * entry[Observation][=].resource = Observation-Gamma-rel


//================== Specimen ==========================0
* entry[Specimen][+].fullUrl = "urn:uuid:6a631174-aac8-4cff-bb94-12af4b181ad9"
* entry[Specimen][=].resource = Serum-2-electrophoresis

//================== serviceRequest ==========================0
* entry[ServiceRequest][+].fullUrl = "urn:uuid:40eaa087-a49e-444c-9dbd-d3bdef9efcad"
* entry[ServiceRequest][=].resource = ServiceRequest-2-electrophoresis-panel

//=============== practitioner, organization =============================0
* entry[PractitionerRole][+].fullUrl = "urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048"   // entry[]
* entry[PractitionerRole][=].resource = MarcMustermannArztpraxis

* entry[Practitioner][+].fullUrl = "urn:uuid:e23d6fa1-88bc-497c-a4df-eb3fa60eaa37"
* entry[Practitioner][=].resource = MarcMustermann

* entry[Organization][+].fullUrl = "urn:uuid:32c4c990-cedb-4999-998d-bab1d55db49f"
* entry[Organization][=].resource = Arztpraxis

* entry[Practitioner][+].fullUrl = "urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052"
* entry[Practitioner][=].resource = EvaErlenmeyer

* entry[PractitionerRole][+].fullUrl = "urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5"
* entry[PractitionerRole][=].resource = EvaErlenmeyerLaborPipette

* entry[Organization][+].fullUrl = "urn:uuid:84483dc8-81d3-41cc-8d24-10c241279024"
* entry[Organization][=].resource = LaborPipette

Instance: Composition-2-electrophoresis
InstanceOf: ChLabReportComposition
Description: "Example of Composition in the scenario of deep vein thrombosis"
Usage: #inline
* id = "075e3f2d-7ed8-4b6e-a3bb-9b784f5006c0"

// ╭────────────── Extension ────────────────────────────────────╮
// │ provides a link to the order [(Reference(ServiceRequest)]   │
// │               or requisition [ServiceRequest.requisition]   │
// │ (i.e., 'Request.groupIdentifier')] that this report         │
// │                document is based on and fulfills            │
// ╰─────────────────────────────────────────────────────────────╯
* extension[versionNumber].valueString = "V1" // 0

* extension[information-recipient][+].valueReference = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "MarcMustermannArztpraxis"  //  1

// Composition Identifier must be same as in DiagnosticReport
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:075e3f2d-7ed8-4b6e-a3bb-9b784f5006c0"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Case study 1</div><div>      <h3>Suspicion of deep vein thrombosis</h3>      <p>A patient, Garfield Testpatient, presents to Dr. med. Marc Mustermann at the Olten group practice on 09.03.2016. He presents Husten Dyspnoe Hepatomegalie erhöhte Leberenzyme     </p>  </div></div>"

* status = #final
* type = $loinc#11502-2 "Laboratory report" // must be the same as in DiagnosticReport.code

// Composition Subject must be same as in DiagnosticReport
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* date = "2024-03-13T01:43:30Z"
* author = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* author.display = "Dr. Eva Erlenmeyer"
* title = "Laboratory Report - 10 March, 2023 14:30"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2024-03-13T01:43:30Z"
* attester.party = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer" // Who attested the report
* custodian = Reference(urn:uuid:84483dc8-81d3-41cc-8d24-10c241279024) "Labor Pipette"

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
* section[lab-subsections].section[=].entry = Reference(urn:uuid:f36365f1-4b7e-4458-99af-d950b8608ea7) "Observation-2-electrophoresis-panel"

// ╭────── DiagnosticReport 2-electrophoresis Panel ─────────╮
// │   Albumin, Alpha1, Alpha2, Beta1, Beta2, Gamma          │
// ╰─────────────────────────────────────────────────────────╯
Instance: DiagnosticReport-2-electrophoresis
InstanceOf: ChLabDiagnosticReport
Description: "Example of DiagnosticReport for sevaral lab results"
Usage: #inline
* id = "6cf06200-6760-4fdc-a1ea-3ed7aff4ebe9"
* extension[DiagnosticReportCompositionR5].url = $extension-DiagnosticReport.composition
* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:075e3f2d-7ed8-4b6e-a3bb-9b784f5006c0)

// must be same identifier as in Composition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:075e3f2d-7ed8-4b6e-a3bb-9b784f5006c0"

* basedOn[0] = Reference(urn:uuid:40eaa087-a49e-444c-9dbd-d3bdef9efcad) "ServiceRequest-2-electrophoresis-panel"

* status = #final
// * category[studyType] = $loinc#26436-6 "Laboratory studies (set)"
// * category[specialty] = $sct#394915009 "General pathology"
* code = $loinc#11502-2 "Laboratory report"

* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* performer.display = "Dr. Eva Erlenmeyer"

* specimen[+] = Reference(urn:uuid:6a631174-aac8-4cff-bb94-12af4b181ad9) "Serum-2-electrophoresis"

* result[+] = Reference(urn:uuid:f36365f1-4b7e-4458-99af-d950b8608ea7) "Observation-2-electrophoresis-panel"

// ╭────── Patient 2-electrophoresis ──────────╮
// │       GarfieldTestpatient                 │
// ╰───────────────────────────────────────────╯
Instance: GarfieldTestpatient
InstanceOf: ChLabPatient
Title: "Hans Guggindieluft"
Description: "CH-Core-Patient, refers to 1-tvt"
Usage: #inline
* id = "d4b28882-e138-4dcd-8315-323768917d23"
* meta.id = "meta-12345"
* meta.lastUpdated = "2024-03-13T01:43:30Z"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: Garfield Testpatient\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111222\n      </p><p><b>name</b>: Garfield Testpatient \n      </p><p><b>gender</b>: MALE\n      </p><p><b>birthDate</b>: Jan 01, 1981\n      </p><p><b>maritalStatus</b>: unverheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '5' = '5', given as 'unverheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Zürich"
* extension[=].valueAddress.country = "Schweiz"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111222"
* name.text = "Garfield Testpatient"
* name.family = "Testpatient"
* name.given = "Garfield"
* telecom[0].system = #phone
* telecom[=].value = "079 979 33 33"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "garfield.testpatient@example.ch"
* gender = #male
* birthDate = "1980-01-01"
* maritalStatus.coding[0] = $ech-11-maritalstatus#5 "unverheiratet"
* maritalStatus.coding[+] = $v3-MaritalStatus#U "unmarried"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true
* generalPractitioner = Reference(urn:uuid:e23d6fa1-88bc-497c-a4df-eb3fa60eaa37) "Dr. med. Marc Mustermann"

// ╭────── Observation 2-electrophoresis panel  ───────────────────────────────╮
// │ Albumin, Alpha1, Alpha2, Beta1, Beta2, Gamma, each absolute and relative  │
// ╰───────────────────────────────────────────────────────────────────────────╯

Instance: Observation-2-electrophoresis-panel
InstanceOf: ChLabObservationResultsLaboratory
Title: "Protein electrophoresis panel - Serum or Plasma"
Description: "The protein concentration that is reported in electrophoresis is the same as that reported routinely."
Usage: #inline
* id = "f36365f1-4b7e-4458-99af-d950b8608ea7"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#24351-9	"Protein electrophoresis panel - Serum or Plasma"
* code.text = "Protein [Mass/Vol]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* specimen = Reference(urn:uuid:6a631174-aac8-4cff-bb94-12af4b181ad9) "Serum-2-electrophoresis"
// * device = Reference(urn:uuid:3b9c6849-cf71-45e9-9d88-31f7879342f0) "Sysmex XP-300"

* hasMember[+] = Reference(urn:uuid:d130cf00-e7bc-49f3-8de5-8341c740865b) "Observation-Albumin-abs"
* hasMember[+] = Reference(urn:uuid:123cb5a5-feff-4beb-b383-57182e266934) "Observation-Albumin-rel"
// * hasMember[+] = Reference(urn:uuid:c433b63b-6cb3-4752-9382-9041eb968a9b) "Observation-Alpha1-abs"
// * hasMember[+] = Reference(urn:uuid:9e579886-1818-44c4-a205-15de184e8aee) "Observation-Alpha1-rel"
// * hasMember[+] = Reference(urn:uuid:3b66cbbf-16cd-4a23-941d-000918fbf605) "Observation-Alpha2-abs"
// * hasMember[+] = Reference(urn:uuid:9a91f646-4a8d-4f0e-bb9a-4b66f95ada8f) "Observation-Alpha2-rel"
// * hasMember[+] = Reference(urn:uuid:545e196f-b4e5-42bf-aa8b-4e6bf54813cc) "Observation-Beta1-abs"
// * hasMember[+] = Reference(urn:uuid:e80bc059-96bb-41d4-862c-a9657b26faa7) "Observation-Beta1-rel"
// * hasMember[+] = Reference(urn:uuid:6c7b0ef0-fbc7-4549-ab85-7cd17074cc0e) "Observation-Beta2-abs"
// * hasMember[+] = Reference(urn:uuid:a9da4f7b-5bb7-46c5-8f3f-91ec4988f4fe) "Observation-Beta2-rel"
// * hasMember[+] = Reference(urn:uuid:e2007911-b882-4a63-a491-ebc4dcf0fea9) "Observation-Gamma-abs"
// * hasMember[+] = Reference(urn:uuid:18daa8cc-b1f0-4be0-8eb8-690c8ae740d0) "Observation-Gamma-rel"

Instance: Observation-Albumin-abs
InstanceOf: ChLabObservationResultsLaboratory
Title: "Albumin [Mass/volume] in Serum or Plasma by Electrophoresis"  // LOINC Long Common Name
Description: "A non-glycosylated protein that is synthesized in the liver parenchymal cells, regulated by colloid osmotic pressure from interstitial fluid surrounding hepatocytes, and catabolized in nearly all organs. Albumin comprises >50% of plasma proteins in plasma, CSF and urine, and therefore is a key contributor to intravascular oncotic pressure and regulating fluid concentration in tissues. Albumin also binds and transports a variety of endogenous substances and medications. Serum albumin measurement is a reflection of hydration and nutritional status, blood oncotic pressure, liver and kidney function, and other chronic diseases, and the ratio of albumin in the CSF and serum can be used to evaluate blood brain barrier disorders. [Tietz] Urine albumin of less than 30 mg/day is considered normal. Microalbuminuria is defined as urine albumin of 30-300 mg/day and is an early sign of kidney damage from disorders such as diabetes or hypertension. Albuminuria is urine albumin >300 mg/day and is associated with overt kidney disease. PMID: 25512779"  // LOINC Part Description
Usage: #inline
* id = "d130cf00-e7bc-49f3-8de5-8341c740865b"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#2862-1 "Albumin [Mass/volume] in Serum or Plasma by Electrophoresis"
* code.text = "Albumin Elph [Mass/Vol]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 38.1 'g/L' "g/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "g/L"
* method = $sct#82962001 "Protein electrophoresis (procedure)"
* referenceRange.low.value = 39.2 
* referenceRange.low.unit = "g/L"
* referenceRange.high.value = 48.3
* referenceRange.high.unit = "g/L"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

Instance: Observation-Albumin-rel
InstanceOf: ChLabObservationResultsLaboratory
Title: "Albumin [Mass/volume] in Serum or Plasma by Electrophoresis"  // LOINC Long Common Name
Description: "<div><p> LP32144-5   Protein.total
Serum total protein, also called plasma total protein or total protein, is a biochemical test for measuring the total amount of protein in blood plasma or serum.

Protein in the plasma is made up of albumin and globulin. The globulin in turn is made up of α1, α2, β, and γ globulins. These fractions can be quantitated using protein electrophoresis, but the total protein test is a faster and cheaper test that estimates the total of all fractions together. The traditional method for measuring total protein uses the biuret reagent, but other chemical methods such as Kjeldahl method, dye-binding and refractometry are now available. The measurement is usually performed on automated analysers along with other laboratory tests.
</p><p>
LP6118-6   Albumin
A non-glycosylated protein that is synthesized in the liver parenchymal cells, regulated by colloid osmotic pressure from interstitial fluid surrounding hepatocytes, and catabolized in nearly all organs. Albumin comprises >50% of plasma proteins in plasma, CSF and urine, and therefore is a key contributor to intravascular oncotic pressure and regulating fluid concentration in tissues. Albumin also binds and transports a variety of endogenous substances and medications. Serum albumin measurement is a reflection of hydration and nutritional status, blood oncotic pressure, liver and kidney function, and other chronic diseases, and the ratio of albumin in the CSF and serum can be used to evaluate blood brain barrier disorders. [Tietz] Urine albumin of less than 30 mg/day is considered normal. Microalbuminuria is defined as urine albumin of 30-300 mg/day and is an early sign of kidney damage from disorders such as diabetes or hypertension. Albuminuria is urine albumin >300 mg/day and is associated with overt kidney disease. PMID: 25512779 </p>
</div>
"  // LOINC Part Descriptions
Usage: #inline
* id = "123cb5a5-feff-4beb-b383-57182e266934"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#13980-8 "Albumin/Protein.total in Serum or Plasma by Electrophoresis"
* code.text = "Albumin Elph [Mass fraction]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 59.5 '%' "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "%"
* method = $sct#82962001 "Protein electrophoresis (procedure)"
* referenceRange.low.value = 56 
* referenceRange.low.unit = "%"
* referenceRange.high.value = 69
* referenceRange.high.unit = "%"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"


// ╭─── specimen 2-electrophoresis ─────╮
// │     Blood Plasma or Serum          │
// ╰────────────────────────────────────╯
Instance: Serum-2-electrophoresis
InstanceOf: ChLabSpecimen
Title: "Serum Sample for Electrophoresis"
Description: "Example for Specimen of Serum from venous blood"
Usage: #inline
* id = "6a631174-aac8-4cff-bb94-12af4b181ad9"
* identifier.value = "48736-12345-99887"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen"
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* collection.collector = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* container.type = $sct#706053007 "General specimen container"

// ╭── serviceRequest 2-electrophoresis panel ────────────────────────────────╮
// │ Albumin, Alpha1, Alpha2, Beta1, Beta2, Gamma, each absolute and relative │
// ╰──────────────────────────────────────────────────────────────────────────╯
Instance: ServiceRequest-2-electrophoresis-panel
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for 2-electrophoresis panel - Serum"
Description: "Example for Service Request of CBC panel"
Usage: #inline
* id = "40eaa087-a49e-444c-9dbd-d3bdef9efcad"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123123"

// basedOn ...

// ---- grouperID, must be repeated in all basedOn SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-123123"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
// * code.coding[0] = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.coding[0] = $loinc#58410-2 "CBC panel - Blood by Automated count"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* requester = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann at Arztpraxis"
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen = Reference(urn:uuid:6a631174-aac8-4cff-bb94-12af4b181ad9) "Serum-2-electrophoresis"