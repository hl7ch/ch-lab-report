/*
Instance: ChLabCBCPanelObsExpl
InstanceOf: ChLabCBCPanelObsCtn
Title: "CBC panel - Blood by Automated count, Observation Example"
Description: "This panel is the traditional hemogram plus platelet count which must now be reported with hemograms according to current US re-imbursement rule The panel includes 2 different RDWs to accommodate the two different ways of reporting them. (Most automated instruments report as a percent ). The hemoglobin produced by the automatic counters does not use a counting method to generate the hemoglobin so we have used the methodless version of hemoglobin in this panel."
Usage: #example
* status = #final

* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
* code.text = "CBC panel Auto (Bld)" // LOINC Display Name

* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"
* method = $sct#702659008 "Automated count technique (qualifier value)"
* specimen = Reference(BloodCBC) "Blood CBC Sample"
* device = Reference(XP-300) "Sysmex XP-300"

* hasMember[WhiteBloodCell] = Reference(LeucocyteCount) "Observation-WBC"
* hasMember[RedBloodCellCount] = Reference(ErythrocyteCount) "Observation-RBC"
* hasMember[Hemoglobin] = Reference(HB) "Observation-HGB"
* hasMember[Hematocrit] = Reference(HT) "Observation-HT"
* hasMember[MeanCorpuscularVolume] = Reference(MCV) "Observation-MCV"
* hasMember[MeanCorpuscularHemoglobin] = Reference(MCH) "Observation-MCH"
* hasMember[MeanCorpuscularHemoglobinConcentration] = Reference(MCHC) "Observation-MCHC"

* hasMember[ErythrocyteDistributionWidth] = Reference(ErythrocyteDistributionWidth) "Observation-ErythrocyteDistributionWidth"
* hasMember[ErythrocyteDistWidthRatio] = Reference(ErythrocyteDistWidthRatio) "Observation-ErythrocyteDistWidthRatio"

* hasMember[PlateletCount] = Reference(ThrombocyteCount) "Observation-Platelet"
* hasMember[PlateletDistributionWidth] = Reference(PDW) "Observation-PDW"
* hasMember[PlateletMeanVolume] = Reference(MPV) "Observation-MPV"


// ################# Leucocyte- and Erythrocyte Count ################
Instance: LeucocyteCount
InstanceOf: ChLabLeucocyteCount
Title: "WBC Auto (Bld) [#/Vol]" // display name
Description: "Leukocytes or white blood cells (WBCs) are immune cells that fight infection, neoplasms and other inflammatory conditions, and mediate allergic responses. There are five types of WBCs normally present in the circulation that are all derived from a similar stem cell in the bone marrow. The five type of WBCs are divided into two groups based on the presence or absence of granules in the cytoplasm. The granulocytes include the neutrophils, basophils and eosinophils. The non-granulocytes include the lymphocytes and the monocytes. The neutrophils fight infection by ingesting and digesting bacteria. Eosinophils and basophils respond to allergic reactions and are capable of ingesting antigen-antibody complexes. Monocytes phagocytose bacteria and release interferon to stimulate the immune system. Lymphocytes are divided into T-cells and B-cells. T-cell immunity is cellular and involves the activation of phagocytes and B-cell immunity uses antibodies to fight infection. Both elevated and low leukocyte counts can be markers of infection and malignancy, and low leukocyte counts are associated with a variety of primary and secondary immunodeficiencies, depending on the WBC type(s) that are out of range. (Mosby's manual of diagnostic and laboratory tests, Kathleen Deska Pagana; Timothy James Pagana, Elsevier St. Louis, Mo ©2010)"  // Part Description
Usage: #example
* status = #final

// * category[specialty] = $sct#394916005 "Hematopathology"
// * category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
// * code.text = "WBC Auto (Bld) [#/Vol]" // LOINC Display Name
* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"

* valueQuantity = 10 '10*3/uL' "10*3/uL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "10*3/uL"
// * method = $sct#702659008 "Automated count technique (qualifier value)"
// * referenceRange.low.value = 4.5 
// * referenceRange.low.unit = "10*3/uL"
// * referenceRange.high.value = 11
// * referenceRange.high.unit = "10*3/uL"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"
// * referenceRange.type.text = "Normal Range"

Instance: ErythrocyteCount
InstanceOf: ChLabErythrocyteCount
Title: "RBC Auto (Bld) [#/Vol]"   // Display name
Description: "Erythrocytes or red blood cells (RBCs) are the cells in the circulation that carry oxygen to and remove carbon dioxide from the tissues throughout the body. They are produced in the bone marrow in response to erythropoietin where they transition through six stages over a seven day period. When they are released into the circulation, their nucleus has been extruded and they measure 6-8 microns in diameter. The lifespan of RBCs is about 120 days. When the RBC ages the cell membrane becomes less pliable and tears as they cell travels through the micro vessels of the body. The damaged RBCs are removed from the circulation by the spleen. Variations in number, shape and size of RBCs are indicative of many diseases and disorders. There are many factors that may lead to decreased numbers of RBCs including hemorrhage, hemolysis, iron or vitamin deficiency, marrow failure and more. Larger than normal RBCs may be indicative of liver disease while smaller than normal RBCs are seen in thalassemias and other anemias.(Mosby's manual of diagnostic and laboratory tests, Kathleen Deska Pagana; Timothy James Pagana, Elsevier St. Louis, Mo ©2010)" // Part Description
Usage: #example
* status = #final
// * category[specialty] = $sct#394916005 "Hematopathology"
// * category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * code = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
// * code.text = "RBC Auto (Bld) [#/Vol]" // LOINC Display Name
* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"

* valueQuantity = 4.58 '10*6/uL' "10*6/uL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "10*6/uL"
// * method = $sct#702659008 "Automated count technique (qualifier value)"
// * referenceRange.low.value = 4.1
// * referenceRange.low.unit = "10*6/uL"
// * referenceRange.high.value = 6.1
// * referenceRange.high.unit = "10*6/uL"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"
// * referenceRange.type.text = "Normal Range"

// ################# Hemoglobin  Hematocrit ################
Instance: HB
InstanceOf: ChLabHemoglobin
Title: "Hemoglobin [Mass/volume] in Blood"  // display name
Description: "This is the the code included in the CBC auto. It is NOT obtained via the automated counting but uses a chemistry method just like most other hemoglobins." // part description
Usage: #example
* status = #final
// * category[specialty] = $sct#394916005 "Hematopathology"
// * category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
// * code.text = "Hemoglobin (Bld) [Mass/Vol]" // LOINC Display Name
* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"
// TODO values
* valueQuantity = 10.8 'umol/L' "umol/L"
* interpretation = $v3-ObservationInterpretation#HH "Critical high"
// * method = $sct#83561000052101 "Photometry technique (qualifier value)"
// * specimen = Reference(BloodCBC)
// * referenceRange.low.value = 8.7  // women 7.4
// * referenceRange.low.unit = "umol/L"
// * referenceRange.high.value = 11.2    // women 9.9
// * referenceRange.high.unit = "umol/L"

Instance: HT
InstanceOf: ChLabHematocrit
Title: "Hematocrit Auto (Bld) [Volume fraction]"   // Display name
Description: "The volume of packed red blood cells in a blood sample. The volume is measured by centrifugation in a tube with graduated markings, or with automated blood cell counters. It is an indicator of erythrocyte status in disease. For example, in anemia the volume is low and in polycythemia it is high." // Part Description 
Usage: #example
* status = #final
// * category[specialty] = $sct#394916005 "Hematopathology"
// * category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * code = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"
* code.text = "Hematocrit Auto (Bld) [Volume fraction]" // LOINC Display Name
* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"
// TODO values
* valueQuantity = 10.8 'umol/L' "umol/L"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
// * method = $sct#702659008 "Automated count technique (qualifier value)"
// * specimen = Reference(BloodCBC)
// * referenceRange.low.value = 41  // women 36
// * referenceRange.low.unit = "%"
// * referenceRange.high.value = 53    // women 46
// * referenceRange.high.unit = "%"

// ################# MCV, MCH, MCHC ###################
Instance: MCV
InstanceOf: ChLabMeanCorpuscularVolume
Title: "MCV [Entitic volume] by Automated count"   // LOINC Long Common Name
Description: "The volume of packed red blood cells in a blood sample. The volume is measured by centrifugation in a tube with graduated markings, or with automated blood cell counters. It is an indicator of erythrocyte status in disease. For example, in anemia the volume is low and in polycythemia it is high."
Usage: #example
// * id = "857cfa10-66ea-45ae-b236-e6e03af4be3f"
* status = #final

// * category[specialty] = $sct#394916005 "Hematopathology"
// * category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * code = $loinc#787-2 "MCV [Entitic volume] by Automated count"
* code.text = "MCV Auto (RBC) [Entitic vol]" // LOINC Display Name
* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"
// TODO values
* valueQuantity = 85 'fL' "fL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "fL"
// * referenceRange.low.value = 82.4
// * referenceRange.low.unit = "fL"
// * referenceRange.high.value = 87.3
// * referenceRange.high.unit = "fL"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"
// * referenceRange.type.text = "Normal Range"

Instance: MCH
InstanceOf: ChLabMeanCorpuscularHemoglobin
Title: "MCH [Entitic mass] by Automated count"   // LOINC Long Common Name
Description: "The mean corpuscular hemoglobin, or 'mean cell hemoglobin' (MCH), is the average mass of hemoglobin per red blood cell in a blood sample. It is decreased in hypochromic anemias, and increased in hyperchromic anemias. MCH is obtained by dividing the total mass of hemoglobin by the number of red blood cells in a volume of blood."
Usage: #example
// * id = "3b263f29-44d8-468f-b612-e748442e1845"
* status = #final

// * category[specialty] = $sct#394916005 "Hematopathology"
// * category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * code = $loinc#785-6 "MCH [Entitic mass] by Automated count"
* code.text = "MCH Auto (RBC) [Entitic mass]" // LOINC Display Name
* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"
// TODO values
* valueQuantity = 30 'pg' "pg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "pg"
// * referenceRange.low.value = 38
// * referenceRange.low.unit = "pg"
// * referenceRange.high.value = 46
// * referenceRange.high.unit = "pg"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"
// * referenceRange.type.text = "Normal Range"

Instance: MCHC
InstanceOf: ChLabMeanCorpuscularHemoglobinConcentration
Title: "MCHC [Mass/volume] by Automated count"   // LOINC Long Common Name
Description: "The mean corpuscular hemoglobin concentration, or MCHC, is a measure of the concentration of hemoglobin in a given volume of packed red blood cell. It is reported as part of a standard complete blood count."
Usage: #example
* status = #final

// * category[specialty] = $sct#394916005 "Hematopathology"
// * category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * code = $loinc#786-4 "MCHC [Mass/volume] by Automated count"
// * code.text = "MCHC Auto (RBC) [Mass/Vol]" // LOINC Display Name
* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"
// TODO values
* valueQuantity = 34.7 'g/dL' "g/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "g/dL"
// * referenceRange.low.value = 30
// * referenceRange.low.unit = "g/dL"
// * referenceRange.high.value = 34
// * referenceRange.high.unit = "g/dL"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"
// * referenceRange.type.text = "Normal Range"

Instance: ErythrocyteDistributionWidth
InstanceOf: ChLabErythrocyteDistributionWidth
Title: "Erythrocyte distribution width [Entitic volume] by Automated count"
Description: "Erytrocyte distribuition with Example, RDW-SD"
Usage: #example
* status = #final

// * category[specialty] = $sct#394916005 "Hematopathology"
// * category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * code = $loinc#21000-5 "Erythrocyte distribution width [Entitic volume] by Automated count"
// * code.text = "Erythrocyte distribution width Auto (RBC) [Entitic vol]" // LOINC Display Name
* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"
// TODO values
* valueQuantity = 40 'fL' "fL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "fL"
// * referenceRange.low.value = 39
// * referenceRange.low.unit = "fL"
// * referenceRange.high.value = 46
// * referenceRange.high.unit = "fL"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"
// * referenceRange.type.text = "Normal Range"

Instance: ErythrocyteDistWidthRatio
InstanceOf: ChLabErythrocyteDistWidthRatio
Title: "Erythrocyte distribution width [Entitic volume] by Automated count"
Description: "Erytrocyte distribuition with Example, RDW-CV"
Usage: #example
* status = #final

// * category[specialty] = $sct#394916005 "Hematopathology"
// * category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * code = $loinc#788-0 "Erythrocyte distribution width [Ratio] by Automated count"
// * code.text = "Erythrocyte distribution width Auto (RBC) [Ratio]" // LOINC Display Name
* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"
// TODO values
* valueQuantity = 13.9 '%' "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "%"
// * referenceRange.low.value = 11.6
// * referenceRange.low.unit = "%"
// * referenceRange.high.value = 14.6
// * referenceRange.high.unit = "%"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"
// * referenceRange.type.text = "Normal Range"

// ################# Thrombocyte Count ################
Instance: ThrombocyteCount
InstanceOf: ChLabPlateletCount
Title: "Hemoglobin [Mass/volume] in Blood"  // display name
Description: "Platelets are miniature fragments of cytoplasm that break off of megakaryocytes. Their primary function is to inhibit excessive hemorrhage after blood vessel injury. Platelets cling to the damaged part of the blood vessel where they become activated, recruit other platelets to the site, and begin the cascade of physical and chemical events that lead to clot formation. Activated platelets secrete cytokines, chemokines, and growth factors, all which play a role in thrombus development.When activated, platelets stimulate monocytes and neutrophils to leave the blood vessel and enter the tissue." // part description
Usage: #example

* status = #final
// * category[specialty] = $sct#394916005 "Hematopathology"
// * category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
// * code.text = "Platelets Auto (Bld) [#/Vol]" // LOINC Display Name
* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"
// TODO values
* valueQuantity = 320 '10*3/uL' "10*3/uL"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
// * method = $sct#702659008 "Automated count technique (qualifier value)"
* specimen = Reference(BloodCBC)
// * referenceRange.low.value = 150
// * referenceRange.low.unit = "10*3/uL"
// * referenceRange.high.value = 450
// * referenceRange.high.unit = "10*3/uL"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"
// * referenceRange.type.text = "Normal Range"

Instance: PDW
InstanceOf: ChLabPlateletDistributionWidth
Title: "Hemoglobin [Mass/volume] in Blood"  // display name
Description: "Platelets are miniature fragments of cytoplasm that break off of megakaryocytes. Their primary function is to inhibit excessive hemorrhage after blood vessel injury. Platelets cling to the damaged part of the blood vessel where they become activated, recruit other platelets to the site, and begin the cascade of physical and chemical events that lead to clot formation. Activated platelets secrete cytokines, chemokines, and growth factors, all which play a role in thrombus development.When activated, platelets stimulate monocytes and neutrophils to leave the blood vessel and enter the tissue." // part description
Usage: #example

* status = #final
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
* code.text = "Platelets Auto (Bld) [#/Vol]" // LOINC Display Name
* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"
// TODO values
* valueQuantity = 36 '%' "%"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#702659008 "Automated count technique (qualifier value)"
* specimen = Reference(BloodCBC)
* referenceRange.low.value = 8.3
* referenceRange.low.unit = "%"
* referenceRange.high.value = 56.6
* referenceRange.high.unit = "%"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

Instance: MPV
InstanceOf: ChLabPlateletMeanVolume
Title: "Hemoglobin [Mass/volume] in Blood"  // display name
Description: "Platelets are miniature fragments of cytoplasm that break off of megakaryocytes. Their primary function is to inhibit excessive hemorrhage after blood vessel injury. Platelets cling to the damaged part of the blood vessel where they become activated, recruit other platelets to the site, and begin the cascade of physical and chemical events that lead to clot formation. Activated platelets secrete cytokines, chemokines, and growth factors, all which play a role in thrombus development.When activated, platelets stimulate monocytes and neutrophils to leave the blood vessel and enter the tissue." // part description
Usage: #example

* status = #final
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
// * code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
* code.text = "Platelets Auto (Bld) [#/Vol]" // LOINC Display Name
* subject = Reference(JanSchmid) "Jan Schmid"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(NathalieNuesch) "Natalie Nüesch"
// TODO values
* valueQuantity = 8.9 'fL' "fL"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#702659008 "Automated count technique (qualifier value)"
* specimen = Reference(BloodCBC)
* referenceRange.low.value = 7.2
* referenceRange.low.unit = "fL"
* referenceRange.high.value = 11.7
* referenceRange.high.unit = "fL"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"


// ######## Patient Practitioner Specimen ####################
Instance: JanSchmid
InstanceOf: ChLabPatient
Description: "Patient Example for CBC Observation"
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
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111411"
* name.family = "Schmid"
* name.given = "Jan"
* gender = #male
* birthDate = "1995-01-27"
* maritalStatus = $ech-11-maritalstatus#6 "in eingetragener Partnerschaft"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

Instance: NathalieNuesch
InstanceOf: ChLabPractitioner
Description: "Practitioner Example for CBC Observation"
Usage: #example
* meta.source = "https://www.ti.bfh.ch/de/bachelor/medizininformatik.html"
* meta.profile = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* identifier[0].system = "urn:oid:2.51.1.3"
* identifier[=].value = "7601000050717"
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[=].value = "Q123456"
* name.family = "Nüesch"
* name.given = "Natalie"
* name.prefix[0] = "Herr"
* name.prefix[+] = "Dr. med."
* name.prefix[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix[=].extension.valueCode = #AC
* gender = #male
* birthDate = "1965-12-13"


Instance: BloodCBC
InstanceOf: ChLabSpecimen
Title: "Blood CBC Sample"
Description: "Example for Specimen for automated CBC Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood specimen"
* subject = Reference(JanSchmid) "Jan Schmid"
* collection.collector = Reference(NathalieNuesch) "Dr. med. Nathalie Nüesch"
* collection.collectedDateTime = "2023-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container"

Instance: Sysmex
InstanceOf: ChLabReportDeviceAnalyzer
Title: "Sysmex XP-300"
Usage: #example
*/