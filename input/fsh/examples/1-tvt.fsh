Instance: LabResultReport-1-tvt
InstanceOf: ChLabReportDocument
Title: "Bundle 1-tvt"
Description: "Example of a Laboratory Report for scenario deep vein thrombosis, containing Results from Hematology, Coagulation and Clinical Chemistry"
Usage: #example
* meta.lastUpdated = "2023-08-18T01:43:30Z"
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"
* identifier.system = "http://example.org"
* identifier.value = "e65fa2fa-c130-4097-9848-486ee61f58df"
* type = #document
* timestamp = "2023-03-09T14:30:00+01:00"

// ╭────────────── instance 1-tvt ─────────────────────────────╮
// │  Scenario deep vein thrombosis: CBC-panel, CRP, D-Dimer   │
// ╰───────────────────────────────────────────────────────────╯

* entry[Composition].fullUrl = "urn:uuid:3dd8d097-67d0-4e39-aa68-5ab6fc13169c"
* entry[Composition].resource = Composition-1-tvt
* entry[DiagnosticReport].fullUrl = "urn:uuid:03464e4f-12f0-4d50-970d-f522b92a3f06"
* entry[DiagnosticReport].resource = DiagnosticReport-1-tvt

//================== Patient ==========================0
* entry[Patient].fullUrl = "urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef"
* entry[Patient].resource = HansGuggindieluft

//================== Observations CBC, CRP, D-Dimer ==========================0
* entry[Observation][+].fullUrl = "urn:uuid:0ad0810e-6eb4-11ee-b962-0242ac120002"
* entry[Observation][=].resource = Observation-CBC-panel
* entry[Observation][+].fullUrl = "urn:uuid:5c1ceea1-2751-4ddc-afb5-4c28037ba1be"
* entry[Observation][=].resource = Observation-WBC
* entry[Observation][+].fullUrl = "urn:uuid:04ec7690-a1e8-4fdf-be4f-6c92949e948a"
* entry[Observation][=].resource = Observation-RBC
* entry[Observation][+].fullUrl = "urn:uuid:2565be07-47a0-4cca-926e-a57e1ac96fb8"
* entry[Observation][=].resource = Observation-HGB
* entry[Observation][+].fullUrl = "urn:uuid:c4d64c0a-aafb-4b41-ae0b-a620b2a6c08c"
* entry[Observation][=].resource = Observation-HT
* entry[Observation][+].fullUrl = "urn:uuid:857cfa10-66ea-45ae-b236-e6e03af4be3f"
* entry[Observation][=].resource = Observation-MCV
* entry[Observation][+].fullUrl = "urn:uuid:3b263f29-44d8-468f-b612-e748442e1845"
* entry[Observation][=].resource = Observation-MCH
* entry[Observation][+].fullUrl = "urn:uuid:735c9244-497a-420d-b006-15a57be365b1" // entry[10]
* entry[Observation][=].resource = Observation-MCHC
* entry[Observation][+].fullUrl = "urn:uuid:32a7d6fb-dc8a-4673-8cef-c59c1c5397db"
* entry[Observation][=].resource = Observation-Platelet

* entry[Observation][+].fullUrl = "urn:uuid:c0eeeb40-77ed-46f3-b8d6-5fdac0a61f7c"
* entry[Observation][=].resource = Observation-CRP

* entry[Observation][+].fullUrl = "urn:uuid:f30d8df7-474f-401e-b5d4-f690d28d718d"
* entry[Observation][=].resource = Observation-D-Dimer

//================== Specimen ==========================0
* entry[Specimen][+].fullUrl = "urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74"
* entry[Specimen][=].resource = Blood
* entry[Specimen][+].fullUrl = "urn:uuid:8d38e1bd-dced-45c1-8978-949d6cfd21e8"
* entry[Specimen][=].resource = Blood-coag
* entry[Specimen][+].fullUrl = "urn:uuid:9b554309-f9d4-4559-ba81-91659cd11786"
* entry[Specimen][=].resource = Serum

//================== Device/TestKit ==========================0
* entry[Device][+].fullUrl = "urn:uuid:3b9c6849-cf71-45e9-9d88-31f7879342f0"
* entry[Device][=].resource = XP-300
* entry[Device][+].fullUrl = "urn:uuid:729d1c62-051e-4e3a-80d4-06f861b2a794"
* entry[Device][=].resource = TestkitCRP
* entry[Device][+].fullUrl = "urn:uuid:523fa1b9-f24d-4ae6-aa98-92d7f57b2066"
* entry[Device][=].resource = TestkitD-Dimer

//================== serviceRequest ==========================0
* entry[ServiceRequest][+].fullUrl = "urn:uuid:9e180157-5a4e-4a8a-8ca9-9b09c2056666"
* entry[ServiceRequest][=].resource = ServiceRequest-CBC-panel
* entry[ServiceRequest][+].fullUrl = "urn:uuid:1dcc636a-cc10-450d-9748-cfd760e2668f"   // entry[18]
* entry[ServiceRequest][=].resource = ServiceRequest-WBC
* entry[ServiceRequest][+].fullUrl = "urn:uuid:a64d92bf-8ca8-4e12-ae29-624c70ac0e26"
* entry[ServiceRequest][=].resource = ServiceRequest-RBC
* entry[ServiceRequest][+].fullUrl = "urn:uuid:ce16707a-b9bb-4c8d-8e4e-f8c135ed4a40"   // entry[20]
* entry[ServiceRequest][=].resource = ServiceRequest-HGB
* entry[ServiceRequest][+].fullUrl = "urn:uuid:e4072da7-a760-47ba-83e7-59796c59a944"
* entry[ServiceRequest][=].resource = ServiceRequest-HT
* entry[ServiceRequest][+].fullUrl = "urn:uuid:6adcf650-19cb-4d58-b27c-3cf52aa32d86"
* entry[ServiceRequest][=].resource = ServiceRequest-MCV
* entry[ServiceRequest][+].fullUrl = "urn:uuid:3edb7f4c-e0c8-45c5-aee9-83d326aa61ab"
* entry[ServiceRequest][=].resource = ServiceRequest-MCH
* entry[ServiceRequest][+].fullUrl = "urn:uuid:82db46b7-acef-49f4-9456-6e9cbd62a27b"  // entry[26]
* entry[ServiceRequest][=].resource = ServiceRequest-MCHC
* entry[ServiceRequest][+].fullUrl = "urn:uuid:bfc054ce-704c-11ee-b962-0242ac120002"
* entry[ServiceRequest][=].resource = ServiceRequest-Platelet
* entry[ServiceRequest][+].fullUrl = "urn:uuid:8d98f9d1-581b-4495-93aa-4a522fa30a6c"
* entry[ServiceRequest][=].resource = ServiceRequest-CRP
* entry[ServiceRequest][+].fullUrl = "urn:uuid:e0330c6c-4f9b-46e7-8817-2ae5301f5d14"
* entry[ServiceRequest][=].resource = ServiceRequest-D-Dimer

//=============== practitioner, organization =============================0
* entry[PractitionerRole][+].fullUrl = "urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048"   // entry[30]
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

// ╭────────────── Composition 1-tvt ────────────────────────╮
// │ Scenario deep vein thrombosis: CBC-panel, CRP, D-Dimer  │
// ╰─────────────────────────────────────────────────────────╯

Instance: Composition-1-tvt
InstanceOf: ChLabReportComposition
Description: "Example of Composition in the scenario of deep vein thrombosis"
Usage: #inline
* id = "3dd8d097-67d0-4e39-aa68-5ab6fc13169c"

// ╭────────────── Extension ────────────────────────────────────╮
// │ provides a link to the order [(Reference(ServiceRequest)]   │
// │               or requisition [ServiceRequest.requisition]   │
// │ (i.e., 'Request.groupIdentifier')] that this report         │
// │                document is based on and fulfills            │
// ╰─────────────────────────────────────────────────────────────╯

* extension[information-recipient][+].valueReference = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "MarcMustermannArztpraxis"  //  1
* extension[information-recipient][+].valueReference = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"        //  2
* extension[diagnosticReport-reference][+].valueReference = Reference(urn:uuid:03464e4f-12f0-4d50-970d-f522b92a3f06) "DiagnosticReport-1-tvt"  //  3
* extension[basedOn-order-or-requisition][+].valueReference = Reference(urn:uuid:9e180157-5a4e-4a8a-8ca9-9b09c2056666) "ServiceRequest-CBC-panel" //  4
* extension[basedOn-order-or-requisition][+].valueReference = Reference(urn:uuid:8d98f9d1-581b-4495-93aa-4a522fa30a6c) "ServiceRequest-CRP"       //  5
* extension[basedOn-order-or-requisition][+].valueReference = Reference(urn:uuid:e0330c6c-4f9b-46e7-8817-2ae5301f5d14) "ServiceRequest-D-Dimer"   //  6

// Composition Identifier must be same as in DiagnosticReport
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
// * text.status = #additional
// * text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Case study 1-tvt</div><div>      <h3>Suspicion of deep vein thrombosis</h3>      <p>A patient, Tobias Timmermann, presents to Dr. med. Marc Mustermann at the Olten group practice on 09.03.2016. He verbally identifies himself via his master data as   Tobias Timmermann, 01.01.1984. He reports unclear leg pain in the left lower leg as well as simultaneously occurring respiratory pain and cough. The doctor carries out the anamnesis and physical examination and prescribes the following laboratory parameters:       </p>        <ul>            <li>Blood cell count incl. differentiation</li>            <li>CRP</li>            <li>D-dimer</li>        </ul>      <p>        The doctor carries out the Blood count and the CRP determination himself by means of point of care diagnostics, the D-dimer diagnostics is prescribed as quantitative diagnostics in an external sending laboratory. To obtain the sample, a Blood sample is taken lying down (1 EDTA tube, 2 citrate tubes of 5 ml). The order is transmitted to the external laboratory and the sample is sent to the external dispatch laboratory by courier ordered by telephone. The results of the internal point of care diagnostics (Blood count and CRP) are entered in the patient`s laboratory sheet in the doctor`s office software (manually or via locally installed electronic interfaces). A prescription is therefore issued by the doctor to the patient for self-administration of an anti-thrombotic agent. The results of the sending-in laboratory arrive electronically at the GP`s on the same evening and are also entered in the patient`s laboratory sheet. By using the present exchange format, this process can be fully automated. After a telephone enquiry by the doctor at the sending laboratory due to a borderline D-dimer result, the information is given that a deep vein thrombosis cannot be ruled out in this situation by means of D-dimer and the patient is therefore called back the next day for a sonography of the legs.      </p>         <p>As it is probably a primary leg vein thrombosis, Dr Eva Erlenmeier from the Pipette laboratory sends feedback to Dr Mustermann with the recommendation to carry out a    thrombophilia screening, which includes the following analyses: Quick, aPTT, fibrinogen, antithrombin (funct.), thrombin time I 2.5 NIH/ml, APC resistance, D-dimers, protein C, (aPTT method), protein S antigen. The analyses can be carried out directly from the samples of the citrate tubes sent along.      </p>  </div></div>"

* status = #final
* type = $loinc#11502-2 "Laboratory report" // must be the same as in DiagnosticReport.code
// * category[studyType] = $loinc#26436-6 "Laboratory studies (set)"
// * category[specialty] = $sct#394915009 "General pathology"

// Composition Subject must be same as in DiagnosticReport
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* date = "2023-03-09T14:30:00+01:00"
* author = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052)
* author.display = "Dr. Eva Erlenmeyer"
* title = "Laboratory Report - 10 March, 2023 14:30"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2020-12-27T14:30:00+01:00"
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

* section[lab-subsections].section[0].title = "Hematology studies (set)"
* section[lab-subsections].section[=].code  = $loinc#58410-2
* section[lab-subsections].section[=].entry = Reference(urn:uuid:0ad0810e-6eb4-11ee-b962-0242ac120002) "Observation-CBC-panel"
// * section[lab-subsections].section[+].title = "Hematology studies (set)"
// * section[lab-subsections].section[=].code  = $loinc#6690-2
// * section[lab-subsections].section[=].entry = Reference(Observation-WBC)
* section[lab-subsections].section[+].title = "Chemistry studies (set)"
* section[lab-subsections].section[=].code  = $loinc#18719-5
* section[lab-subsections].section[=].entry = Reference(urn:uuid:c0eeeb40-77ed-46f3-b8d6-5fdac0a61f7c) "Observation-CRP"

* section[lab-subsections].section[+].title = "Coagulation studies (set)"
* section[lab-subsections].section[=].code  = $loinc#18720-3
* section[lab-subsections].section[=].entry = Reference(urn:uuid:f30d8df7-474f-401e-b5d4-f690d28d718d) "Observation-D-Dimer"

// ╭──────────── DiagnosticReport 1-tvt ─────────────────────╮
// │  Scenario deep vein thrombosis: CBC-panel, CRP, D-Dimer │
// ╰─────────────────────────────────────────────────────────╯
Instance: DiagnosticReport-1-tvt
InstanceOf: ChLabDiagnosticReport
Description: "Example of DiagnosticReport for sevaral lab results"
Usage: #inline
* id = "03464e4f-12f0-4d50-970d-f522b92a3f06"
* extension[DiagnosticReportCompositionR5].url = $extension-DiagnosticReport.composition
* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:3dd8d097-67d0-4e39-aa68-5ab6fc13169c)

// must be same identifier as in Composition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"

* basedOn[0] = Reference(urn:uuid:9e180157-5a4e-4a8a-8ca9-9b09c2056666) "ServiceRequest-CBC-panel"
* basedOn[+] = Reference(urn:uuid:8d98f9d1-581b-4495-93aa-4a522fa30a6c) "ServiceRequest-CRP"
* basedOn[+] = Reference(urn:uuid:e0330c6c-4f9b-46e7-8817-2ae5301f5d14) "ServiceRequest-D-Dimer"

* status = #final
// * category[studyType] = $loinc#26436-6 "Laboratory studies (set)"
// * category[specialty] = $sct#394915009 "General pathology"
* code = $loinc#11502-2 "Laboratory report"

* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* performer.display = "Dr. Eva Erlenmeyer"

* specimen[0] = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood Sample"
* specimen[+] = Reference(urn:uuid:8d38e1bd-dced-45c1-8978-949d6cfd21e8) "Blood Sample Coagulation"
* specimen[+] = Reference(urn:uuid:9b554309-f9d4-4559-ba81-91659cd11786) "Serum Sample"

* result[0] = Reference(urn:uuid:0ad0810e-6eb4-11ee-b962-0242ac120002) "Observation-CBC-panel"
// no dependent observations!
* result[+] = Reference(urn:uuid:c0eeeb40-77ed-46f3-b8d6-5fdac0a61f7c) "Observation-CRP"
* result[+] = Reference(urn:uuid:f30d8df7-474f-401e-b5d4-f690d28d718d) "Observation-D-Dimer"

// ╭──────── Patient 1-tvt ──────────╮
// │ Scenario deep vein thrombosis   │
// ╰─────────────────────────────────╯

// ╭────── Observation 1-tvt ──────────────────────────────────────────────╮
// │ CBC-panel, WBC, RBC, HGB, HT, MCV, MCH, MCHC, Platelet, CRP, D-Dimer  │
// ╰───────────────────────────────────────────────────────────────────────╯

Instance: Observation-CBC-panel
InstanceOf: ChLabObservationResultsLaboratory
// InstanceOf: ChLabCBC  // Own CPC Profile
Title: "CBC panel - Blood by Automated count 1-tvt"
Description: "This panel is the traditional hemogram plus platelet count which must now be reported with hemograms according to current US re-imbursement rule The panel includes 2 different RDWs to accommodate the two different ways of reporting them. (Most automated instruments report as a percent ). The hemoglobin produced by the automatic counters does not use a counting method to generate the hemoglobin so we have used the methodless version of hemoglobin in this panel."
Usage: #inline
* id = "0ad0810e-6eb4-11ee-b962-0242ac120002"
* status = #final

* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
* code.text = "CBC panel Auto (Bld)" // LOINC Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* specimen = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood Sample"
* device = Reference(urn:uuid:3b9c6849-cf71-45e9-9d88-31f7879342f0) "Sysmex XP-300"

* hasMember[+] = Reference(urn:uuid:5c1ceea1-2751-4ddc-afb5-4c28037ba1be) "Observation-WBC"
* hasMember[+] = Reference(urn:uuid:04ec7690-a1e8-4fdf-be4f-6c92949e948a) "Observation-RBC"
* hasMember[+] = Reference(urn:uuid:2565be07-47a0-4cca-926e-a57e1ac96fb8) "Observation-HGB"
* hasMember[+] = Reference(urn:uuid:c4d64c0a-aafb-4b41-ae0b-a620b2a6c08c) "Observation-HT"
* hasMember[+] = Reference(urn:uuid:857cfa10-66ea-45ae-b236-e6e03af4be3f) "Observation-MCV"
* hasMember[+] = Reference(urn:uuid:3b263f29-44d8-468f-b612-e748442e1845) "Observation-MCH"
* hasMember[+] = Reference(urn:uuid:735c9244-497a-420d-b006-15a57be365b1) "Observation-MCHC"
* hasMember[+] = Reference(urn:uuid:32a7d6fb-dc8a-4673-8cef-c59c1c5397db) "Observation-Platelet"

Instance: Observation-WBC
InstanceOf: ChLabObservationResultsLaboratory
Title: "Leukocytes [#/volume] in Blood by Automated count"  // LOINC Long Common Name
Description: "Leukocytes or white blood cells (WBCs) are immune cells that fight infection, neoplasms and other inflammatory conditions, and mediate allergic responses. There are five types of WBCs normally present in the circulation that are all derived from a similar stem cell in the bone marrow. The five type of WBCs are divided into two groups based on the presence or absence of granules in the cytoplasm. The granulocytes include the neutrophils, basophils and eosinophils. The non-granulocytes include the lymphocytes and the monocytes. The neutrophils fight infection by ingesting and digesting bacteria. Eosinophils and basophils respond to allergic reactions and are capable of ingesting antigen-antibody complexes. Monocytes phagocytose bacteria and release interferon to stimulate the immune system. Lymphocytes are divided into T-cells and B-cells. T-cell immunity is cellular and involves the activation of phagocytes and B-cell immunity uses antibodies to fight infection. Both elevated and low leukocyte counts can be markers of infection and malignancy, and low leukocyte counts are associated with a variety of primary and secondary immunodeficiencies, depending on the WBC type(s) that are out of range. (Mosby's manual of diagnostic and laboratory tests, Kathleen Deska Pagana; Timothy James Pagana, Elsevier St. Louis, Mo ©2010)"  // LOINC Part Description
Usage: #inline
* id = "5c1ceea1-2751-4ddc-afb5-4c28037ba1be"
* status = #final

* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
* code.text = "WBC Auto (Bld) [#/Vol]" // LOINC Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 10 '10*3/uL' "10*3/uL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "10*3/uL"
* method = $sct#702659008 "Automated count technique (qualifier value)"
* referenceRange.low.value = 4.5 
* referenceRange.low.unit = "10*3/uL"
* referenceRange.high.value = 11
* referenceRange.high.unit = "10*3/uL"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"


Instance: Observation-RBC
InstanceOf: ChLabObservationResultsLaboratory
Title: "Erythrocytes [#/volume] in Blood by Automated count"  // LOINC Long Common Name
Description: "Erythrocytes or red blood cells (RBCs) are the cells in the circulation that carry oxygen to and remove carbon dioxide from the tissues throughout the body. They are produced in the bone marrow in response to erythropoietin where they transition through six stages over a seven day period. When they are released into the circulation, their nucleus has been extruded and they measure 6-8 microns in diameter. The lifespan of RBCs is about 120 days. When the RBC ages the cell membrane becomes less pliable and tears as they cell travels through the micro vessels of the body. The damaged RBCs are removed from the circulation by the spleen. Variations in number, shape and size of RBCs are indicative of many diseases and disorders. There are many factors that may lead to decreased numbers of RBCs including hemorrhage, hemolysis, iron or vitamin deficiency, marrow failure and more. Larger than normal RBCs may be indicative of liver disease while smaller than normal RBCs are seen in thalassemias and other anemias.(Mosby's manual of diagnostic and laboratory tests, Kathleen Deska Pagana; Timothy James Pagana, Elsevier St. Louis, Mo ©2010)"  // LOINC Part Description
Usage: #inline
* id = "04ec7690-a1e8-4fdf-be4f-6c92949e948a"
* status = #final

* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* code.text =  "RBC Auto (Bld) [#/Vol]"  // LOINC Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 4.58 '10*6/uL' "10*6/uL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "10*6/uL"
* method = $sct#702659008 "Automated count technique (qualifier value)"
* referenceRange.low.value = 4.1
* referenceRange.low.unit = "10*6/uL"
* referenceRange.high.value = 6.1
* referenceRange.high.unit = "10*6/uL"

* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

Instance: Observation-HGB
InstanceOf: ChLabObservationResultsLaboratory
Title: "Hemoglobin [Mass/volume] in Blood" //// LOINC Long Common Name
Description: "This is the the code included in the CBC auto. It is NOT obtained via the automated counting but uses a chemistry method just like most other hemoglobins."
Usage: #inline
* id = "2565be07-47a0-4cca-926e-a57e1ac96fb8"
* status = #final
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Hemoglobin (Bld) [Mass/Vol]" // LOINC Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood sammple"

* valueQuantity = 10.8 'umol/L' "umol/L"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
* referenceRange.low.value = 8.7  // women 7.4
* referenceRange.low.unit = "umol/L"
* referenceRange.high.value = 11.2    // women 9.9
* referenceRange.high.unit = "umol/L"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"

Instance: Observation-HT
InstanceOf: ChLabObservationResultsLaboratory
Title: "Hematocrit [Volume Fraction] of Blood by Automated count"   // LOINC Long Common Name
Description: "The volume of packed red blood cells in a blood sample. The volume is measured by centrifugation in a tube with graduated markings, or with automated blood cell counters. It is an indicator of erythrocyte status in disease. For example, in anemia the volume is low and in polycythemia it is high."
Usage: #inline
* id = "c4d64c0a-aafb-4b41-ae0b-a620b2a6c08c"
* status = #final

* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"
* code.text = "Hematocrit Auto (Bld) [Volume fraction]" // LOINC Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* specimen = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood sammple"
* valueQuantity = 43 '%' "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "%"
* referenceRange.low.value = 38
* referenceRange.low.unit = "%"
* referenceRange.high.value = 46
* referenceRange.high.unit = "%"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

Instance: Observation-MCV
InstanceOf: ChLabObservationResultsLaboratory
Title: "MCV [Entitic mean volume] in Red Blood Cells by Automated count"   // LOINC Long Common Name
Description: "The volume of packed red blood cells in a blood sample. The volume is measured by centrifugation in a tube with graduated markings, or with automated blood cell counters. It is an indicator of erythrocyte status in disease. For example, in anemia the volume is low and in polycythemia it is high."
Usage: #inline
* id = "857cfa10-66ea-45ae-b236-e6e03af4be3f"
* status = #final

* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#787-2 "MCV [Entitic mean volume] in Red Blood Cells by Automated count"
* code.text = "MCV Auto (RBC) [Entitic vol]" // LOINC Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 85 'fL' "fL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "fL"
* referenceRange.low.value = 82.4
* referenceRange.low.unit = "fL"
* referenceRange.high.value = 87.3
* referenceRange.high.unit = "fL"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

Instance: Observation-MCH
InstanceOf: ChLabObservationResultsLaboratory
Title: "MCH [Entitic mass] by Automated count"   // LOINC Long Common Name
Description: "The mean corpuscular hemoglobin, or 'mean cell hemoglobin' (MCH), is the average mass of hemoglobin per red blood cell in a blood sample. It is decreased in hypochromic anemias, and increased in hyperchromic anemias. MCH is obtained by dividing the total mass of hemoglobin by the number of red blood cells in a volume of blood."
Usage: #inline
* id = "3b263f29-44d8-468f-b612-e748442e1845"
* status = #final

* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#785-6 "MCH [Entitic mass] by Automated count"
* code.text = "MCH Auto (RBC) [Entitic mass]" // LOINC Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 30 'pg' "pg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "pg"
* referenceRange.low.value = 38
* referenceRange.low.unit = "pg"
* referenceRange.high.value = 46
* referenceRange.high.unit = "pg"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

//// =================================================
Instance: Observation-MCHC
InstanceOf: ChLabObservationResultsLaboratory
Title: "MCHC [Entitic Mass/volume] in Red Blood Cells by Automated count"   // LOINC Long Common Name
Description: "The mean corpuscular hemoglobin concentration, or MCHC, is a measure of the concentration of hemoglobin in a given volume of packed red blood cell. It is reported as part of a standard complete blood count."
Usage: #inline
* id = "735c9244-497a-420d-b006-15a57be365b1"
* status = #final

* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#786-4 "MCHC [Entitic Mass/volume] in Red Blood Cells by Automated count"
* code.text = "MCHC Auto (RBC) [Mass/Vol]" // LOINC Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 34.7 'g/dL' "g/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "g/dL"
* referenceRange.low.value = 30
* referenceRange.low.unit = "g/dL"
* referenceRange.high.value = 34
* referenceRange.high.unit = "g/dL"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

// =============== Thrombocyte Count =======================
Instance: Observation-Platelet
InstanceOf: ChLabObservationResultsLaboratory
Title: "Platelets [#/volume] in Blood by Automated count"   // LOINC Long Common Name
Description: "Platelets are miniature fragments of cytoplasm that break off of megakaryocytes. Their primary function is to inhibit excessive hemorrhage after blood vessel injury. Platelets cling to the damaged part of the blood vessel where they become activated, recruit other platelets to the site, and begin the cascade of physical and chemical events that lead to clot formation. Activated platelets secrete cytokines, chemokines, and growth factors, all which play a role in thrombus development.When activated, platelets stimulate monocytes and neutrophils to leave the blood vessel and enter the tissue. PMID: 27226790 The normal range of platelets is 150,000 to 450,000 platelets/uL. Lower than normal platelet counts can lead to increased bleeding and is caused by a number of factors including: chemotherapy, autoimmune disorders and some medications. Increased platelets can cause hypercoagulation due to cancer, anemia, spleen removal and some medications.[MedlinePlus Encyclopedia:003647]"
Usage: #inline
* id = "32a7d6fb-dc8a-4673-8cef-c59c1c5397db"
* status = #final

* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
* code.text = "Platelets Auto (Bld) [#/Vol]" // LOINC Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 200 '10*3/uL' "10*3/uL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "10*3/uL"
* referenceRange.low.value = 150
* referenceRange.low.unit = "10*3/uL"
* referenceRange.high.value = 450
* referenceRange.high.unit = "10*3/uL"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

// ========================================
Instance: Observation-CRP
InstanceOf: ChLabObservationResultsLaboratory
Title: "Observation-CRP"
Description: "Example for CRP Observation"
Usage: #inline
* id = "c0eeeb40-77ed-46f3-b8d6-5fdac0a61f7c"
* status = #final

* category[specialty] = $sct#394596001
* category[specialty].text = "Chemical pathology"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* category[studyType].text = "Chemistry studies (set)"
* code = $loinc#1988-5 "C reactive protein [Mass/volume] in Serum or Plasma" // subset of loinc
* code.text = "CRP [Mass/Vol]" // display name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 8 'mg/L' "mg/L"
//* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#83611000052104 "Turbidimetry technique (qualifier value)"
* specimen = Reference(urn:uuid:9b554309-f9d4-4559-ba81-91659cd11786) "Serum Sample"
* device = Reference(urn:uuid:729d1c62-051e-4e3a-80d4-06f861b2a794) "Afinion™ CRP Test"
* referenceRange.high.value = 10  // depends on method
* referenceRange.high.unit = "mg/L"

Instance: Observation-D-Dimer
InstanceOf: ChLabObservationResultsLaboratory
Title: "Observation-D-Dimer"
Description: "Example for D-Dimer Observation"
Usage: #inline
* id = "f30d8df7-474f-401e-b5d4-f690d28d718d"
* status = #final

* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#71427-9 "Fibrin D-dimer [Mass/volume] in Blood by Rapid immunoassay"
* code.text = "Fibrin D-dimer FEU IA (Bld) [Mass/Vol]" // display name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueQuantity = 1.8 'mg/L' "mg/L"
* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#726449005 "Immunoassay technique (qualifier value)"
* specimen = Reference(urn:uuid:8d38e1bd-dced-45c1-8978-949d6cfd21e8) "Blood Sample Coagulation"
* device = Reference(urn:uuid:523fa1b9-f24d-4ae6-aa98-92d7f57b2066) "Roche CARDIAC D-Dimer Testkit"
* referenceRange.high.value = 0.5  // depends on method
* referenceRange.high.unit = "mg/L"

// ╭───── specimen 1-tvt ─────╮
// │ Blood, Blood-coag, Serum │
// ╰──────────────────────────╯
Instance: Blood
InstanceOf: ChLabSpecimen
Title: "Blood Sample"
Description: "Example for Specimen for Haematological Examination"
Usage: #inline
* id = "3a98a13d-cf64-40bb-b7a0-87ef45193a74"
* status = #available
* type = $sct#119297000 "Blood specimen"
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* collection.collector = Reference(urn:uuid:e23d6fa1-88bc-497c-a4df-eb3fa60eaa37) "Dr. med. Marc Mustermann"
* collection.collectedDateTime = "2024-04-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container"
* note.text = "Specimen is grossly lipemic"

Instance: Blood-coag
InstanceOf: ChLabSpecimen
Title: "Blood Sample Coagulation"
Description: "Example for Specimen for haemostatic Examination"
Usage: #inline
* id = "8d38e1bd-dced-45c1-8978-949d6cfd21e8"
* identifier.value = "48736-55555-75465"
* accessionIdentifier.value = "4e88a-66666-dd888"
* status = #available
* type = $sct#119297000 "Blood specimen"
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* receivedTime = "2020-08-16T16:40:17Z"
// * request = Reference(Lab) Why the specimen was collected
* collection.collector = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048)
* collection.collectedDateTime = "2024-04-16T06:40:17Z"
* processing.timePeriod.start = "2024-04-16T06:40:17Z" // usually same time as collectedDateTime
* processing.timePeriod.end = "2024-04-17T06:40:17Z" // when processing should be terminated
* container.identifier.value = "4e88a-bc987-dd888-00001-bcoag"
* container.description = "S-Monovette grün"
* container.type = $sct#702296009 "Non-evacuated blood collection tube, sodium citrate (physical object)"
// Specimen.container.additive[x]: max allowed = 0, but found 1 => is container.type
// * container.additiveCodeableConcept = $v2-0371#C38 "3.8% Citrate" 

Instance: Serum
InstanceOf: ChLabSpecimen
Title: "Serum Sample"
Description: "Example for Specimen of Serum from venous blood"
Usage: #inline
* id = "9b554309-f9d4-4559-ba81-91659cd11786"
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen"
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* collection.collector = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048)
* collection.collectedDateTime = "2024-04-16T06:40:17Z"
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* container.type = $sct#706053007 "General specimen container"

// ╭── serviceRequest 1-tvt ──────────────────────────────────────────────╮
// │ CBC-panel, WBC, RBC, HGB, HT, MCV, MCH, MCHC, Platelet, CRP, D-Dimer │
// ╰──────────────────────────────────────────────────────────────────────╯
Instance: ServiceRequest-CBC-panel
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for CBC panel - Blood by Automated count"
Description: "Example for Service Request of CBC panel"
Usage: #inline
* id = "9e180157-5a4e-4a8a-8ca9-9b09c2056666"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://example.org/order-placer-organization"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-HbHtBlood"

* basedOn[0] = Reference(urn:uuid:1dcc636a-cc10-450d-9748-cfd760e2668f) "ServiceRequest-WBC"
* basedOn[+] = Reference(urn:uuid:a64d92bf-8ca8-4e12-ae29-624c70ac0e26) "ServiceRequest-RBC"
* basedOn[+] = Reference(urn:uuid:ce16707a-b9bb-4c8d-8e4e-f8c135ed4a40) "ServiceRequest-HGB"
* basedOn[+] = Reference(urn:uuid:e4072da7-a760-47ba-83e7-59796c59a944) "ServiceRequest-HT"
* basedOn[+] = Reference(urn:uuid:6adcf650-19cb-4d58-b27c-3cf52aa32d86) "ServiceRequest-MCV"
* basedOn[+] = Reference(urn:uuid:3edb7f4c-e0c8-45c5-aee9-83d326aa61ab) "ServiceRequest-MCH"
* basedOn[+] = Reference(urn:uuid:82db46b7-acef-49f4-9456-6e9cbd62a27b) "ServiceRequest-MCHC"
* basedOn[+] = Reference(urn:uuid:bfc054ce-704c-11ee-b962-0242ac120002) "ServiceRequest-Platelet"

// ---- grouperID, must be repeated in all basedOn SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "http://example.org/ProviderNumber/Requisition"
* requisition.value = "ReqID-1234567"
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
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* requester = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann at Arztpraxis"
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood Sample"

Instance: ServiceRequest-WBC
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for Leukocytes [#/volume] in Blood by Automated count"
Description: "Example for Service Request of Hemoglobin Concentration in Blood"
Usage: #inline
* id = "1dcc636a-cc10-450d-9748-cfd760e2668f"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://example.org/order-placer-organization"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-white-bloodcell-count-blood"
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "http://example.org/ProviderNumber/Requisition"
* requisition.value = "ReqID-1234567"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* requester = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann at Arztpraxis"
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood Sample"

Instance: ServiceRequest-RBC
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for Erythrocytes [#/volume] in Blood by Automated count"
Description: "Example for Service Request of RBC"
Usage: #inline
* id = "a64d92bf-8ca8-4e12-ae29-624c70ac0e26"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://example.org/order-placer-organization"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-potassium-serum"
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "http://example.org/ProviderNumber/Requisition"
* requisition.value = "ReqID-1234567"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* requester = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann at Arztpraxis"
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood Sample"

Instance: ServiceRequest-HGB
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for Hemoblobin "
Description: "Example for Service Request of Hemoglobin Concentration in Blood"
Usage: #inline
* id = "ce16707a-b9bb-4c8d-8e4e-f8c135ed4a40"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://example.org/order-placer-organization"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-potassium-serum"
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "http://example.org/ProviderNumber/Requisition"
* requisition.value = "ReqID-1234567"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* requester = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann at Arztpraxis"
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood Sample"

Instance: ServiceRequest-HT
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for Hematocrit"
Description: "Example for Service Request of Hematocrit in Blood"
Usage: #inline
* id = "e4072da7-a760-47ba-83e7-59796c59a944"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://example.org/order-placer-organization"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-HbHtBlood"
// ---- grouperID, must be repeated in all basedOn SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "http://example.org/ProviderNumber/Requisition"
* requisition.value = "ReqID-1234567"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* requester = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann at Arztpraxis"
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood Sample"

Instance: ServiceRequest-MCV
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for MCV [Entitic mean volume] in Red Blood Cells by Automated count"
Description: "Example for Service Request of MCV in Blood"
Usage: #inline
* id = "6adcf650-19cb-4d58-b27c-3cf52aa32d86"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://example.org/order-placer-organization"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-HbHtBlood"
// ---- grouperID, must be repeated in all basedOn SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "http://example.org/ProviderNumber/Requisition"
* requisition.value = "ReqID-1234567"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#787-2 "MCV [Entitic mean volume] in Red Blood Cells by Automated count"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* requester = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann at Arztpraxis"
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood Sample"

Instance: ServiceRequest-MCH
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for MCH [Entitic mass] by Automated count"
Description: "Example for Service Request of MCH in Blood"
Usage: #inline
* id = "3edb7f4c-e0c8-45c5-aee9-83d326aa61ab"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://example.org/order-placer-organization"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-HbHtBlood"
// ---- grouperID, must be repeated in all basedOn SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "http://example.org/ProviderNumber/Requisition"
* requisition.value = "ReqID-1234567"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#785-6 "MCH [Entitic mass] by Automated count"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* requester = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann at Arztpraxis"
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood Sample"

Instance: ServiceRequest-MCHC
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for MCHC [Entitic Mass/volume] in Red Blood Cells by Automated count"
Description: "Example for Service Request of MCHC in Blood"
Usage: #inline
* id = "82db46b7-acef-49f4-9456-6e9cbd62a27b"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://example.org/order-placer-organization"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-HbHtBlood"
// ---- grouperID, must be repeated in all basedOn SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "http://example.org/ProviderNumber/Requisition"
* requisition.value = "ReqID-1234567"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#786-4 "MCHC [Entitic Mass/volume] in Red Blood Cells by Automated count"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* requester = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann at Arztpraxis"
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood Sample"

Instance: ServiceRequest-Platelet
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for Platelets [#/volume] in Blood by Automated count"
Description: "Example for Service Request of Platelet in Blood"
Usage: #inline
* id = "bfc054ce-704c-11ee-b962-0242ac120002"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://example.org/order-placer-organization"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-HbHtBlood"
// ---- grouperID, must be repeated in all basedOn SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "http://example.org/ProviderNumber/Requisition"
* requisition.value = "ReqID-1234567"
* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"
// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* requester = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann at Arztpraxis"
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Blood Sample"

Instance: ServiceRequest-CRP
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for CRP "
Description: "Example for Service Request of C reactive protein in Serum or Plasma"
Usage: #inline
* id = "8d98f9d1-581b-4495-93aa-4a522fa30a6c"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://example.org/order-placer-organization"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-potassium-serum"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "http://example.org/ProviderNumber/Requisition"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#1988-5 "C reactive protein [Mass/volume] in Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* requester = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann at Arztpraxis"
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:3a98a13d-cf64-40bb-b7a0-87ef45193a74) "Serum specimen"

Instance: ServiceRequest-D-Dimer
InstanceOf: ChLabReportServiceRequest
Title: "LabOrder Service Request for D-Dimer "
Description: "Example for Service Request of Fibrin D-dimer FEU in Blood"
Usage: #inline
* id = "e0330c6c-4f9b-46e7-8817-2ae5301f5d14"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://example.org/order-placer-organization"
* identifier[=].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-potassium-serum"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PRN "Provider number"
* requisition.system = "http://example.org/ProviderNumber/Requisition"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
// * category = $sct#108252007 "Laboratory procedure"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#71427-9 "Fibrin D-dimer [Mass/volume] in Blood by Rapid immunoassay"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* requester = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann at Arztpraxis"
* reasonCode = $sct#432805000
* reasonCode.text = "Suspected deep vein thrombosis (situation)"
//* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(urn:uuid:8d38e1bd-dced-45c1-8978-949d6cfd21e8) "Blood Sample Coagulation"

// ------ Laboratory Practitioner and Organization
