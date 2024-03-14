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
// │  Scenario 2 -Antitrypsin Deficiency check                      │
// ╰───────────────────────────────────────────────────────────╯

* entry[Composition].fullUrl = "urn:uuid:075e3f2d-7ed8-4b6e-a3bb-9b784f5006c0"
* entry[Composition].resource = Composition-2-electrophoresis
* entry[DiagnosticReport].fullUrl = "urn:uuid:6cf06200-6760-4fdc-a1ea-3ed7aff4ebe9"
* entry[DiagnosticReport].resource = DiagnosticReport-2-electrophoresis

* entry[DiagnosticReport].fullUrl = "urn:uuid:6cf06200-6760-4fdc-a1ea-3ed7aff4ebe9"
* entry[DiagnosticReport].resource. = DiagnosticReport-2-electrophoresis

//================== Patient ===================================0
* entry[Patient].fullUrl = "urn:uuid:d4b28882-e138-4dcd-8315-323768917d23"
* entry[Patient].resource = GarfieldTestpatient

//============== Observations Electrophoresis ==================0
* entry[Observation][+].fullUrl = "urn:uuid:f36365f1-4b7e-4458-99af-d950b8608ea7"
* entry[Observation][=].resource = Observation-2-electrophoresis-panel

* entry[Observation][+].fullUrl = "urn:uuid:d130cf00-e7bc-49f3-8de5-8341c740865b"
* entry[Observation][=].resource = Observation-Albumin-abs
* entry[Observation][+].fullUrl = "urn:uuid:123cb5a5-feff-4beb-b383-57182e266934"
* entry[Observation][=].resource = Observation-Albumin-rel

* entry[Observation][+].fullUrl = "urn:uuid:c433b63b-6cb3-4752-9382-9041eb968a9b"
* entry[Observation][=].resource = Observation-Alpha1-abs
* entry[Observation][+].fullUrl = "urn:uuid:9e579886-1818-44c4-a205-15de184e8aee"
* entry[Observation][=].resource = Observation-Alpha1-rel

* entry[Observation][+].fullUrl = "urn:uuid:3b66cbbf-16cd-4a23-941d-000918fbf605"
* entry[Observation][=].resource = Observation-Alpha2-abs
* entry[Observation][+].fullUrl = "urn:uuid:9a91f646-4a8d-4f0e-bb9a-4b66f95ada8f"
* entry[Observation][=].resource = Observation-Alpha2-rel

* entry[Observation][+].fullUrl = "urn:uuid:545e196f-b4e5-42bf-aa8b-4e6bf54813cc"
* entry[Observation][=].resource = Observation-Beta1-abs
* entry[Observation][+].fullUrl = "urn:uuid:e80bc059-96bb-41d4-862c-a9657b26faa7"
* entry[Observation][=].resource = Observation-Beta1-rel

* entry[Observation][+].fullUrl = "urn:uuid:6c7b0ef0-fbc7-4549-ab85-7cd17074cc0e"
* entry[Observation][=].resource = Observation-Beta2-abs
* entry[Observation][+].fullUrl = "urn:uuid:a9da4f7b-5bb7-46c5-8f3f-91ec4988f4fe"
* entry[Observation][=].resource = Observation-Beta2-rel

* entry[Observation][+].fullUrl = "urn:uuid:e2007911-b882-4a63-a491-ebc4dcf0fea9"
* entry[Observation][=].resource = Observation-Gamma-abs
* entry[Observation][+].fullUrl = "urn:uuid:18daa8cc-b1f0-4be0-8eb8-690c8ae740d0"
* entry[Observation][=].resource = Observation-Gamma-rel

//================== Specimen ================================0
* entry[Specimen][+].fullUrl = "urn:uuid:6a631174-aac8-4cff-bb94-12af4b181ad9"
* entry[Specimen][=].resource = Serum-2-electrophoresis

//================== serviceRequest ==========================0
* entry[ServiceRequest][+].fullUrl = "urn:uuid:40eaa087-a49e-444c-9dbd-d3bdef9efcad"
* entry[ServiceRequest][=].resource = ServiceRequest-2-electrophoresis-panel

//=============== practitioner, organization =================0
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

// ===================== media =============================0
// * entry[Media][+].fullUrl = "urn:uuid:19ca50e3-fef9-494c-856c-881a59c7bfed"
// * entry[Media][=].resource = Electrophoresis

Instance: Composition-2-electrophoresis
InstanceOf: ChLabReportComposition
Description: "Example of Composition in the scenario protein electrophoresis"
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
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Case study 1</div><div>      <h3>Electrophoresis</h3>      <p>A patient, Garfield Testpatient, presents to Dr. med. Marc Mustermann at the Olten group practice on 09.03.2016. He complains of coughing, shortness of breath and shows an enlarged liver; look for a      </p>  </div></div>"

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
* specimen = Reference(urn:uuid:6a631174-aac8-4cff-bb94-12af4b181ad9) "Serum-2-electrophoresis"
* result = Reference(urn:uuid:f36365f1-4b7e-4458-99af-d950b8608ea7) "Observation-2-electrophoresis-panel"
// * media.comment = "Protein-Elektrophorese: Serum"
// * media.link = Reference(urn:uuid:19ca50e3-fef9-494c-856c-881a59c7bfed) "Electrophoresis"
// * conclusion = "some comment"

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
* hasMember[+] = Reference(urn:uuid:c433b63b-6cb3-4752-9382-9041eb968a9b) "Observation-Alpha1-abs"
* hasMember[+] = Reference(urn:uuid:9e579886-1818-44c4-a205-15de184e8aee) "Observation-Alpha1-rel"
* hasMember[+] = Reference(urn:uuid:3b66cbbf-16cd-4a23-941d-000918fbf605) "Observation-Alpha2-abs"
* hasMember[+] = Reference(urn:uuid:9a91f646-4a8d-4f0e-bb9a-4b66f95ada8f) "Observation-Alpha2-rel"
* hasMember[+] = Reference(urn:uuid:545e196f-b4e5-42bf-aa8b-4e6bf54813cc) "Observation-Beta1-abs"
* hasMember[+] = Reference(urn:uuid:e80bc059-96bb-41d4-862c-a9657b26faa7) "Observation-Beta1-rel"
* hasMember[+] = Reference(urn:uuid:6c7b0ef0-fbc7-4549-ab85-7cd17074cc0e) "Observation-Beta2-abs"
* hasMember[+] = Reference(urn:uuid:a9da4f7b-5bb7-46c5-8f3f-91ec4988f4fe) "Observation-Beta2-rel"
* hasMember[+] = Reference(urn:uuid:e2007911-b882-4a63-a491-ebc4dcf0fea9) "Observation-Gamma-abs"
* hasMember[+] = Reference(urn:uuid:18daa8cc-b1f0-4be0-8eb8-690c8ae740d0) "Observation-Gamma-rel"

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
* effectiveDateTime = "2024-03-13T01:43:30Z"
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
* effectiveDateTime = "2024-03-13T01:43:30Z"
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

// #################### begin alpha 1 ########################

Instance: Observation-Alpha1-abs
InstanceOf: ChLabObservationResultsLaboratory
Title: "Alpha 1 globulin [Mass/volume] in Serum or Plasma by Electrophoresis"  // LOINC Long Common Name
Description: "Alpha globulins are a group of plasma proteins, belonging to the serpin superfamily, that are highly mobile in alkaline or electrically charged solutions. They inhibit certain blood proteases; examples include Alpha 1 antitrypsin, alpha 1 antichymotrypsin, and serum amyloid A."  // LOINC Part Description
Usage: #inline
* id = "c433b63b-6cb3-4752-9382-9041eb968a9b"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#2865-4 "Alpha 1 globulin [Mass/volume] in Serum or Plasma by Electrophoresis"
* code.text = "Alpha 1 globulin Elph [Mass/Vol]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 2.2 'g/L' "g/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "g/L"
* method = $sct#82962001 "Protein electrophoresis (procedure)"
* referenceRange.low.value = 1.9 
* referenceRange.low.unit = "g/L"
* referenceRange.high.value = 3.8
* referenceRange.high.unit = "g/L"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

Instance: Observation-Alpha1-rel
InstanceOf: ChLabObservationResultsLaboratory
Title: "Albumin [Mass/volume] in Serum or Plasma by Electrophoresis"  // LOINC Long Common Name
Description: "<div><p> LP32144-5   Protein.total
Serum total protein, also called plasma total protein or total protein, is a biochemical test for measuring the total amount of protein in blood plasma or serum.

Protein in the plasma is made up of albumin and globulin. The globulin in turn is made up of α1, α2, β, and γ globulins. These fractions can be quantitated using protein electrophoresis, but the total protein test is a faster and cheaper test that estimates the total of all fractions together. The traditional method for measuring total protein uses the biuret reagent, but other chemical methods such as Kjeldahl method, dye-binding and refractometry are now available. The measurement is usually performed on automated analysers along with other laboratory tests.
</p><p>
LP15833-4   Alpha 1 globulin
Alpha globulins are a group of plasma proteins, belonging to the serpin superfamily, that are highly mobile in alkaline or electrically charged solutions. They inhibit certain blood proteases; examples include Alpha 1 antitrypsin, alpha 1 antichymotrypsin, and serum amyloid A.</p>
</div>
"  // LOINC Part Descriptions
Usage: #inline
* id = "9e579886-1818-44c4-a205-15de184e8aee"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#13978-2 "Alpha 1 globulin/Protein.total in Serum or Plasma by Electrophoresis"
* code.text = "Alpha 1 globulin Elph [Mass fraction]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 3.2 '%' "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "%"
* method = $sct#82962001 "Protein electrophoresis (procedure)"
* referenceRange.low.value = 2.7
* referenceRange.low.unit = "%"
* referenceRange.high.value = 5.4
* referenceRange.high.unit = "%"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

// ####################### begin alpha 2 ##########################
Instance: Observation-Alpha2-abs
InstanceOf: ChLabObservationResultsLaboratory
Title: "Alpha 2 globulin [Mass/volume] in Serum or Plasma by Electrophoresis"  // LOINC Long Common Name
Description: "Alpha globulins are a group of plasma proteins, belonging to the serpin superfamily, that are highly mobile in alkaline or electrically charged solutions. They inhibit certain blood proteases; examples include Alpha 1 antitrypsin, alpha 1 antichymotrypsin, and serum amyloid A."  // LOINC Part Description
Usage: #inline
* id = "3b66cbbf-16cd-4a23-941d-000918fbf605"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#2868-8 "Alpha 2 globulin [Mass/volume] in Serum or Plasma by Electrophoresis"
* code.text = "Alpha 2 globulin Elph [Mass/Vol]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 5.7 'g/L' "g/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "g/L"
* method = $sct#82962001 "Protein electrophoresis (procedure)"
* referenceRange.low.value = 4.6 
* referenceRange.low.unit = "g/L"
* referenceRange.high.value = 9.2
* referenceRange.high.unit = "g/L"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

Instance: Observation-Alpha2-rel
InstanceOf: ChLabObservationResultsLaboratory
Title: "Alpha 2 globulin/Protein.total in Serum or Plasma by Electrophoresis"  // LOINC Long Common Name
Description: "<div><p> LP32144-5   Protein.total
Serum total protein, also called plasma total protein or total protein, is a biochemical test for measuring the total amount of protein in blood plasma or serum.

Protein in the plasma is made up of albumin and globulin. The globulin in turn is made up of α1, α2, β, and γ globulins. These fractions can be quantitated using protein electrophoresis, but the total protein test is a faster and cheaper test that estimates the total of all fractions together. The traditional method for measuring total protein uses the biuret reagent, but other chemical methods such as Kjeldahl method, dye-binding and refractometry are now available. The measurement is usually performed on automated analysers along with other laboratory tests.
</p><p>
LP15834-2   Alpha 2 globulin
Alpha globulins are a group of plasma proteins, belonging to the serpin superfamily, that are highly mobile in alkaline or electrically charged solutions. They inhibit certain blood proteases; examples include Alpha 1 antitrypsin, alpha 1 antichymotrypsin, and serum amyloid A.</p>
</div>
"  // LOINC Part Descriptions
Usage: #inline
* id = "9a91f646-4a8d-4f0e-bb9a-4b66f95ada8f"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#13981-6 "Alpha 2 globulin/Protein.total in Serum or Plasma by Electrophoresis"
* code.text = "Alpha 2 globulin Elph [Mass fraction]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 8.9 '%' "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "%"
* method = $sct#82962001 "Protein electrophoresis (procedure)"
* referenceRange.low.value = 6.5
* referenceRange.low.unit = "%"
* referenceRange.high.value = 13.2
* referenceRange.high.unit = "%"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"
// #################### end alpha 1 + 2 ########################

// #################### begin beta ########################
Instance: Observation-Beta1-abs
InstanceOf: ChLabObservationResultsLaboratory
Title: "Beta 1 globulin [Mass/volume] in Serum or Plasma by Electrophoresis"  // LOINC Long Common Name
Description: "Beta globulins are a group of globular proteins in plasma that are more mobile in alkaline or electrically charged solutions than gamma globulins, but less mobile than alpha globulins. Examples of beta globulins include: beta 2-microglobulin, plasminogen, angiostatins, properdin, sex hormone-binding globulin, and transferrin. [Wikipedia: Beta 1 globulin] The beta globulins consist of 2 major peaks, beta-1 and beta -2. Beta-1 is composed mostly of transferrin, and beta-2 contains beta-lipoprotein. [Tietz]"  // LOINC Part Description
Usage: #inline
* id = "545e196f-b4e5-42bf-aa8b-4e6bf54813cc"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#32730-4 "Beta 1 globulin [Mass/volume] in Serum or Plasma by Electrophoresis"
* code.text = "Beta 1 globulin Elph [Mass/Vol]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 4 'g/L' "g/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "g/L"
* method = $sct#82962001 "Protein electrophoresis (procedure)"
* referenceRange.low.value = 3.2 
* referenceRange.low.unit = "g/L"
* referenceRange.high.value = 4.8
* referenceRange.high.unit = "g/L"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

Instance: Observation-Beta1-rel
InstanceOf: ChLabObservationResultsLaboratory
Title: "Beta 1 globulin/Protein.total in Serum or Plasma by Electrophoresis"  // LOINC Long Common Name
Description: "<div><p> LP32144-5   Protein.total
Serum total protein, also called plasma total protein or total protein, is a biochemical test for measuring the total amount of protein in blood plasma or serum.

Protein in the plasma is made up of albumin and globulin. The globulin in turn is made up of α1, α2, β, and γ globulins. These fractions can be quantitated using protein electrophoresis, but the total protein test is a faster and cheaper test that estimates the total of all fractions together. The traditional method for measuring total protein uses the biuret reagent, but other chemical methods such as Kjeldahl method, dye-binding and refractometry are now available. The measurement is usually performed on automated analysers along with other laboratory tests.
</p><p>
LP31518-1   Beta 1 globulin
Beta globulins are a group of globular proteins in plasma that are more mobile in alkaline or electrically charged solutions than gamma globulins, but less mobile than alpha globulins. Examples of beta globulins include: beta 2-microglobulin, plasminogen, angiostatins, properdin, sex hormone-binding globulin, and transferrin. [Wikipedia: Beta 1 globulin] The beta globulins consist of 2 major peaks, beta-1 and beta -2. Beta-1 is composed mostly of transferrin, and beta-2 contains beta-lipoprotein. [Tietz]</p>
</div>
"  // LOINC Part Descriptions
Usage: #inline
* id = "e80bc059-96bb-41d4-862c-a9657b26faa7"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#32732-0 "Beta 1 globulin/Protein.total in Serum or Plasma by Electrophoresis"
* code.text = "Beta 1 globulin Elph [Mass fraction]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 6.2 '%' "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "%"
* method = $sct#82962001 "Protein electrophoresis (procedure)"
* referenceRange.low.value = 4.6
* referenceRange.low.unit = "%"
* referenceRange.high.value = 6.9
* referenceRange.high.unit = "%"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

// ####################### begin beta 2 ##########################
Instance: Observation-Beta2-abs
InstanceOf: ChLabObservationResultsLaboratory
Title: "Beta 2 globulin [Mass/volume] in Serum or Plasma by Electrophoresis"  // LOINC Long Common Name
Description: "In fresh serum, the Beta-globulin region is often split. The samller B-2 fraction mainly contains lipoproteins. With specimen degradation, the Beta-2 band becomes diminished and may not longer be visible, particularly with samples older than 3 days. Decreased levels may be associated with hypo-B-lipoproteinemias."  // LOINC Part Description
Usage: #inline
* id = "6c7b0ef0-fbc7-4549-ab85-7cd17074cc0e"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#32731-2 "Beta 2 globulin [Mass/volume] in Serum or Plasma by Electrophoresis"
* code.text = "Beta 2 globulin Elph [Mass/Vol]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 3.1 'g/L' "g/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "g/L"
* method = $sct#82962001 "Protein electrophoresis (procedure)"
* referenceRange.low.value = 2 
* referenceRange.low.unit = "g/L"
* referenceRange.high.value = 4.1
* referenceRange.high.unit = "g/L"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

Instance: Observation-Beta2-rel
InstanceOf: ChLabObservationResultsLaboratory
Title: "Beta 2 globulin/Protein.total in Serum or Plasma by Electrophoresis"  // LOINC Long Common Name
Description: "<div><p> LP32144-5   Protein.total
Serum total protein, also called plasma total protein or total protein, is a biochemical test for measuring the total amount of protein in blood plasma or serum.

Protein in the plasma is made up of albumin and globulin. The globulin in turn is made up of α1, α2, β, and γ globulins. These fractions can be quantitated using protein electrophoresis, but the total protein test is a faster and cheaper test that estimates the total of all fractions together. The traditional method for measuring total protein uses the biuret reagent, but other chemical methods such as Kjeldahl method, dye-binding and refractometry are now available. The measurement is usually performed on automated analysers along with other laboratory tests.
</p><p>
LP31519-9   Beta 2 globulin
In fresh serum, the Beta-globulin region is often split. The samller B-2 fraction mainly contains lipoproteins. With specimen degradation, the Beta-2 band becomes diminished and may not longer be visible, particularly with samples older than 3 days. Decreased levels may be associated with hypo-B-lipoproteinemias.</p>
</div>
"  // LOINC Part Descriptions
Usage: #inline
* id = "a9da4f7b-5bb7-46c5-8f3f-91ec4988f4fe"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#32733-8 "Beta 2 globulin/Protein.total in Serum or Plasma by Electrophoresis"
* code.text = "Beta 2 globulin Elph [Mass fraction]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 4.9 '%' "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "%"
* method = $sct#82962001 "Protein electrophoresis (procedure)"
* referenceRange.low.value = 2.8
* referenceRange.low.unit = "%"
* referenceRange.high.value = 5.9
* referenceRange.high.unit = "%"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

// #################### end beta 1 + 2 ########################

// #################### begin gamma ########################
Instance: Observation-Gamma-abs
InstanceOf: ChLabObservationResultsLaboratory
Title: "Gamma globulin [Mass/volume] in Serum or Plasma by Electrophoresis"  // LOINC Long Common Name
Description: "Gamma globulins, or Ig's, are a class of serum proteins that can be identified by electrophoresis. The most significant gamma globulins are antibodies. Gamma globulin injections are sometimes given in an attempt to temporarily boost a patient's immunity. Injections are also given to patients who have been exposed to hepatitis A or measles and to patients who lack the ability to produce gamma globulins because of an immune deficiency, such as in X-linked agammaglobulinemia."  // LOINC Part Description
Usage: #inline
* id = "e2007911-b882-4a63-a491-ebc4dcf0fea9"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#2874-6 "Gamma globulin [Mass/volume] in Serum or Plasma by Electrophoresis"
* code.text = "Gamma globulin Elph [Mass/Vol]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 10.9 'g/L' "g/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "g/L"
* method = $sct#82962001 "Protein electrophoresis (procedure)"
* referenceRange.low.value = 6.7 
* referenceRange.low.unit = "g/L"
* referenceRange.high.value = 12.3
* referenceRange.high.unit = "g/L"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

Instance: Observation-Gamma-rel
InstanceOf: ChLabObservationResultsLaboratory
Title: "Gamma globulin/Protein.total in Serum or Plasma by Electrophoresis"  // LOINC Long Common Name
Description: "<div><p> LP32144-5   Protein.total
Serum total protein, also called plasma total protein or total protein, is a biochemical test for measuring the total amount of protein in blood plasma or serum.

Protein in the plasma is made up of albumin and globulin. The globulin in turn is made up of α1, α2, β, and γ globulins. These fractions can be quantitated using protein electrophoresis, but the total protein test is a faster and cheaper test that estimates the total of all fractions together. The traditional method for measuring total protein uses the biuret reagent, but other chemical methods such as Kjeldahl method, dye-binding and refractometry are now available. The measurement is usually performed on automated analysers along with other laboratory tests.
</p><p>
LP15836-7   Gamma globulin
Gamma globulins, or Ig's, are a class of serum proteins that can be identified by electrophoresis. The most significant gamma globulins are antibodies. Gamma globulin injections are sometimes given in an attempt to temporarily boost a patient's immunity. Injections are also given to patients who have been exposed to hepatitis A or measles and to patients who lack the ability to produce gamma globulins because of an immune deficiency, such as in X-linked agammaglobulinemia.</p>
</div>
"  // LOINC Part Descriptions
Usage: #inline
* id = "18daa8cc-b1f0-4be0-8eb8-690c8ae740d0"
* status = #final

* category[specialty] = $sct#394596001 "Chemical pathology (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#13983-2 "Gamma globulin/Protein.total in Serum or Plasma by Electrophoresis"
* code.text = "Gamma globulin Elph [Mass fraction]" // LOINC Display Name
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* effectiveDateTime = "2024-03-13T01:43:30Z"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 17 '%' "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "%"
* method = $sct#82962001 "Protein electrophoresis (procedure)"
* referenceRange.low.value = 9.6
* referenceRange.low.unit = "%"
* referenceRange.high.value = 17.5
* referenceRange.high.unit = "%"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"
// #################### end gamma ########################

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
* reasonCode = $sct#80515008
* reasonCode.text = "Large liver (disorder)"
//* insurance = Reference(HealthInsuranceCard)
* specimen = Reference(urn:uuid:6a631174-aac8-4cff-bb94-12af4b181ad9) "Serum-2-electrophoresis"

Alias: $media-type = http://terminology.hl7.org/CodeSystem/media-type

Instance: Electrophoresis
InstanceOf: Media
Description: "Example Image as of Laboratory Result "
Usage: #inline
* id = "19ca50e3-fef9-494c-856c-881a59c7bfed"
* status = #completed
* type = $media-type#image "Image"
* subject = Reference(urn:uuid:d4b28882-e138-4dcd-8315-323768917d23) "Garfield Testpatient"
* createdDateTime = "2024-03-13"
* issued = "2024-03-13T01:43:30Z"
* operator = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlemeyer"
* height = 3508
* width = 2479
* content.id = "a1"
* content.contentType = #image/png
* content.data = "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eG1sbnM6cGRmPSJodHRwOi8vbnMuYWRvYmUuY29tL3BkZi8xLjMvIgogICAgICAgICAgICB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIgogICAgICAgICAgICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogICAgICAgICA8cGRmOlByb2R1Y2VyPkdQTCBHaG9zdHNjcmlwdCA5LjAyPC9wZGY6UHJvZHVjZXI+CiAgICAgICAgIDxwZGY6S2V5d29yZHMvPgogICAgICAgICA8eG1wOk1vZGlmeURhdGU+MjAyNC0wMy0xM1QwNzowMTozNyswMTowMDwveG1wOk1vZGlmeURhdGU+CiAgICAgICAgIDx4bXA6Q3JlYXRlRGF0ZT4yMDIxLTAyLTE2VDEyOjIyOjA4KzAxOjAwPC94bXA6Q3JlYXRlRGF0ZT4KICAgICAgICAgPHhtcDpDcmVhdG9yVG9vbD5QREZDcmVhdG9yIFZlcnNpb24gMS4yLjE8L3htcDpDcmVhdG9yVG9vbD4KICAgICAgICAgPHhtcDpNZXRhZGF0YURhdGU+MjAyNC0wMy0xM1QwNzowMTozNyswMTowMDwveG1wOk1ldGFkYXRhRGF0ZT4KICAgICAgICAgPHhtcE1NOkRvY3VtZW50SUQ+YjUxMWQzNTktNzJhNC0xMWViLTAwMDAtNjllMzRkMTI4OTc4PC94bXBNTTpEb2N1bWVudElEPgogICAgICAgICA8eG1wTU06SW5zdGFuY2VJRD51dWlkOjg3MzI4MmVjLWMxMGYtNDg0Yy1iOWUyLTgxN2FlYzUwYmZmMjwveG1wTU06SW5zdGFuY2VJRD4KICAgICAgICAgPGRjOmZvcm1hdD5hcHBsaWNhdGlvbi9wZGY8L2RjOmZvcm1hdD4KICAgICAgICAgPGRjOnRpdGxlPgogICAgICAgICAgICA8cmRmOkFsdD4KICAgICAgICAgICAgICAgPHJkZjpsaSB4bWw6bGFuZz0ieC1kZWZhdWx0Ij5QaG9yZXNpczwvcmRmOmxpPgogICAgICAgICAgICA8L3JkZjpBbHQ+CiAgICAgICAgIDwvZGM6dGl0bGU+CiAgICAgICAgIDxkYzpjcmVhdG9yPgogICAgICAgICAgICA8cmRmOlNlcT4KICAgICAgICAgICAgICAgPHJkZjpsaT5BTEVSRTwvcmRmOmxpPgogICAgICAgICAgICA8L3JkZjpTZXE+CiAgICAgICAgIDwvZGM6Y3JlYXRvcj4KICAgICAgICAgPGRjOmRlc2NyaXB0aW9uPgogICAgICAgICAgICA8cmRmOkFsdD4KICAgICAgICAgICAgICAgPHJkZjpsaSB4bWw6bGFuZz0ieC1kZWZhdWx0Ii8+CiAgICAgICAgICAgICAgIDxyZGY6bGkgeG1sOmxhbmc9IngtcmVwYWlyIi8+CiAgICAgICAgICAgIDwvcmRmOkFsdD4KICAgICAgICAgPC9kYzpkZXNjcmlwdGlvbj4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRmOlJERj4KPC94OnhtcG1ldGE+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAKPD94cGFja2V0IGVuZD0idyI/Pg0KZW5kc3RyZWFtDWVuZG9iag0zIDAgb2JqDTw8L0F1dGhvcihBTEVSRSkvQ3JlYXRpb25EYXRlKEQ6MjAyMTAyMTYxMjIyMDgrMDEnMDAnKS9DcmVhdG9yKFBERkNyZWF0b3IgVmVyc2lvbiAxLjIuMSkvS2V5d29yZHMoKS9Nb2REYXRlKEQ6MjAyNDAzMTMwNzAxMzcrMDEnMDAnKS9Qcm9kdWNlcihHUEwgR2hvc3RzY3JpcHQgOS4wMikvU3ViamVjdCgpL1RpdGxlKFBob3Jlc2lzKT4+DWVuZG9iag14cmVmDQowIDQNCjAwMDAwMDAwMDAgNjU1MzUgZg0KMDAwMDAzMjAxMCAwMDAwMCBuDQowMDAwMDMyMDYxIDAwMDAwIG4NCjAwMDAwMzU3OTIgMDAwMDAgbg0KdHJhaWxlcg0KPDwvU2l6ZSA0L0lEWzwwODQ1QjJEQTdEOEMxNjM2RTY5RkFGRkRBRTYzREYyNj48REE0NTJDODNGMUFFNEE0MUFCQzExRkZFNDk2QjY0Nzg+XT4+DQpzdGFydHhyZWYNCjExNg0KJSVFT0YNCg=="
* content.creation = "2024-03-13"