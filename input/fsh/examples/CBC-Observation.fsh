Instance: ErythrocyteCount
InstanceOf: ChLabObservationResultsLaboratory
Title: "RBC Auto (Bld) [#/Vol]"   // Display name
Description: "Erythrocytes or red blood cells (RBCs) are the cells in the circulation that carry oxygen to and remove carbon dioxide from the tissues throughout the body. They are produced in the bone marrow in response to erythropoietin where they transition through six stages over a seven day period. When they are released into the circulation, their nucleus has been extruded and they measure 6-8 microns in diameter. The lifespan of RBCs is about 120 days. When the RBC ages the cell membrane becomes less pliable and tears as they cell travels through the micro vessels of the body. The damaged RBCs are removed from the circulation by the spleen. Variations in number, shape and size of RBCs are indicative of many diseases and disorders. There are many factors that may lead to decreased numbers of RBCs including hemorrhage, hemolysis, iron or vitamin deficiency, marrow failure and more. Larger than normal RBCs may be indicative of liver disease while smaller than normal RBCs are seen in thalassemias and other anemias.(Mosby's manual of diagnostic and laboratory tests, Kathleen Deska Pagana; Timothy James Pagana, Elsevier St. Louis, Mo ©2010)" // Part Description
Usage: #inline
// * id = "93e87cd5-a3eb-4767-b0e7-9e01a11a4784"

* status = #final
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* code.text = "RBC Auto (Bld) [#/Vol]" // LOINC Display Name
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// TODO values
* valueQuantity = 10.8 'umol/L' "umol/L"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#702659008 "Automated count technique (qualifier value)"
// * specimen = Reference(Blood)
// * referenceRange.low.value = 8.7  // women 7.4
// * referenceRange.low.unit = "umol/L"
// * referenceRange.high.value = 11.2    // women 9.9
// * referenceRange.high.unit = "umol/L"

Instance: LeucocyteCount
InstanceOf: ChLabObservationResultsLaboratory
Title: "WBC Auto (Bld) [#/Vol]" // display name
Description: "Leukocytes or white blood cells (WBCs) are immune cells that fight infection, neoplasms and other inflammatory conditions, and mediate allergic responses. There are five types of WBCs normally present in the circulation that are all derived from a similar stem cell in the bone marrow. The five type of WBCs are divided into two groups based on the presence or absence of granules in the cytoplasm. The granulocytes include the neutrophils, basophils and eosinophils. The non-granulocytes include the lymphocytes and the monocytes. The neutrophils fight infection by ingesting and digesting bacteria. Eosinophils and basophils respond to allergic reactions and are capable of ingesting antigen-antibody complexes. Monocytes phagocytose bacteria and release interferon to stimulate the immune system. Lymphocytes are divided into T-cells and B-cells. T-cell immunity is cellular and involves the activation of phagocytes and B-cell immunity uses antibodies to fight infection. Both elevated and low leukocyte counts can be markers of infection and malignancy, and low leukocyte counts are associated with a variety of primary and secondary immunodeficiencies, depending on the WBC type(s) that are out of range. (Mosby's manual of diagnostic and laboratory tests, Kathleen Deska Pagana; Timothy James Pagana, Elsevier St. Louis, Mo ©2010)"  // Part Description
Usage: #inline
// * id = "93e87cd5-a3eb-4767-b0e7-9e01a11a4784"

* status = #final
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
* code.text = "WBC Auto (Bld) [#/Vol]" // LOINC Display Name
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// TODO values
* valueQuantity = 10.8 'umol/L' "umol/L"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#702659008 "Automated count technique (qualifier value)"
// * specimen = Reference(Blood)
// * referenceRange.low.value = 8.7  // women 7.4
// * referenceRange.low.unit = "umol/L"
// * referenceRange.high.value = 11.2    // women 9.9
// * referenceRange.high.unit = "umol/L"

// ############################## Hematocrit Hemoglobin ################

Instance: Hematocrit
InstanceOf: ChLabObservationResultsLaboratory
Title: "Hematocrit Auto (Bld) [Volume fraction]"   // Display name
Description: "The volume of packed red blood cells in a blood sample. The volume is measured by centrifugation in a tube with graduated markings, or with automated blood cell counters. It is an indicator of erythrocyte status in disease. For example, in anemia the volume is low and in polycythemia it is high." // Part Description 
Usage: #inline
// * id = "93e87cd5-a3eb-4767-b0e7-9e01a11a4784"

* status = #final
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"
* code.text = "Hematocrit Auto (Bld) [Volume fraction]" // LOINC Display Name
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// TODO values
* valueQuantity = 10.8 'umol/L' "umol/L"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#702659008 "Automated count technique (qualifier value)"
// * specimen = Reference(Blood)
// * referenceRange.low.value = 8.7  // women 7.4
// * referenceRange.low.unit = "umol/L"
// * referenceRange.high.value = 11.2    // women 9.9
// * referenceRange.high.unit = "umol/L"

Instance: Hemoblobin
InstanceOf: ChLabObservationResultsLaboratory
Title: "Hemoglobin [Mass/volume] in Blood"  // display name
Description: "This is the the code included in the CBC auto. It is NOT obtained via the automated counting but uses a chemistry method just like most other hemoglobins." // part description
Usage: #inline
// * id = "93e87cd5-a3eb-4767-b0e7-9e01a11a4784"

* status = #final
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Hemoglobin (Bld) [Mass/Vol]" // LOINC Display Name
* subject = Reference(HansGuggindieluft)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer = Reference(EvaErlenmeyer) "Eva Erlenmeier"
// TODO values
* valueQuantity = 10.8 'umol/L' "umol/L"
// * interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
// * specimen = Reference(Blood)
// * referenceRange.low.value = 8.7  // women 7.4
// * referenceRange.low.unit = "umol/L"
// * referenceRange.high.value = 11.2    // women 9.9
// * referenceRange.high.unit = "umol/L"