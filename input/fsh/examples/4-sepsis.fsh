Instance: LabResultReport-4-sepsis
InstanceOf: ChLabReportDocument
Description: "Example of a Laboratory Report for suspected sepsis"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"
* identifier.system = "http://example.org"
* identifier.value = "07436e49-5e49-4b72-95cd-13a3921b880f"
* type = #document
* timestamp = "2023-03-09T14:30:00+01:00"

// ╭────────────── example 4-sepsis  ─────────────────────────────────────╮
// │ Scenario Suspected sepsis: 4 samples for Blood culture,              │
// │ aerobic + anaerobic, Interval 30', Urine-sample                      │
// │ Found: org-1 = K. pneumoniae, org-2 = E. coli, org-3 = Strept. mitis │
// ╰──────────────────────────────────────────────────────────────────────╯

* entry[Composition].fullUrl = "urn:uuid:832c053d-e0a0-4467-9f85-4bde09b825af"
* entry[Composition].resource = Composition-4-sepsis
* entry[DiagnosticReport].fullUrl = "urn:uuid:1e56bbe9-ee25-45db-a887-987090f89810"
* entry[DiagnosticReport].resource = DiagnosticReport-4-sepsis

//================== Patient ==========================0
* entry[Patient].fullUrl = "urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b"
* entry[Patient].resource = KatarinaKeller

//================== serviceRequest ==========================0
* entry[ServiceRequest][+].fullUrl = "urn:uuid:21dbc37f-28b5-4ef8-9835-c79dbf7c99b7"
* entry[ServiceRequest][=].resource = ServiceRequest-gram-stain
* entry[ServiceRequest][+].fullUrl = "urn:uuid:6bb29a10-2313-48b9-96ba-e903d0ae3c2b"
* entry[ServiceRequest][=].resource = ServiceRequest-anaerobe-culture
* entry[ServiceRequest][+].fullUrl = "urn:uuid:a168c88a-f2c1-43d1-9dd7-611a64cd7be8"  // entry[5]
* entry[ServiceRequest][=].resource = ServiceRequest-aerobe-culture
* entry[ServiceRequest][+].fullUrl = "urn:uuid:fbcca2e1-3d0a-4cb8-9a02-c6f8b41a962e"
* entry[ServiceRequest][=].resource = ServiceRequest-urine-culture

//================== Observations gram Stain ==========================0
* entry[Observation][+].fullUrl = "urn:uuid:a335d2df-6f77-4ae8-bb6e-f7086fd25de0"
* entry[Observation][=].resource = Observation-gram-stain
* entry[Observation][+].fullUrl = "urn:uuid:c0393c7c-bc8a-47d2-a1a9-d4e1f87c6449"
* entry[Observation][=].resource = Observation-wbc
* entry[Observation][+].fullUrl = "urn:uuid:20e798b7-ef0d-4d22-9099-35219d264dac"
* entry[Observation][=].resource = Observation-org-1
* entry[Observation][+].fullUrl = "urn:uuid:cd376843-9c66-4e63-b403-9299bd6c4fc2"  // entry[10]
* entry[Observation][=].resource = Observation-org-1-quant
* entry[Observation][+].fullUrl = "urn:uuid:ae61519b-b7b4-4bfc-a7a9-f272130a2300"
* entry[Observation][=].resource = Observation-org-2
* entry[Observation][+].fullUrl = "urn:uuid:e6ce8504-dadb-49c9-a997-a8ed4c7cba24"
* entry[Observation][=].resource = Observation-org-2-quant
* entry[Observation][+].fullUrl = "urn:uuid:a07e93cc-5908-4ed1-9678-afc61ef9fd9e"
* entry[Observation][=].resource = Observation-org-3
* entry[Observation][+].fullUrl = "urn:uuid:b564768f-937f-4132-a2eb-91efcf59b952"
* entry[Observation][=].resource = Observation-org-3-quant

//================== Observations anaerobe culture ==========================0
* entry[Observation][+].fullUrl = "urn:uuid:cea62faa-60b7-442b-b76a-da70ed2d92b1"  // entry[15]
* entry[Observation][=].resource = Observation-anaerobe-culture

  // org-1
* entry[Observation][+].fullUrl = "urn:uuid:f89631cb-e973-4ba0-9f48-29b9472b9363"
* entry[Observation][=].resource = Observation-anaerobe-culture-org-1
* entry[Observation][+].fullUrl = "urn:uuid:17a2d960-c34a-4276-be4a-e1e679fcf415"
* entry[Observation][=].resource = Observation-anaerobe-culture-org-1-growth


    // org-1-susc-panel
* entry[Observation][+].fullUrl = "urn:uuid:3f40981d-f233-4315-b5c2-d6092d29ea95"
* entry[Observation][=].resource = Observation-anaerobe-culture-org-1-susc-panel
* entry[Observation][+].fullUrl = "urn:uuid:af017871-32df-4823-972c-daa256db7eb0"
* entry[Observation][=].resource = Observation-org-1-amoxi-clav
* entry[Observation][+].fullUrl = "urn:uuid:5aa9b3c0-1057-48c2-ac73-b682fd8b9107"  // entry[20]
* entry[Observation][=].resource = Observation-org-1-ciprofloxacin
* entry[Observation][+].fullUrl = "urn:uuid:9a0233a6-4f0a-4022-9b4c-9a43c83e343e"
* entry[Observation][=].resource = Observation-org-1-ceftriaxone

  // org-2
* entry[Observation][+].fullUrl = "urn:uuid:5c774433-62ad-4d21-b230-6de2d138a02d"
* entry[Observation][=].resource = Observation-anaerobe-culture-org-2
* entry[Observation][+].fullUrl = "urn:uuid:a4191434-87f5-4455-a3fd-e857fea50ea5"
* entry[Observation][=].resource = Observation-anaerobe-culture-org-2-growth

    // org-2-susc-panel
* entry[Observation][+].fullUrl = "urn:uuid:531337e5-48ec-4ed7-a81f-d30d16b3d7cb"
* entry[Observation][=].resource = Observation-anaerobe-culture-org-2-susc-panel
* entry[Observation][+].fullUrl = "urn:uuid:4f24af8e-00ae-417e-a87c-1c9a012b5e03"  // entry[25]
* entry[Observation][=].resource = Observation-org-2-amoxi-clav
* entry[Observation][+].fullUrl = "urn:uuid:1f94a3ab-1c83-4ac5-afec-75fabdf79da4"  // entry[26]
* entry[Observation][=].resource = Observation-org-2-ciprofloxacin
* entry[Observation][+].fullUrl = "urn:uuid:020c3f3d-a77b-42fa-a10a-c63ee7a5bd0f" //  entry[27]
* entry[Observation][=].resource = Observation-org-2-ceftriaxone

    // org-3
* entry[Observation][+].fullUrl = "urn:uuid:296e1564-39d6-497b-9b40-e60f884dd5e4" //  entry[28]
* entry[Observation][=].resource = Observation-anaerobe-culture-org-3
* entry[Observation][+].fullUrl = "urn:uuid:8c885526-b6ed-4f99-bcc1-d294d79e0c7c"
* entry[Observation][=].resource = Observation-anaerobe-culture-org-3-growth

    // org-3-susc-panel
* entry[Observation][+].fullUrl = "urn:uuid:8c8b2f58-4cc1-4c21-8a92-e65ce31e60b1" // entry[30]
* entry[Observation][=].resource = Observation-anaerobe-culture-org-3-susc-panel
* entry[Observation][+].fullUrl = "urn:uuid:6dbb348d-3ce5-451a-b7db-77c2e4d27bb3"
* entry[Observation][=].resource = Observation-org-3-amoxi-clav
* entry[Observation][+].fullUrl = "urn:uuid:eda9070d-cd59-45b3-a1fc-b79cc479c562"
* entry[Observation][=].resource = Observation-org-3-ciprofloxacin
* entry[Observation][+].fullUrl = "urn:uuid:ad7dd57d-69c4-493f-bf4e-b919664757ba"
* entry[Observation][=].resource = Observation-org-3-ceftriaxone


//================== Observations aerobe culture ==========================0
* entry[Observation][+].fullUrl = "urn:uuid:3184e9e2-4f12-43ce-9e83-f5c4a21c1eeb"
* entry[Observation][=].resource = Observation-aerobe-culture
* entry[Observation][+].fullUrl = "urn:uuid:8b07a6b9-fefd-4ee5-87e1-04cdc4a15327"  // entry[35]
* entry[Observation][=].resource = Observation-aerobe-culture-org-1
* entry[Observation][+].fullUrl = "urn:uuid:f251d8b4-54fb-4060-89fe-f17e54874124"
* entry[Observation][=].resource = Observation-aerobe-culture-org-1-growth
* entry[Observation][+].fullUrl = "urn:uuid:dc20d7a8-a2ec-4291-b70e-b3049ea05cf3"
* entry[Observation][=].resource = Observation-aerobe-culture-org-2
* entry[Observation][+].fullUrl = "urn:uuid:e548aa0e-1662-4fda-838a-aa7d169ae44f"
* entry[Observation][=].resource = Observation-aerobe-culture-org-2-growth
* entry[Observation][+].fullUrl = "urn:uuid:230f9ed4-0ab0-456e-9161-f1c290e24c92"
* entry[Observation][=].resource = Observation-aerobe-culture-org-3
* entry[Observation][+].fullUrl = "urn:uuid:1c453ab3-8e39-4530-a581-d3f87e1459fc"  // entry[40]
* entry[Observation][=].resource = Observation-aerobe-culture-org-3-growth

//================== Observations urine-culture ==========================0
* entry[Observation][+].fullUrl = "urn:uuid:0c1b30c6-9a41-4c59-a403-531654214754"
* entry[Observation][=].resource = Observation-urine-culture

//================== Observations susceptibility tests =====================0
* entry[Observation][+].fullUrl = "urn:uuid:24f1a039-5146-4e51-8c07-dfd94bc7370d"
* entry[Observation][=].resource = Observation-org-2-susc-panel
* entry[Observation][+].fullUrl = "urn:uuid:9d3394c2-3b7b-4f88-9358-239adbeadba3"
* entry[Observation][=].resource = Observation-org-2-carbapenem-susc
* entry[Observation][+].fullUrl = "urn:uuid:4679fd4c-4ef3-4b91-b17c-8a97a25472fb"
* entry[Observation][=].resource = Observation-org-2-ciprofloxacin-susc
* entry[Observation][+].fullUrl = "urn:uuid:6a68a15a-5477-4d01-bfd6-fe7fa7cb97f8"  // entry[45]
* entry[Observation][=].resource = Observation-org-2-neomycin-susc
* entry[Observation][+].fullUrl = "urn:uuid:28a7f5b7-7ba4-4caf-ac43-80326dcf2cfb"
* entry[Observation][=].resource = Observation-org-2-vancomycin-susc

//================== Specimen ==========================0
* entry[Specimen][+].fullUrl = "urn:uuid:4fcf2138-6def-4b6e-beaa-35ee09d9cba8"
* entry[Specimen][=].resource = Blood-anaerob-0-min
* entry[Specimen][+].fullUrl = "urn:uuid:4b37cb2b-b9fe-4742-aacd-b03259d3035a"
* entry[Specimen][=].resource = Blood-anaerob-30-min
* entry[Specimen][+].fullUrl = "urn:uuid:7ba89b7b-9898-46cf-ad9d-6cc1f4be31c2"
* entry[Specimen][=].resource = Blood-aerob-0-min
* entry[Specimen][+].fullUrl = "urn:uuid:b0871e3b-f378-4f07-90ff-f08a20e42c02"  // entry[50]
* entry[Specimen][=].resource = Blood-aerob-30-min

* entry[Specimen][+].fullUrl = "urn:uuid:77ed2f36-b4b1-42da-bc57-563e293c04e8"
* entry[Specimen][=].resource = Urine-sample

//=============== practitioner, organization =============================0
* entry[PractitionerRole][+].fullUrl = "urn:uuid:10b95d3c-5402-4631-a404-e0d7e74c9a8f"
* entry[PractitionerRole][=].resource = HansHauserKantonsspital

* entry[Practitioner][+].fullUrl = "urn:uuid:a7d5a837-288d-4234-923c-c9cb5b6f55a1"
* entry[Practitioner][=].resource = HansHauser

* entry[Organization][+].fullUrl = "urn:uuid:37e198ba-ebae-4438-bf8f-faa42eff82c6"
* entry[Organization][=].resource = Kantonsspital

* entry[PractitionerRole][+].fullUrl = "urn:uuid:06929c8b-9fb9-43fe-b12c-439fd470be59"  // entry[55]
* entry[PractitionerRole][=].resource = BeatBunsenLaborGantenbein

* entry[Practitioner][+].fullUrl = "urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052"
* entry[Practitioner][=].resource = BeatBunsen

* entry[Organization][+].fullUrl = "urn:uuid:17742f1f-ba4f-423c-b6de-463409f20431"
* entry[Organization][=].resource = LaborGantenbein

// ╭────────────── Composition 4-sepsis ─────────────────────╮
// │      Scenario sepis: Microbiological results            │
// ╰─────────────────────────────────────────────────────────╯
Instance: Composition-4-sepsis
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

* extension[basedOn-order-or-requisition][+].valueReference = Reference(urn:uuid:21dbc37f-28b5-4ef8-9835-c79dbf7c99b7)  //  ServiceRequest-gram-stain
* extension[basedOn-order-or-requisition][+].valueReference = Reference(urn:uuid:6bb29a10-2313-48b9-96ba-e903d0ae3c2b)   //  ServiceRequest-anaerobe-culture
* extension[basedOn-order-or-requisition][+].valueReference = Reference(urn:uuid:a168c88a-f2c1-43d1-9dd7-611a64cd7be8)   //  ServiceRequest-aerobe-culture
* extension[basedOn-order-or-requisition][+].valueReference = Reference(urn:uuid:fbcca2e1-3d0a-4cb8-9a02-c6f8b41a962e)   //  ServiceRequest-urine-culture


// Composition Identifier must be same as in DiagnosticReport
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:07436e49-5e49-4b72-95cd-13a3921b880f"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order</div><div><h3>Case study 4: Suspected sepsis</h3>      <p>The patient Sara Speckmann, born 12. 12. 1975, has been in the Cantonal Hospital for some time. Last night her general condition deteriorated massively. As there is a suspicion of sepsis, the senior physician in charge, Dr Hans Hauser, orders Blood to be taken from her in the morning for a Blood culture. 30 minutes later, another aerobic and an anaerobic Blood culture is taken, as well as a urine sample. All five samples are further processed in the external laboratory Pipette. There, germs are detected in all materials and then identified by mass spectrometry. The pathogens “Klebsiella pneumoniae” and “Escherichia coli” were detected in the four Blood culture bottles, and the bacterium “Streptococcus mitis” was also detected in one aerobic bottle. The germ identified in the urine sample is normally not pathogenic. An antibiogram is made of all three pathogens detected in the Blood. This shows that the two active substances “amoxicillin+clavulanic acid” and “ceftriaxone” are effective against all three germs. The microbiologist regularly informs Dr Hans Hauser about the various partial results.       </p>         </div></div>"
* status = #final
* type = $loinc#11502-2 "Laboratory report" // must be the same as in DiagnosticReport.code
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* category[specialty] = $sct#408454008 "Clinical microbiology"
// * type.text = "Laboratory Report"

// Composition Subject must be same as in DiagnosticReport
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* date = "2023-03-09T14:30:00+01:00"
* author = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* author.display = "Dr. Beat Bunsen"
* title = "Laboratory Report - 10 March, 2023 14:30"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2020-12-27T14:30:00+01:00"
* attester.party = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) // Who attested the report
* custodian = Reference(urn:uuid:17742f1f-ba4f-423c-b6de-463409f20431)

// ╭────────────── Composition.sections ────────────────────────────────────────────────────╮
// │            sections contain all References of Observations                             │
// │               or requisition [ServiceRequest.requisition]                              │
// │ (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills  │
// ╰────────────────────────────────────────────────────────────────────────────────────────╯

* section[lab-subsections].title = "Bacterial Aerobic & Anaerobic Culture & Susceptibility"
* section[lab-subsections].code  = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-subsections].code.text = "Mikrobiologische Untersuchungen:Komplex:-:^Patient:Set:"  // Language variants: de-DE

* section[lab-subsections].section[+].title = "Microscopic observation [Identifier] in Blood by Gram stain"
* section[lab-subsections].section[=].code  = $loinc#87969-2
* section[lab-subsections].section[=].entry = Reference(urn:uuid:a335d2df-6f77-4ae8-bb6e-f7086fd25de0) // Observation-gram-stain

* section[lab-subsections].section[+].title = "Anaerobic culture technique (qualifier value)"
* section[lab-subsections].section[=].code  = $sct#703751005
* section[lab-subsections].section[=].entry = Reference(urn:uuid:cea62faa-60b7-442b-b76a-da70ed2d92b1) // Observation-anaerobe-culture

* section[lab-subsections].section[+].title = "Aerobic culture technique (qualifier value)"
* section[lab-subsections].section[=].code  = $sct#703750006
* section[lab-subsections].section[=].entry = Reference(urn:uuid:3184e9e2-4f12-43ce-9e83-f5c4a21c1eeb) // Observation-aerobe-culture

* section[lab-subsections].section[0].title = "Bacterial susceptibility panel"
* section[lab-subsections].section[=].code  = $loinc#29576-6
* section[lab-subsections].section[=].entry = Reference(urn:uuid:531337e5-48ec-4ed7-a81f-d30d16b3d7cb)  // Observation-anaerobe-culture-org-1-susc-panel

* section[lab-subsections].section[0].title = "Bacterial susceptibility panel"
* section[lab-subsections].section[=].code  = $loinc#29576-6
* section[lab-subsections].section[=].entry = Reference(urn:uuid:24f1a039-5146-4e51-8c07-dfd94bc7370d)


* section[lab-subsections].section[0].title = "Bacterial susceptibility panel"
* section[lab-subsections].section[=].code  = $loinc#29576-6
* section[lab-subsections].section[=].entry = Reference(urn:uuid:24f1a039-5146-4e51-8c07-dfd94bc7370d)


// ╭──────────── DiagnosticReport 4-sepsis ──────────────────╮
// │ Scenario suspcted sepsis                                │
// ╰─────────────────────────────────────────────────────────╯
Instance: DiagnosticReport-4-sepsis
InstanceOf: ChLabDiagnosticReport
Description: "Example of DiagnosticReport for several lab results"
Usage: #inline
* id = "1e56bbe9-ee25-45db-a887-987090f89810"
* extension[DiagnosticReportCompositionR5].url = $diagnostic-report-composition-r5
* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:832c053d-e0a0-4467-9f85-4bde09b825af)

// must be same identifier as in Composition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:07436e49-5e49-4b72-95cd-13a3921b880f"

* basedOn[+] = Reference(urn:uuid:21dbc37f-28b5-4ef8-9835-c79dbf7c99b7)  //  ServiceRequest-gram-stain
* basedOn[+] = Reference(urn:uuid:6bb29a10-2313-48b9-96ba-e903d0ae3c2b)  //  ServiceRequest-anaerobe-culture
* basedOn[+] = Reference(urn:uuid:a168c88a-f2c1-43d1-9dd7-611a64cd7be8)  //  ServiceRequest-aerobe-culture
* basedOn[+] = Reference(urn:uuid:fbcca2e1-3d0a-4cb8-9a02-c6f8b41a962e)  //  ServiceRequest-urine-culture

* status = #final
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* category[specialty] = $sct#408454008 "Clinical microbiology"

* code = $loinc#11502-2 "Laboratory report"

* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:06929c8b-9fb9-43fe-b12c-439fd470be59)
* performer.display = "Dr. Beat Bunsen"


* specimen[0] = Reference(urn:uuid:4fcf2138-6def-4b6e-beaa-35ee09d9cba8)  //  Blood-anaerob-0-min
* specimen[+] = Reference(urn:uuid:4b37cb2b-b9fe-4742-aacd-b03259d3035a)  //  Blood-anaerob-30-min
* specimen[+] = Reference(urn:uuid:7ba89b7b-9898-46cf-ad9d-6cc1f4be31c2)  //  Blood-aerob-0-min
* specimen[+] = Reference(urn:uuid:b0871e3b-f378-4f07-90ff-f08a20e42c02)  //  Blood-aerob-30-min
* specimen[+] = Reference(urn:uuid:77ed2f36-b4b1-42da-bc57-563e293c04e8)  //  Urine-sample

* result[+] = Reference(urn:uuid:a335d2df-6f77-4ae8-bb6e-f7086fd25de0)  // Observation-gram-stain
* result[+] = Reference(urn:uuid:cea62faa-60b7-442b-b76a-da70ed2d92b1)  // Observation-anaerobe-culture
* result[+] = Reference(urn:uuid:3184e9e2-4f12-43ce-9e83-f5c4a21c1eeb)  // Observation-aerobe-culture
* result[+] = Reference(urn:uuid:0c1b30c6-9a41-4c59-a403-531654214754)  // Observation-urine-culture

* result[+] = Reference(urn:uuid:20e798b7-ef0d-4d22-9099-35219d264dac)  // Observation-org-1
* result[+] = Reference(urn:uuid:ae61519b-b7b4-4bfc-a7a9-f272130a2300)  // Observation-org-2
* result[+] = Reference(urn:uuid:a07e93cc-5908-4ed1-9678-afc61ef9fd9e)  // Observation-org-3

// ╭───── 4-sepsis Patient ────╮
// │       Katarina Keller     │
// ╰───────────────────────────╯
Instance: KatarinaKeller
InstanceOf: CHCorePatient
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
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111114"
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
InstanceOf: Coverage
Title: "Health Insurance Card"
Description: "Example for Insurance"
Usage: #inline
* id = "4f3d1a62-714d-4709-beca-313694eae916"
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "A123456780"
* status = #active
* type = $v3-ActCode#EHCPOL "extended healthcare"
* subscriber = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* beneficiary = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* period.end = "2012-03-17"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123456789"

// ########### S P E C I M E N ################
// #############################################
// ╭──── 4-sepsis Specimen  ─────────────────────╮
// │ Blood-anaerob: collection 0 min and 30 min, │
// │ Blood-aerob: collection 0 min and 30 min ,  │
// │ Urin-sample                                 │
// ╰─────────────────────────────────────────────╯

    // ╭──── 4-sepsis Specimen blood  ────────────────────────────╮
    // │ Culture anaerob, Orange top Bottle, after 0 and 30 min.  │
    // ╰──────────────────────────────────────────────────────────╯

Instance: Blood-anaerob-0-min // TODO must be adapted !!!!!
InstanceOf: Specimen
Usage: #inline
* id = "4fcf2138-6def-4b6e-beaa-35ee09d9cba8" // -> is valuable
// * contained = hep
* identifier.system = "http://ehr.acme.org/identifiers/collections"
* identifier.value = "23234352356"
* accessionIdentifier.system = "http://lab.acme.org/specimens/2011"
* accessionIdentifier.value = "X352356"
* status = #available
* type = $sct#122555007 "Venous blood specimen"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* receivedTime = "2023-11-09T07:30:00Z"
//* request = Reference(urn:uuid:6bb29a10-2313-48b9-96ba-e903d0ae3c2b)
* collection.collector = Reference(urn:uuid:a7d5a837-288d-4234-923c-c9cb5b6f55a1) // Hans Hauser
* collection.collectedDateTime = "2011-05-30T06:15:00Z"
* collection.quantity.value = 6
* collection.quantity.unit = "mL"
* collection.method = $v2-0488#LNV
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.bodySite.text = "Right median cubital vein"
* container.identifier.value = "48736-15394-75465"
* container.description = "Anaerobic Culture Glass Bootle"
* container.type.text = "Orange top Bottle"
* container.capacity.value = 10
* container.capacity.unit = "mL"
* container.specimenQuantity.value = 6
* container.specimenQuantity.unit = "mL"
//* container.additiveReference = Reference(hep)
* note.text = "ok"

Instance: Blood-anaerob-30-min // TODO must be adapted !!!!!
InstanceOf: Specimen
Usage: #inline
* id = "4b37cb2b-b9fe-4742-aacd-b03259d3035a" // -> is valuable
// * contained = hep
* identifier.system = "http://ehr.acme.org/identifiers/collections"
* identifier.value = "23234352356"
* accessionIdentifier.system = "http://lab.acme.org/specimens/2011"
* accessionIdentifier.value = "X352356"
* status = #available
* type = $sct#122555007 "Venous blood specimen"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* receivedTime = "2023-11-09T06:45:00Z"
// * request = Reference(urn:uuid:6bb29a10-2313-48b9-96ba-e903d0ae3c2b)
* collection.collector = Reference(urn:uuid:a7d5a837-288d-4234-923c-c9cb5b6f55a1)
* collection.collectedDateTime = "2011-05-30T06:15:00Z"
* collection.quantity.value = 6
* collection.quantity.unit = "mL"
* collection.method = $v2-0488#LNV
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.bodySite.text = "Right median cubital vein"
* container.identifier.value = "48736-15394-75465"
* container.description = "Anaerobic Culture Glass Bootle"
* container.type.text = "Orange top Bottle"
* container.capacity.value = 10
* container.capacity.unit = "mL"
* container.specimenQuantity.value = 6
* container.specimenQuantity.unit = "mL"
// * container.additiveReference = Reference(hep)
* note.text = "ok"

Instance: hep
InstanceOf: Substance
Usage: #inline
* code = $v3-EntityCode#HEPL  // Additive Heparin/Lithium

// ╭──── 4-sepsis Specimen blood  ────────────────────────────╮
// │   Culture aerob, Blue top Bottle, after 0 and 30 min.    │
// ╰──────────────────────────────────────────────────────────╯
Instance: Blood-aerob-0-min // TODO must be adapted !!!!!
InstanceOf: Specimen
Usage: #inline
* id = "7ba89b7b-9898-46cf-ad9d-6cc1f4be31c2" // -> is valuable
// * contained = hep
* identifier.system = "http://ehr.acme.org/identifiers/collections"
* identifier.value = "23234352356"
* accessionIdentifier.system = "http://lab.acme.org/specimens/2011"
* accessionIdentifier.value = "X352356"
* status = #available
* type = $sct#122555007 "Venous blood specimen"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* receivedTime = "2023-11-09T07:30:00Z"
// * request = Reference(urn:uuid:a168c88a-f2c1-43d1-9dd7-611a64cd7be8)
* collection.collector = Reference(urn:uuid:a7d5a837-288d-4234-923c-c9cb5b6f55a1)
* collection.collectedDateTime = "2011-05-30T06:15:00Z"
* collection.quantity.value = 6
* collection.quantity.unit = "mL"
* collection.method = $v2-0488#LNV
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.bodySite.text = "Right median cubital vein"
* container.identifier.value = "48736-15394-75465"
* container.description = "Aerobic Culture Glass Bootle"
* container.type.text = "Blue top Bottle"
* container.capacity.value = 10
* container.capacity.unit = "mL"
* container.specimenQuantity.value = 6
* container.specimenQuantity.unit = "mL"
// * container.additiveReference = Reference(hep)
* note.text = "ok"

Instance: Blood-aerob-30-min // TODO must be adapted !!!!!
InstanceOf: Specimen
Usage: #inline
* id = "b0871e3b-f378-4f07-90ff-f08a20e42c02" // -> is valuable
// * contained = hep
* identifier.system = "http://ehr.acme.org/identifiers/collections"
* identifier.value = "23234352356"
* accessionIdentifier.system = "http://lab.acme.org/specimens/2011"
* accessionIdentifier.value = "X352356"
* status = #available
* type = $sct#122555007 "Venous blood specimen"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* receivedTime = "2023-11-09T07:30:00Z"
// * request = Reference(urn:uuid:a168c88a-f2c1-43d1-9dd7-611a64cd7be8)
* collection.collector = Reference(urn:uuid:a7d5a837-288d-4234-923c-c9cb5b6f55a1)
* collection.collectedDateTime = "2011-05-30T06:45:00Z"
* collection.quantity.value = 6
* collection.quantity.unit = "mL"
* collection.method = $v2-0488#LNV
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.bodySite.text = "Right median cubital vein"
* container.identifier.value = "48736-15394-75465"
* container.description = "Aerobic Culture Glass Bootle"
* container.type.text = "Blue top Bottle"
* container.capacity.value = 10
* container.capacity.unit = "mL"
* container.specimenQuantity.value = 6
* container.specimenQuantity.unit = "mL"
// * container.additiveReference = Reference(hep)
* note.text = "ok"

// ╭──── 4-sepsis Specimen urine  ───────────╮
// │      Direct Microscopy and Culture      │
// ╰─────────────────────────────────────────╯
Instance: Urine-sample
InstanceOf: Specimen
Usage: #inline
* id = "77ed2f36-b4b1-42da-bc57-563e293c04e8" 
// * contained = hep
* identifier.system = "http://ehr.acme.org/identifiers/collections"
* identifier.value = "23234352356"
* accessionIdentifier.system = "http://lab.acme.org/specimens/2011"
* accessionIdentifier.value = "X352356"
* status = #available
* type = $sct#122575003 "Urine specimen"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* receivedTime = "2023-11-09T07:30:00Z"
// * request = Reference(urn:uuid:fbcca2e1-3d0a-4cb8-9a02-c6f8b41a962e)
* collection.collector = Reference(urn:uuid:a7d5a837-288d-4234-923c-c9cb5b6f55a1)
* collection.collectedDateTime = "2011-05-30T06:15:00Z"
* collection.quantity.value = 60
* collection.quantity.unit = "mL"
* container.identifier.value = "48736-15394-75465"
* container.description = "Urine container"
* container.type.text = "Red cap sterile Urine container"
* container.capacity.value = 60
* container.capacity.unit = "mL"
* container.specimenQuantity.value = 60
* container.specimenQuantity.unit = "mL"
* note.text = "ok"

// ╭──── 4-sepsis Observation gram stain ────╮
// │  Gram stain: wbc, org-1, org-2, org-3   │
// ╰─────────────────────────────────────────╯
Instance: Observation-gram-stain
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "a335d2df-6f77-4ae8-bb6e-f7086fd25de0"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Microscopic observation Gram stain Nom (Bld)"  // Display Name
* code = $loinc#87969-2 "Microscopic observation [Identifier] in Blood by Gram stain"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* hasMember[+] = Reference(urn:uuid:c0393c7c-bc8a-47d2-a1a9-d4e1f87c6449) // Observation-wbc
* hasMember[+] = Reference(urn:uuid:4679fd4c-4ef3-4b91-b17c-8a97a25472fb) // Observation-org-1 -> Klebsiella pneumoniae
* hasMember[+] = Reference(urn:uuid:ae61519b-b7b4-4bfc-a7a9-f272130a2300) // Observation-org-2 -> Escherichia coli
* hasMember[+] = Reference(urn:uuid:e6ce8504-dadb-49c9-a997-a8ed4c7cba24) // Observation-org-3 -> Streptococcus mitis

Instance: Observation-wbc
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "c0393c7c-bc8a-47d2-a1a9-d4e1f87c6449"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#72163-9 "Leukocytes [Presence] in Specimen by Gram stain"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Beat Bunsen"
* valueCodeableConcept = $sct#2667000 "Absent"
* valueCodeableConcept.text = "None observed"

Instance: Observation-org-1
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "20e798b7-ef0d-4d22-9099-35219d264dac"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Beat Bunsen"
* valueCodeableConcept = $sct#87172008 "Gram-negative bacillus (organism)"
* hasMember[+] = Reference(urn:uuid:cd376843-9c66-4e63-b403-9299bd6c4fc2) // Observation-org-1-quant

Instance: Observation-org-1-quant
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "cd376843-9c66-4e63-b403-9299bd6c4fc2"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Observed Quantity"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Beat Bunsen"
* valueCodeableConcept = $sct#441614007 "Present + out of +++"
* valueCodeableConcept.text = "+"

Instance: Observation-org-2
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "ae61519b-b7b4-4bfc-a7a9-f272130a2300"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Beat Bunsen"
* valueCodeableConcept = $sct#87172008 "Gram-negative bacillus (organism)"
* hasMember[+] = Reference(urn:uuid:e6ce8504-dadb-49c9-a997-a8ed4c7cba24) // Observation-org-2-quant

Instance: Observation-org-2-quant
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "e6ce8504-dadb-49c9-a997-a8ed4c7cba24"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Observed Quantity"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Beat Bunsen"
// * valueCodeableConcept = $sct#441614007 "Present + out of +++"
// * valueCodeableConcept.text = "+"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"

Instance: Observation-org-3
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "a07e93cc-5908-4ed1-9678-afc61ef9fd9e"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Beat Bunsen"
* valueCodeableConcept = $sct#59206002 "Gram-positive coccus (organism)"
* hasMember[+] = Reference(urn:uuid:b564768f-937f-4132-a2eb-91efcf59b952) // Observation-org-3-quant

Instance: Observation-org-3-quant
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "b564768f-937f-4132-a2eb-91efcf59b952"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Observed Quantity"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Beat Bunsen"
// * valueCodeableConcept = $sct#441614007 "Present + out of +++"
// * valueCodeableConcept.text = "+"
* valueCodeableConcept = $sct#2667000 "Absent"
* valueCodeableConcept.text = "None observed"

// ╭── 4-sepsis Observation anaerobe-culture ───╮
// │  Anaerobe Culture: org-1, org-2, org-3     │
// │  -> each: growth, susc panel               │
// ╰────────────────────────────────────────────╯

Instance: Observation-anaerobe-culture
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "cea62faa-60b7-442b-b76a-da70ed2d92b1"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Bacteria identified Anaer cx Nom (Bld)" // Display Name
* code = $loinc#17934-1 "Bacteria identified in Blood by Anaerobe culture"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"

* hasMember[+] = Reference(urn:uuid:f89631cb-e973-4ba0-9f48-29b9472b9363) // Observation-anaerobe-culture-org-1
* hasMember[+] = Reference(urn:uuid:5c774433-62ad-4d21-b230-6de2d138a02d) // Observation-anaerobe-culture-org-2
* hasMember[+] = Reference(urn:uuid:296e1564-39d6-497b-9b40-e60f884dd5e4) // Observation-anaerobe-culture-org-3

    // ╭── 4-sepsis Observation anaerobe-culture-org-1 ─────────╮
    // │  anaerobe-culture-org-1 org-1-growth, org-1-susc-panel │
    // ╰────────────────────────────────────────────────────────╯
Instance: Observation-anaerobe-culture-org-1
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "f89631cb-e973-4ba0-9f48-29b9472b9363"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#634-6 "Bacteria identified in Specimen by Aerobe culture"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueCodeableConcept = $sct#56415008 "Klebsiella pneumoniae (organism)"
* hasMember[+] = Reference(urn:uuid:17a2d960-c34a-4276-be4a-e1e679fcf415) // Observation-anaerobe-culture-org-1-growth
* hasMember[+] = Reference(urn:uuid:3f40981d-f233-4315-b5c2-d6092d29ea95) // Observation-anaerobe-culture-org-1-susc-panel

// -------------- org-1-growth --------------------
Instance: Observation-anaerobe-culture-org-1-growth
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "17a2d960-c34a-4276-be4a-e1e679fcf415"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Microorganism Growth"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"

// -------------- org-1-susc-panel --------------------
Instance: Observation-anaerobe-culture-org-1-susc-panel
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "3f40981d-f233-4315-b5c2-d6092d29ea95"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* hasMember[+] = Reference(urn:uuid:af017871-32df-4823-972c-daa256db7eb0)  // Observation-org-1-amoxi-clav
* hasMember[+] = Reference(urn:uuid:5aa9b3c0-1057-48c2-ac73-b682fd8b9107)  // Observation-org-1-ciprofloxacin
* hasMember[+] = Reference(urn:uuid:9a0233a6-4f0a-4022-9b4c-9a43c83e343e)  // Observation-org-1-ceftriaxone

Instance: Observation-org-1-amoxi-clav
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "af017871-32df-4823-972c-daa256db7eb0"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18862-3 "Amoxicillin+Clavulanate [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 2
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: Observation-org-1-ciprofloxacin
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "5aa9b3c0-1057-48c2-ac73-b682fd8b9107"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18906-8 "Ciprofloxacin [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 4
* valueQuantity.comparator = #>
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#R "Resistant"

Instance: Observation-org-1-ceftriaxone
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "9a0233a6-4f0a-4022-9b4c-9a43c83e343e"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18895-3 "cefTRIAXone [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 0.5
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

    // ╭── 4-sepsis Observation anaerobe-culture-org-2 ─────────╮
    // │  anaerobe-culture-org-2 org-2-growth, org-2-susc-panel │
    // ╰────────────────────────────────────────────────────────╯
Instance: Observation-anaerobe-culture-org-2
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "5c774433-62ad-4d21-b230-6de2d138a02d"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#17934-1 "Bacteria identified in Blood by Anaerobe culture"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueCodeableConcept = $sct#112283007 "Escherichia coli (organism)"
* hasMember[+] = Reference(urn:uuid:a4191434-87f5-4455-a3fd-e857fea50ea5) // Observation-aerobe-culture-org-2-growth
* hasMember[+] = Reference(urn:uuid:531337e5-48ec-4ed7-a81f-d30d16b3d7cb) // Observation-aerobe-culture-org-2-susc-panel

        // -------------- org-2-growth --------------------
Instance: Observation-anaerobe-culture-org-2-growth
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "a4191434-87f5-4455-a3fd-e857fea50ea5"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Microorganism Growth"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"

        // -------------- org-2-susc-panel --------------------
Instance: Observation-anaerobe-culture-org-2-susc-panel
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "531337e5-48ec-4ed7-a81f-d30d16b3d7cb"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* hasMember[+] = Reference(urn:uuid:4f24af8e-00ae-417e-a87c-1c9a012b5e03)  // Observation-org-2-amoxi-clav
* hasMember[+] = Reference(urn:uuid:1f94a3ab-1c83-4ac5-afec-75fabdf79da4)  // Observation-org-2-ciprofloxacin
* hasMember[+] = Reference(urn:uuid:020c3f3d-a77b-42fa-a10a-c63ee7a5bd0f)  // Observation-org-2-ceftriaxone

Instance: Observation-org-2-amoxi-clav
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "4f24af8e-00ae-417e-a87c-1c9a012b5e03"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#88462-7 "Carbapenem [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 2
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: Observation-org-2-ciprofloxacin
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "1f94a3ab-1c83-4ac5-afec-75fabdf79da4"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18906-8 "Ciprofloxacin [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 4
* valueQuantity.comparator = #>
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#R "Resistant"

Instance: Observation-org-2-ceftriaxone
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "020c3f3d-a77b-42fa-a10a-c63ee7a5bd0f"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18895-3 "cefTRIAXone [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 0.5
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

    // ╭── 4-sepsis Observation anaerobe-culture-org-3 ─────────╮
    // │  anaerobe-culture-org-3 org-3-growth, org-3-susc-panel │
    // ╰────────────────────────────────────────────────────────╯
Instance: Observation-anaerobe-culture-org-3
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "296e1564-39d6-497b-9b40-e60f884dd5e4"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#17934-1 "Bacteria identified in Blood by Anaerobe culture"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueCodeableConcept = $sct#112283007 "Escherichia coli (organism)"
* hasMember[+] = Reference(urn:uuid:8c885526-b6ed-4f99-bcc1-d294d79e0c7c) // Observation-anaerobe-culture-org-3-growth
* hasMember[+] = Reference(urn:uuid:8c8b2f58-4cc1-4c21-8a92-e65ce31e60b1) // Observation-anaerobe-culture-org-3-susc-panel

        // -------------- org-3-growth --------------------
Instance: Observation-anaerobe-culture-org-3-growth
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "8c885526-b6ed-4f99-bcc1-d294d79e0c7c"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Microorganism Growth"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"

        // -------------- org-3-susc-panel --------------------
Instance: Observation-anaerobe-culture-org-3-susc-panel
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "8c8b2f58-4cc1-4c21-8a92-e65ce31e60b1"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* hasMember[+] = Reference(urn:uuid:6dbb348d-3ce5-451a-b7db-77c2e4d27bb3)  // Observation-org-3-amoxi-clav
* hasMember[+] = Reference(urn:uuid:eda9070d-cd59-45b3-a1fc-b79cc479c562)  // Observation-org-3-ciprofloxacin
* hasMember[+] = Reference(urn:uuid:ad7dd57d-69c4-493f-bf4e-b919664757ba)  // Observation-org-3-ceftriaxone

Instance: Observation-org-3-amoxi-clav
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "6dbb348d-3ce5-451a-b7db-77c2e4d27bb3"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#88462-7 "Carbapenem [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 2
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: Observation-org-3-ciprofloxacin
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "eda9070d-cd59-45b3-a1fc-b79cc479c562"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18906-8 "Ciprofloxacin [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 4
* valueQuantity.comparator = #>
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#R "Resistant"

Instance: Observation-org-3-ceftriaxone
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "ad7dd57d-69c4-493f-bf4e-b919664757ba"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18895-3 "cefTRIAXone [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 0.5
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

// ╭── 4-sepsis Observation aerobe-culture ─────╮
// │  Anaerobe Culture: org-1, org-2, org-3     │
// │  -> each: growth, susc panel               │
// ╰────────────────────────────────────────────╯

    // ╭── 4-sepsis Observation aerobe-culture-org-1 ───────────╮
    // │  aerobe-culture-org-1 org-1-growth, org-1-susc-panel   │
    // ╰────────────────────────────────────────────────────────╯

Instance: Observation-aerobe-culture
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "3184e9e2-4f12-43ce-9e83-f5c4a21c1eeb"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Bacteria identified Aer cx Nom (Bld)" // Display Name
* code = $loinc#17928-3 "Bacteria identified in Blood by Aerobe culture"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"

* hasMember[+] = Reference(urn:uuid:8b07a6b9-fefd-4ee5-87e1-04cdc4a15327) // Observation-aerobe-culture-org-1
* hasMember[+] = Reference(urn:uuid:dc20d7a8-a2ec-4291-b70e-b3049ea05cf3) // Observation-aerobe-culture-org-2
* hasMember[+] = Reference(urn:uuid:230f9ed4-0ab0-456e-9161-f1c290e24c92) // Observation-aerobe-culture-org-3

Instance: Observation-aerobe-culture-org-1
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "8b07a6b9-fefd-4ee5-87e1-04cdc4a15327"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#634-6 "Bacteria identified in Specimen by Aerobe culture"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueCodeableConcept = $sct#56415008 "Klebsiella pneumoniae (organism)"
* hasMember[+] = Reference(urn:uuid:f251d8b4-54fb-4060-89fe-f17e54874124) // Observation-aerobe-culture-org-1-growth
// * hasMember[+] = Reference(urn:uuid:531337e5-xxxx-4ed7-a81f-d30d16b3d7cb) // Observation-aerobe-culture-org-1-susc-panel

Instance: Observation-aerobe-culture-org-1-growth
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "f251d8b4-54fb-4060-89fe-f17e54874124"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Microorganism Growth"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"


Instance: Observation-aerobe-culture-org-2
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "dc20d7a8-a2ec-4291-b70e-b3049ea05cf3"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#634-6 "Bacteria identified in Specimen by Aerobe culture"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueCodeableConcept = $sct#112283007 "Escherichia coli (organism)"
* hasMember[+] = Reference(urn:uuid:e548aa0e-1662-4fda-838a-aa7d169ae44f) // Observation-aerobe-culture-org-2-growth
// * hasMember[+] = Reference(urn:uuid:531337e5-xxxxx-4ed7-a81f-d30d16b3d7cb) // Observation-aerobe-culture-org-2-susc-panel

Instance: Observation-aerobe-culture-org-2-growth
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "e548aa0e-1662-4fda-838a-aa7d169ae44f"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Microorganism Growth"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"


Instance: Observation-aerobe-culture-org-3
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "230f9ed4-0ab0-456e-9161-f1c290e24c92"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#634-6 "Bacteria identified in Specimen by Aerobe culture"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueCodeableConcept = $sct#112283007 "Escherichia coli (organism)"
* hasMember[+] = Reference(urn:uuid:1c453ab3-8e39-4530-a581-d3f87e1459fc) // Observation-aerobe-culture-org-2-growth
// * hasMember[+] = Reference(urn:uuid:531337e5-xxxxx-4ed7-a81f-d30d16b3d7cb) // Observation-aerobe-culture-org-2-susc-panel

Instance: Observation-aerobe-culture-org-3-growth
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "1c453ab3-8e39-4530-a581-d3f87e1459fc"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code.text = "Microorganism Growth"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"


// ╭────── 4-sepsis Observation org-1 susc ────────────────────────────╮
// │ Results: susceptibility Panel with 3 susceptibility observations  │
// ╰───────────────────────────────────────────────────────────────────╯


// ╭────── 4-sepsis Observation org-2 susc ────────────────────────────╮
// │ Results: susceptibility Panel with 4 susceptibility observations  │
// ╰───────────────────────────────────────────────────────────────────╯


Instance: Observation-org-2-susc-panel
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "24f1a039-5146-4e51-8c07-dfd94bc7370d"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* hasMember[+] = Reference(urn:uuid:9d3394c2-3b7b-4f88-9358-239adbeadba3)  // Observation-org-2-carbapenem-susc
* hasMember[+] = Reference(urn:uuid:4679fd4c-4ef3-4b91-b17c-8a97a25472fb)  // Observation-org-2-ciprofloxacin-susc
* hasMember[+] = Reference(urn:uuid:6a68a15a-5477-4d01-bfd6-fe7fa7cb97f8)  // Observation-org-2-neomycin-susc
* hasMember[+] = Reference(urn:uuid:28a7f5b7-7ba4-4caf-ac43-80326dcf2cfb)  // Observation-org-2-vancomycin-susc

Instance: Observation-org-2-carbapenem-susc
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "9d3394c2-3b7b-4f88-9358-239adbeadba3"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* category[studyType].text = "Mikrobielle Empfindlichkeits-Untersuchungen:Empfindlichkeit (Mikroorganismen):Zeitpunkt:^Patient:Set:"
* code = $loinc#88462-7 "Carbapenem [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 2
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: Observation-org-2-ciprofloxacin-susc
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "4679fd4c-4ef3-4b91-b17c-8a97a25472fb"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* category[studyType].text = "Mikrobielle Empfindlichkeits-Untersuchungen:Empfindlichkeit (Mikroorganismen):Zeitpunkt:^Patient:Set:"
* code = $loinc#18906-8 "Ciprofloxacin [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 4
* valueQuantity.comparator = #>
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#R "Resistant"

Instance: Observation-org-2-neomycin-susc
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "6a68a15a-5477-4d01-bfd6-fe7fa7cb97f8"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18953-0 "Neomycin [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 0.5
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: Observation-org-2-vancomycin-susc
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "28a7f5b7-7ba4-4caf-ac43-80326dcf2cfb"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#19000-9 "Vancomycin [Susceptibility]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "Beat Bunsen"
* valueQuantity.value = 1
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

// ╭────── 4-sepsis Observation org-3 susc ────────────────────────────╮
// │ Results: susceptibility Panel with 3 susceptibility observations  │
// ╰───────────────────────────────────────────────────────────────────╯

// ╭── 4-sepsis Observation urine-culture ──╮
// │  Urine Culture                         │
// ╰────────────────────────────────────────╯
Instance: Observation-urine-culture
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* id = "0c1b30c6-9a41-4c59-a403-531654214754"
* status = #final
* category[specialty] = $sct#408454008 "Clinical microbiology"
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $sct#117011000 "Quantitative urine culture (procedure)"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Beat Bunsen"
* valueCodeableConcept = $sct#441614007 "Present + out of +++"
* valueCodeableConcept.text = "+"
// * valueCodeableConcept = $sct#2667000 "Absent"
// * valueCodeableConcept.text = "None observed"



// ╭────── ServiceRequest 4-sepsis ──────────────────────────────────────────────────────────────────────────╮
// │  Microbiological Organism Identification: Gram stain, aerobic culture, anaerobic culture, urine-sample  │
// ╰─────────────────────────────────────────────────────────────────────────────────────────────────────────╯

Instance: ServiceRequest-gram-stain
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for microscopic bacterial identification in Blood"
Description: "Example for Service Request for Gram Stain of blood specimen"
Usage: #inline
* id = "21dbc37f-28b5-4ef8-9835-c79dbf7c99b7"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-white-bloodcell-count-blood"
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#87969-2 "Microscopic observation [Identifier] in Blood by Gram stain"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* requester = Reference(urn:uuid:10b95d3c-5402-4631-a404-e0d7e74c9a8f)  // urn:uuid:10b95d3c-5402-4631-a404-e0d7e74c9a8f
* reasonCode = $sct#238150007
* reasonCode.text = "Sepsis syndrome (disorder)"
// * insurance = Reference(HealthInsuranceCard)
* specimen[+] = Reference(urn:uuid:4fcf2138-6def-4b6e-beaa-35ee09d9cba8)  //  Blood-anaerob-0-min
* specimen[+] = Reference(urn:uuid:4b37cb2b-b9fe-4742-aacd-b03259d3035a)  //  Blood-anaerob-30-min
* specimen[+] = Reference(urn:uuid:7ba89b7b-9898-46cf-ad9d-6cc1f4be31c2)  //  Blood-aerob-0-min
* specimen[+] = Reference(urn:uuid:b0871e3b-f378-4f07-90ff-f08a20e42c02)  //  Blood-aerob-30-min
* specimen[+] = Reference(urn:uuid:77ed2f36-b4b1-42da-bc57-563e293c04e8)  //  Urine-sample

Instance: ServiceRequest-anaerobe-culture
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for bacterial identification by anaerobic culture in Blood"
Description: "Example for Service Request for anaerobic culture of blood specimen"
Usage: #inline
* id = "6bb29a10-2313-48b9-96ba-e903d0ae3c2b"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-white-bloodcell-count-blood"
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#17934-1 "Bacteria identified in Blood by Anaerobe culture"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* requester = Reference(urn:uuid:10b95d3c-5402-4631-a404-e0d7e74c9a8f)
* reasonCode = $sct#238150007
* reasonCode.text = "Sepsis syndrome (disorder)"
// * insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:4fcf2138-6def-4b6e-beaa-35ee09d9cba8)  //  Blood-anaerob-0-min
* specimen[+] = Reference(urn:uuid:4b37cb2b-b9fe-4742-aacd-b03259d3035a)  //  Blood-anaerob-30-min

Instance: ServiceRequest-aerobe-culture
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for bacterial identification by aerobic culture in Blood"
Description: "Example for Service Request for aerobic culture of blood specimen"
Usage: #inline
* id = "a168c88a-f2c1-43d1-9dd7-611a64cd7be8"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-white-bloodcell-count-blood"
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#17928-3 "Bacteria identified in Blood by Aerobe culture"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* requester = Reference(urn:uuid:10b95d3c-5402-4631-a404-e0d7e74c9a8f)
* reasonCode = $sct#238150007
* reasonCode.text = "Sepsis syndrome (disorder)"
// * insurance = Reference(HealthInsuranceCard)
// * specimen[0] = Reference(urn:uuid:7ba89b7b-9898-46cf-ad9d-6cc1f4be31c2)  //  Blood-aerob-0-min
// * specimen[+] = Reference(urn:uuid:b0871e3b-f378-4f07-90ff-f08a20e42c02)  //  Blood-aerob-30-min

Instance: ServiceRequest-urine-culture
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for bacterial identification by aerobic culture in Urine"
Description: "Example for Service Request for aerobic culture of urine specimen"
Usage: #inline
* id = "fbcca2e1-3d0a-4cb8-9a02-c6f8b41a962e"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-white-bloodcell-count-blood"
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#17928-3 "Bacteria identified in Blood by Aerobe culture"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b)
* requester = Reference(urn:uuid:10b95d3c-5402-4631-a404-e0d7e74c9a8f)
* reasonCode = $sct#238150007
* reasonCode.text = "Sepsis syndrome (disorder)"
// * insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:77ed2f36-b4b1-42da-bc57-563e293c04e8)  //  Urine-sample

// ╭────── PractitionerRole 4-sepsis ──────────────────────────────────────╮
// │ Hans Hauser: CHCorePractitionerRole CHCoreOrganization: Kantonsspital │
// ╰───────────────────────────────────────────────────────────────────────╯

Instance: HansHauserKantonsspital
InstanceOf: ChLabPractitionerRole
Title: "Hans Hauser at Kantonsspital"
Description: "PractitionerRole, refers to 4-sepsis"
Usage: #inline
* id = "10b95d3c-5402-4631-a404-e0d7e74c9a8f"
* practitioner = Reference(urn:uuid:a7d5a837-288d-4234-923c-c9cb5b6f55a1)
* organization = Reference(urn:uuid:37e198ba-ebae-4438-bf8f-faa42eff82c6)
* code = urn:oid:2.16.840.1.113883.2.9.6.2.7#3212	 "Medical and Pathology Laboratory Technicians"

Instance: HansHauser
InstanceOf: CHCorePractitioner
Title: "Hans Hauser"
Description: "Practitioner, Senior Physician at Kantonsspital, refers to 4-sepsis"
Usage: #inline
* id = "a7d5a837-288d-4234-923c-c9cb5b6f55a1"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000050700"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[ZSR].value = "A123313"
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
* telecom[=].value = "hans.hauser@kantonsspital.zug.ch"
* telecom[=].use = #work

Instance: Kantonsspital
InstanceOf: CHCoreOrganization
Title: "Kantonsspital"
Description: "Example for Hospital"
Usage: #inline
* id = "37e198ba-ebae-4438-bf8f-faa42eff82c6"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000235503"
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


// ------ Laboratory Practitioner and Organization
Instance: BeatBunsenLaborGantenbein
InstanceOf: ChLabPractitionerRole
Title: "Beat Bunsen at Labor Gantenbein"
Description: "PractitionerRole, refers to 1-tvt"
Usage: #inline
* id = "06929c8b-9fb9-43fe-b12c-439fd470be59"
* practitioner = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* organization = Reference(urn:uuid:17742f1f-ba4f-423c-b6de-463409f20431)
* code = urn:oid:2.16.840.1.113883.2.9.6.2.7#3212	 "Medical and Pathology Laboratory Technicians"

Instance: BeatBunsen
InstanceOf: ChLabPractitioner
Title: "Beat Bunsen"
Description: "Specialist for Laboratory Medicine, works in Labor Pipette"
Usage: #inline
* id = "12328339-f7d6-4bb6-80e4-89fd03ce5052"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000050717"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[ZSR].value = "A123316"
* name.use = #official
* name.family = "Bunsen"
* name.given = "Beat"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "033 444 77 88"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "beat.bunsen@labor-pipette.ch"
* telecom[=].use = #work
* qualification.code = $v2-0360#MD "Doctor of Medicine"
* address.line = "Laborstrasse 23"
* address.city = "Olten"
* address.postalCode = "4600"
* address.country = "CH"

Instance: LaborGantenbein
InstanceOf: CHCoreOrganization
Title: "Labor Gantenbein"
Description: "Laboratory Organization executing Laboratory tests and sending Diagnostic Reports"
Usage: #inline
* id = "17742f1f-ba4f-423c-b6de-463409f20431"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601055231116"
* name = "Labor Gantenbein"
* telecom.system = #phone
* telecom.value = "+41 547 78 89"
* telecom.use = #work
* address.line = "Max-Frisch Strasse 77"
* address.city = "Egerkingen"
* address.use = #work
* address.postalCode = "4622"
* address.country = "CH"
* contact.name.use = #official
* contact.name.text = "Dr. Beat Bunsen"
* contact.name.family = "Bunsen"
* contact.name.given = "Beat"
* contact.name.prefix = "Dr. med."
* contact.telecom.system = #phone
* contact.telecom.value = "+41334445566"
* contact.telecom.use = #work
* contact.telecom.system = #email
* contact.telecom.value = "beat.bunsen@labor-pipette.ch"
* contact.address.line[0] = "Max-Frisch Strasse 77"
* contact.address.line[+] = "4. Stock"
* contact.address.city = "Egerkingen"
* contact.address.postalCode = "4622"
* contact.address.country = "CH"
