Instance: LabResultReport-1-tvt
InstanceOf: ChLabDocument
Description: "Example of a Laboratory Report for scenario deep vein thrombosis"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"
* identifier.system = "http://example.org"
* identifier.value = "ba91c64b-f30c-4137-a484-34bbba5e8804"
* type = #document
* timestamp = "2023-03-09T14:30:00+01:00"

* entry[0].fullUrl = "urn:uuid:3dd8d097-67d0-4e39-aa68-5ab6fc13169c"
* entry[=].resource = Composition-1-tvt

* entry[+].fullUrl = "urn:uuid:03464e4f-12f0-4d50-970d-f522b92a3f06"
* entry[=].resource = DiagnosticReport-1-tvt

* entry[+].fullUrl = "urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef"
* entry[=].resource = HansGuggindieluft

* entry[+].fullUrl = "urn:uuid:8903c6a4-6547-437c-8f47-b68cfe959288"
* entry[=].resource = Observation-HbHt

* entry[+].fullUrl = "urn:uuid:93e87cd5-a3eb-4767-b0e7-9e01a11a4784"
* entry[=].resource = Observation-Hb

* entry[+].fullUrl = "urn:uuid:6329ad78-c886-44f8-9471-3783cc990ff0"
* entry[=].resource = Observation-Ht

* entry[+].fullUrl = "urn:uuid:c0eeeb40-77ed-46f3-b8d6-5fdac0a61f7c"
* entry[=].resource = Observation-CRP

// * entry[+].fullUrl = "urn:uuid:f30d8df7-474f-401e-b5d4-f690d28d718d"
// * entry[=].resource = Observation-D-Dimer

* entry[+].fullUrl = "urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74"
* entry[=].resource = Blood

// * entry[+].fullUrl = "urn:uuid:8d38e1bd-dced-45c1-8978-949d6cfd21e8"
// * entry[=].resource = Blood-coag

* entry[+].fullUrl = "urn:uuid:9b554309-f9d4-4559-ba81-91659cd11786"
* entry[=].resource = Serum

* entry[+].fullUrl = "urn:uuid:9e180157-5a4e-4a8a-8ca9-9b09c2056666"  // entry[10]
* entry[=].resource = ServiceRequest-HbHt-panel

* entry[+].fullUrl = "urn:uuid:ce16707a-b9bb-4c8d-8e4e-f8c135ed4a40"
* entry[=].resource = ServiceRequest-Hb

* entry[+].fullUrl = "urn:uuid:e4072da7-a760-47ba-83e7-59796c59a944"
* entry[=].resource = ServiceRequest-Ht

* entry[+].fullUrl = "urn:uuid:8d98f9d1-581b-4495-93aa-4a522fa30a6c"
* entry[=].resource = ServiceRequest-CRP

// * entry[+].fullUrl = "urn:uuid:e0330c6c-4f9b-46e7-8817-2ae5301f5d14"
// * entry[=].resource = ServiceRequest-D-Dimer

* entry[+].fullUrl = "urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048"
* entry[=].resource = MarcMustermannArztpraxis

* entry[+].fullUrl = "urn:uuid:e23d6fa1-88bc-497c-a4df-eb3fa60eaa37"
* entry[=].resource = MarcMustermann

* entry[+].fullUrl = "urn:uuid:32c4c990-cedb-4999-998d-bab1d55db49f"
* entry[=].resource = Arztpraxis

* entry[+].fullUrl = "urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052"
* entry[=].resource = EvaErlenmeyer

// * entry[+].fullUrl = "urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5"
// * entry[=].resource = EvaErlenmeyerLaborPipette

* entry[+].fullUrl = "urn:uuid:84483dc8-81d3-41cc-8d24-10c241279024"
* entry[=].resource = LaborPipette

// ╭────────────── instance 1-tvt ──────────────────────────────╮
// │  Scenario deep vein thrombosis: HbHt-panel, CRP, D-Dimer   │
// ╰────────────────────────────────────────────────────────────╯

// ╭────────────── Composition 1-tvt ────────────────────────╮
// │ Scenario deep vein thrombosis: HbHt-panel, CRP, D-Dimer │
// ╰─────────────────────────────────────────────────────────╯

Instance: Composition-1-tvt
InstanceOf: ChLabComposition
Description: "Example of Composition in the scenario of deep vein thrombosis"
Usage: #inline

// ╭────────────── Extension ───────────────────────────────────────────────────────────────╮
// │ provides a link to the order [(Reference(ServiceRequest)]                              │
// │               or requisition [ServiceRequest.requisition]                              │
// │ (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills  │
// ╰────────────────────────────────────────────────────────────────────────────────────────╯

* extension[0].url = "http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition"
* extension[=].valueReference = Reference(ServiceRequest-HbHt-panel)
// * extension[+].url = "http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition" // no dependent SR !!!
// * extension[=].valueReference = Reference(ServiceRequest-Hb)
// * extension[+].url = "http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition"
// * extension[=].valueReference = Reference(ServiceRequest-Ht)
* extension[+].url = "http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition"
* extension[=].valueReference = Reference(ServiceRequest-CRP)
// * extension[+].url = "http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition"
// * extension[=].valueReference = Reference(ServiceRequest-D-Dimer)

* id = "3dd8d097-67d0-4e39-aa68-5ab6fc13169c"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
// * type = $loinc#11502-2 "Laboratory report" => type already defined in profile from SNOMED CT
* subject = Reference(Patient/6b8a0365-5022-403b-a5a5-8d8680d701ef)
* date = "2023-03-09T14:30:00+01:00"
* author = Reference(Practitioner/12328339-f7d6-4bb6-80e4-89fd03ce5052)
* author.display = "Dr. Eva Erlenmeyer"
* title = "Laboratory Report - 10 March, 2023 14:30"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2020-12-27T14:30:00+01:00"
* attester.party = Reference(Practitioner/12328339-f7d6-4bb6-80e4-89fd03ce5052) // Who attested the report
* custodian = Reference(Organization/84483dc8-81d3-41cc-8d24-10c241279024)

// ╭────────────── Composition.sections ──────────────────────────────────────────────────╮
// │ sections contain all References of Observations                             │
// │               or requisition [ServiceRequest.requisition]                              │
// │ (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills  │
// ╰────────────────────────────────────────────────────────────────────────────────────────╯

* section[0].title = "Hemoglobin and Hematocrit panel (Bld)"    // Display Name
* section[=].code = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood" // (exactly)
* section[=].entry = Reference(Observation-HbHt)
* section[+].title = "Hemoglobin (Bld) [Mass/Vol]"    // Display Name
* section[=].code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood" // (exactly)
* section[=].entry = Reference(Observation-Hb)
* section[+].title = "Hematocrit (Bld) [Volume fraction]"   // Display Name
* section[=].code = $loinc#20570-8 "Hematocrit [Volume Fraction] of Blood" // (exactly)
* section[=].entry = Reference(Observation-Ht)

* section[+].title = "CRP [Moles/Vol]"    // Display Name
* section[=].code = $loinc#76485-2 "C reactive protein [Moles/volume] in Serum or Plasma" // (exactly)
* section[=].entry = Reference(Observation-CRP)

// * section[+].title = "Fibrin D-dimer FEU IA (Bld) [Mass/Vol]"    // Display Name
// * section[=].code = $loinc#71427-9 "Fibrin D-dimer FEU [Mass/volume] in Blood by Immunoassay" // (exactly)
// * section[=].entry = Reference(Observation-D-Dimer)



// * section[lab-subsections].title = "Hemoglobin + Hematocrit panel lab result report"
// * section[lab-subsections].code = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
// * section[lab-subsections].code.text = "Hemoglobin and Hematocrit panel (Bld)" // Display name
// * section[lab-subsections].entry = Reference(HbObservation-Ht)
// * section[lab-subsections].title = "Hemoglobin lab result report"
// * section[lab-subsections].code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
// * section[lab-subsections].code.text = "Hemoglobin (Bld) [Mass/Vol]" // Display name
// * section[lab-subsections].entry = Reference(Observation-Hb)
// * section[lab-subsections][+].title = "Hematocrit panel lab result report"
// * section[lab-subsections][=].code = $loinc#20570-8 "Hematocrit [Volume Fraction] of Blood"
// * section[lab-subsections][=].code.text = "Hematocrit (Bld) [Volume fraction]" // Display name
// * section[lab-subsections][=].entry = Reference(Observation-Ht)


// ╭──────────── DiagnosticReport 1-tvt ─────────────────────╮
// │ Scenario deep vein thrombosis: HbHt-panel, CRP, D-Dimer │
// ╰─────────────────────────────────────────────────────────╯
Instance: DiagnosticReport-1-tvt
InstanceOf: ChLabDiagnosticReport
Description: "Example of DiagnosticReport for Results in the Hematology lab specialty"
Usage: #inline
* id = "03464e4f-12f0-4d50-970d-f522b92a3f06"
* extension[DiagnosticReportCompositionR5].url = $diagnostic-report-composition-r5
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/3dd8d097-67d0-4e39-aa68-5ab6fc13169c)
// * basedOn = Reference(ServiceRequest-HbHt-panel)
* status = #final
// * category = $v2-0074#HM "Hematology" // 
// * code = $sct#4241000179101 "Laboratory report (record artifact)"  // in profile
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(EvaErlenmeyerLaborPipette)
* performer.display = "Dr. Eva Erlenmeyer"

* result = Reference(Observation-HbHt)
//* result = Reference(Observation-Hb)
//* result = Reference(Observation-Ht)
* result = Reference(Observation-CRP)
// * result = Reference(Observation-D-Dimer)

// ╭────────────── Patient 1-tvt ────╮
// │ Scenario deep vein thrombosis   │
// ╰─────────────────────────────────╯
Instance: HansGuggindieluft
InstanceOf: ChLabPatient
Title: "Hans Guggindieluft"
Description: "CH-Core-Patient, refers to 1-tvt"
Usage: #inline
* id = "6b8a0365-5022-403b-a5a5-8d8680d701ef"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: HansGuggindieluft\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111111\n      </p><p><b>name</b>: Hans Guggindieluft \n      </p><p><b>gender</b>: MALE\n      </p><p><b>birthDate</b>: Jan 01, 1981\n      </p><p><b>maritalStatus</b>: unverheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '5' = '5', given as 'unverheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Zürich"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Breitenbach"
* extension[=].valueAddress.state = "BL"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1007 "Atheism"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111111"
* name.family = "Guggindieluft"
* name.given = "Hans"
* telecom[0].system = #phone
* telecom[=].value = "079 979 79 79"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "hans.guggindieluft@example.ch"
* gender = #male
* birthDate = "1981-01-01"
* maritalStatus = $ech-11-maritalstatus#5 "unverheiratet"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

// ╭────── Observation 1-tvt ─────────╮
// │ HbHt-panel, Hb, Ht ,CRP, D-Dimer │
// ╰──────────────────────────────────╯
Instance: Observation-HbHt
InstanceOf: ChLabObservationResultsLaboratory
Title: "Observation-HbHt"
Description: "Example for Hemoblobine and Hemotocrit panel Observation"
Usage: #inline
* id = "8903c6a4-6547-437c-8f47-b68cfe959288"
* status = #final
* category[0] = $observation-category#laboratory
// * category[+] = $v2-0074#HM "Hematology"
* category[+] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.text = "Hemoglobin and Hematocrit panel (Bld)"
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// * specimen  = Reference(Blood) / better to define it in Member
* hasMember = Reference(Observation-Hb)
* hasMember = Reference(Observation-Ht)

Instance: Observation-Hb
InstanceOf: ChLabObservationResultsLaboratory
Title: "Observation-Hb"
Description: "Example for Hemoblobine Observation"
Usage: #inline
* id = "93e87cd5-a3eb-4767-b0e7-9e01a11a4784"

* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Hemoglobin (Bld) [Mass/Vol]" // LOINC Display Name
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// TODO values
* valueQuantity = 10.8 'umol/L' "umol/L"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#70621000052105 "Spectrophotometric technique (qualifier value)"
* specimen = Reference(Blood)
* referenceRange.low.value = 8.7  // women 7.4
* referenceRange.low.unit = "umol/L"
* referenceRange.high.value = 11.2    // women 9.9
* referenceRange.high.unit = "umol/L"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"

Instance: Observation-Ht
InstanceOf: ChLabObservationResultsLaboratory
Title: "Ht-Observation"
Description: "Example for Hemocrite Observation"
Usage: #inline
* id = "6329ad78-c886-44f8-9471-3783cc990ff0"
* status = #final
* category[0] = $observation-category#laboratory
// * category[+] = $v2-0074#HM "Hematology"
* category[+] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#20570-8 "Hematocrit [Volume Fraction] of Blood"
* code.text = "Hematocrit (Bld) [Volume fraction]" // display text
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// TODO values
* valueQuantity = 48 '%' "%"
//* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#85457002 "Centrifugation (procedure)"
* specimen = Reference(Blood)
* referenceRange.low.value = 42   // women 37
* referenceRange.low.unit = "%"
* referenceRange.high.value = 50  // women 45
* referenceRange.high.unit = "%"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"

Instance: Observation-CRP
InstanceOf: ChLabObservationResultsLaboratory
Title: "Observation-CRP"
Description: "Example for CRP Observation"
Usage: #inline
* id = "c0eeeb40-77ed-46f3-b8d6-5fdac0a61f7c"
* status = #final
* category[0] = $observation-category#laboratory
// * category[+] = $v2-0074#CH "Chemistry"
* category[+] = $loinc#18719-5 "Chemistry studies (set)"  // lab specialty
* code = $loinc#1988-5 "C reactive protein [Mass/volume] in Serum or Plasma" // subset of loinc
* code.text = "CRP [Mass/Vol]" // display name
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeyer"
// TODO values
* valueQuantity = 8 'mg/L' "mg/L"
//* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#60519005 "Turbidity test, quantitative (procedure)"
* specimen = Reference(Serum)
* referenceRange.high.value = 10  // depends on method
* referenceRange.high.unit = "mg/L"

/*
Instance: Observation-D-Dimer
InstanceOf: ChLabObservationResultsLaboratory
Title: "Observation-D-Dimer"
Description: "Example for D-Dimer Observation"
Usage: #inline
* id = "f30d8df7-474f-401e-b5d4-f690d28d718d"
* status = #final
* category[0] = $observation-category#laboratory
// * category[+] = $v2-0074#CH "Chemistry"
* category[+] = $loinc#18720-3 "Coagulation studies (set)"  // lab specialty
* code = $loinc#71427-9 "Fibrin D-dimer FEU [Mass/volume] in Blood by Immunoassay"
* code.text = "Fibrin D-dimer FEU IA (Bld) [Mass/Vol]" // display name
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeyer"
// TODO values
* valueQuantity = 8 'mg/L' "mg/L"
//* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#414464004 "Immunoassay method (procedure)"
* specimen = Reference(Blood-coag)
* referenceRange.high.value = 0.5  // depends on method
* referenceRange.high.unit = "mg/L"
*/

// ╭───── specimen 1-tvt ─────╮
// │ Blood-coag, Blood, Serum │
// ╰──────────────────────────╯
Instance: Blood
InstanceOf: ChLabSpecimen
Title: "Blood Sample"
Description: "Example for Specimen for Haematological Examination"
Usage: #inline
* id = "3a98a13d-cf64-40bb-b7a0-87ef45193a74"
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(HansGuggindieluft)
* collection.collector = Reference(MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"

/*
Instance: Blood-coag
InstanceOf: ChLabSpecimen
Title: "Blood Sample Coagulation"
Description: "Example for Specimen for haemostatic Examination"
Usage: #inline
* id = "8d38e1bd-dced-45c1-8978-949d6cfd21e8"
* identifier.value = "48736-55555-75465"
* accessionIdentifier.value = "4e88a-66666-dd888"
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(HansGuggindieluft)
* receivedTime = "2020-08-16T16:40:17Z"
// * request = Reference(Lab) Why the specimen was collected
* collection.collector = Reference(MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* processing.timePeriod.start = "2015-08-16T06:40:17Z" // usually same time as collectedDateTime
* processing.timePeriod.end = "2015-08-17T06:40:17Z" // when processing should be terminated
* container.identifier.value = "4e88a-bc987-dd888-00001-bcoag"
* container.description = "S-Monovette grün"
* container.type = $sct#702120003 "Blood collection Luer adaptor"
* container.additiveCodeableConcept = $v2-0371#C38 "3.8% Citrate"
*/

Instance: Serum
InstanceOf: Specimen
Title: "Serum Sample"
Description: "Example for Specimen of Serum from venous blood"
Usage: #inline
* id = "9b554309-f9d4-4559-ba81-91659cd11786"
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(HansGuggindieluft)
* collection.collector = Reference(MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* container.type = $sct#706053007 "General specimen container (physical object)"

// ╭── serviceRequest 1-tvt ──╮
// │ HbHb-panel, CRP, D-Dimer │
// ╰──────────────────────────╯



Instance: ServiceRequest-HbHt-panel
InstanceOf: ChLabServiceRequestLaboratoryOrder
Title: "LabOrder Service Request for Hemoglobine & Hematocrit panel"
Description: "Example for Service Request of Hemoglobin and Hematocrit"
Usage: #inline
* id = "9e180157-5a4e-4a8a-8ca9-9b09c2056666"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-HbHtBlood"

* basedOn[0] = Reference(ServiceRequest/ce16707a-b9bb-4c8d-8e4e-f8c135ed4a40)
* basedOn[+] = Reference(ServiceRequest/e4072da7-a760-47ba-83e7-59796c59a944)

// ---- grouperID, must be repeated in all basedOn SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $sct#108252007 "Laboratory procedure"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Blood) "Serum specimen"


Instance: ServiceRequest-Hb
InstanceOf: ChLabServiceRequestLaboratoryOrder
Title: "LabOrder Service Request for Hemoblobin "
Description: "Example for Service Request of Hemoglobin Concentration in Blood"
Usage: #inline
* id = "ce16707a-b9bb-4c8d-8e4e-f8c135ed4a40"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-potassium-serum"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $sct#108252007 "Laboratory procedure"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Blood) "Serum specimen"

Instance: ServiceRequest-Ht
InstanceOf: ChLabServiceRequestLaboratoryOrder
Title: "LabOrder Service Request for Hematocrit"
Description: "Example for Service Request of Hematocrit in Blood"
Usage: #inline
* id = "e4072da7-a760-47ba-83e7-59796c59a944"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-HbHtBlood"

// ---- grouperID, must be repeated in all basedOn SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $sct#108252007 "Laboratory procedure"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#20570-8 "Hematocrit [Volume Fraction] of Blood"

// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Blood) "Blood sample"

Instance: ServiceRequest-CRP
InstanceOf: ChLabServiceRequestLaboratoryOrder
Title: "LabOrder Service Request for Hemoblobin "
Description: "Example for Service Request of Hemoglobin Concentration in Blood"
Usage: #inline
* id = "8d98f9d1-581b-4495-93aa-4a522fa30a6c"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-potassium-serum"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $sct#108252007 "Laboratory procedure"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#1988-5 "C reactive protein [Mass/volume] in Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Blood) "Serum specimen"

/*
Instance: ServiceRequest-D-Dimer
InstanceOf: ChLabServiceRequestLaboratoryOrder
Title: "LabOrder Service Request for Hemoblobin "
Description: "Example for Service Request of Hemoglobin Concentration in Blood"
Usage: #inline
* id = "e0330c6c-4f9b-46e7-8817-2ae5301f5d14"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-potassium-serum"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $sct#108252007 "Laboratory procedure"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Blood-coag) "Blood Sample Coagulation"
*/

Instance: MarcMustermannArztpraxis
InstanceOf: ChLabPractitionerRole
Title: "Marc Mustermann at Arztpraxis"
Description: "PractitionerRole, refers to 1-tvt"
Usage: #inline
* id = "017e8e32-2f3b-4bef-baf1-92c7278a7048"
* practitioner = Reference(MarcMustermann)
* organization = Reference(Arztpraxis)
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
* qualification.code = $v2-0360#MD "Doctor of Medicine"

Instance: Arztpraxis
InstanceOf: CHCoreOrganization
Title: "Arztpraxis"
Description: "Practice, refers to 1-tvt, 2-pertussis and 3-gyn"
Usage: #inline
* id = "32c4c990-cedb-4999-998d-bab1d55db49f"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000235503"
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

Instance: LaborPipette
InstanceOf: CHCoreOrganization
Title: "Labor Pipette"
Description: "Laboratory Organization, refers to all Storyboards"
Usage: #inline
* id = "84483dc8-81d3-41cc-8d24-10c241279024"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000234407"
* name = "Labor Pipette"
* telecom[0].system = #phone
* telecom[=].value = "+41223345566"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@labor-pipette.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.labor-pipette.ch"
* telecom[=].use = #work
* address.line = "Laborstrasse 23"
* address.city = "Olten"
* address.postalCode = "4600"
* address.country = "CH"
