<!--  markdownlint-disable MD001 MD041 -->

### Diagram of Resources

{% include img.html img="Resource Overview.svg" caption="Fig. 1: Resource Overview" width="80%" %}

### Laboratory Result Documents

Based on 'HL7 Europe Laboratory Report', the laboratory results are shown here as FHIR bundle of type document. The first entry element is therefore the composition, which defines the structure of the document.
The bundle contains exactly one DiagnosticReport (Laboratory Report), which references the composition. It also references the results of the laboratory tests. These can be preseneted in the form of several observations and also as a PDF document. The 'result' element contains the results as references to observations. 

#### Use case Suspected deep vein thrombosis with common laboratory results, 1-tvt

A patient, Hans Guggindieluft, appears on 09.03.2016 in the Olten group practice with Dr. Marc Mustermann. He identifies himself verbally via his master data as Hans Guggindieluft, 01.01.1981. He reports vague leg pain in the left lower leg as well as simultaneous respiratory pain and coughing. The doctor performs a medical history and physical examination and prescribes the following laboratory parameters:

* Blood count with automatic counting, hematogram
* CRP
* D-dimer

This laboratory document shows the results of 3 laboratory results: the automatic blood cell count test, the C-reactive protein in serum, and the fibrin D-dimer in blood, three very common laboratory tests. The blood cell count test then refers back to the individual results of the counts and measurements that are available as observations, i.e. very common laboratory tests.

[Laboratory Result Document](Bundle-LabResultReport-1-tvt.html)

#### Use case serum electrophoresis, 2-electrophoresis

This use case involves the reproduction of several protein fractions in serum that have been separated using electrophoresis technology. The individual fractions are listed as 'hasMember Observation' with respective reference ranges. The result is available as a 2-dimensional graph as well as in numerical form and must also be reproduced in the document. The graphic was encoded in 'base64' and thus integrated into the document as a larger text field. It is important to ensure that the data volume of the graphic is not too large. We would recommend an upper limit of 20 Mbytes. 

[Laboratory Result Document](Bundle-LabResultReport-2-electrophoresis.html)

#### Use case breath test, 3-breath-test

The breath test is a provocation test to find intolerances to certain types of sugar (lactose, fructose). The concentration of hydrogen and methane in the exhaled air is measured at half-hour intervals after a certain amount of the type of sugar to be tested has been administered. The result is a 2-dimensional graph of the measurements, which must also be recorded along with the numerical results. The 'base64' encoding was also used here.

[Laboratory Result Document](Bundle-LabResultReport-3-breath-test.html)

#### Use case sepsis, 4-sepsis

The results of microbiological tests differ from other laboratory results in that not only numerical return values are available, but also identifiers of pathogens, semi-quantitative growth in cultures or attributes of resistance tests. In addition to LOINC coding, SNOMET CT terminology is often used here.

[Laboratory Result Document](Bundle-LabResultReport-4-sepsis.html)

### Laboratory Test Panels (also called test batteries)

Laboratory test panels are the aggregation of several laboratory tests, as they are often commissioned in a clinical context and presented as results. In principle, we have shown with the above examples that laboratory results as well as test panels can be represented with the resources as defined here. Nevertheless, test panels offer certain advantages.

* Comprehensive analysis: They provide an efficient way to order and examine multiple analytes simultaneously and display the results clearly. This is particularly useful in the diagnosis of complex clinical pictures where several parameters play a role.
* Increased efficiency: By combining multiple tests in one panel, laboratory efficiency can be increased and resources optimally utilized. Instead of testing each analyte individually, multiple parameters can be tested simultaneously, reducing time and labor.
* Cost efficiency: Test panels can also be more cost-effective than individual tests, as they are often offered at a reduced price. This can be particularly advantageous when a comprehensive analysis is required.
* Clinical relevance in the treatment context: Test panels are often designed to cover a range of analytes that are clinically relevant to specific diseases or health conditions. This facilitates the interpretation of results and enables a faster and more accurate diagnosis.
* Standardization: By using test panels, laboratories can implement a standardized approach for testing specific analytes. This promotes consistency and comparability of results both within a laboratory and between different laboratories.

In our healthcare systems, there is high competitive pressure between laboratories and the ability to offer differentiated services can be an important competitive advantage. A mandatory standardized test panel can affect a laboratory's ability to differentiate itself from the competition by offering specialized tests or customized services. The test panels proposed here are therefore not a mandatory standard, but should be optional where this makes sense. The automated CBC panel and the renal insufficiency panel [screening test](https://www.swissnephrology.ch/wp/wp-content/uploads/2023/01/161121_SGN_Pocketguide_CKD_Web_A4_e_WZ.pdf) are intended as examples of observation profiles.
The test panels listed here also serve as examples of how laboratories can implement their own test panels as Observation Profiles.

#### Use Case Count of Blood Cells (automated CBC)

The hematogram II of the [analysis list(https://www.bag.admin.ch/dam/bag/de/dokumente/kuv-leistungen/leistungen-und-tarife/Analysenliste/Analysenliste%20per%201.%20Januar%202024%20in%20Excel%20Format.xlsx.download.xlsx/Analysenliste%20per%201.%20Januar%202024%20in%20Excel%20Format.xlsx)]  is the template for this test panel. 

Profile: [CH LAB Observation Results: Count of Blood Cells (automated CBC)](StructureDefinition-ch-lab-observation-cbc-panel.html)

Example: [Observation Results: Count of Blood Cells (automated CBC)](Observation-ExampleObservationCBCPanel.html)

#### Use Case Renal Insufficiency

Chronic diseases such as diabetes or hypertension are sometimes accompanied by chronic kidney disease. They therefore require monitoring of kidney function. The glomerular filtration rate (GFR) and albumin excretion in 24-hour urine have proven to be useful parameters for kidney function. The GFR is very difficult to determine. Therefore, formulas have been used which allow approximations with the help of measurements of endogenous markers, creatinine or cystatin-C. The most frequently used formula is CKD-EPI, which takes into account additional patient characteristics such as age and gender. In addition, several adjustments have been made to the formula over time, most recently in 2021, when skin color was omitted as a parameter. The results of the CKD-EPI formulas always refer to people with a body surface area of 1.73 m².

The second indicator of kidney function is albumin excretion in 24 h urine. To simplify the determination procedure, the albumin/creatinine ratio in urine is used.

Profile: [CH LAB Observation Results: Renal Insufficiency Panel](StructureDefinition-ch-lab-observation-renal-insufficiency-panel.html)

Example: [Observation Results: Renal Insufficiency Panel](Observation-ObservationRenalInsufficiencyPanel.html)

#### Use Case Blood Bank

Standardization in the area of blood bank results would improve safety in the transmission of laboratory results. HL7 Europe Laboratory Report has included two ValueSets with the binding 'preferred':

1. [ValueSet: Results Blood Group - IPS](http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-uv-ips) with 207 concepts

2. [ValueSet: Results Blood Group - SNOMED CT IPS Free Set ](http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-snomed-ct-ips-free-set) with 13 concepts

This guide contains 2 further possible ValueSets:

1. [ValueSet: ChLab BloodGroup Antibody Screen Tests (Experimental)](ValueSet-ch-lab-bloodgroup-antibody-screen.html) with the LOINC codes of the blood group antibody screening tests.

2. [ValueSet: CH Lab Results Blood Group Antibody (Experimental)](ValueSet-ch-lab-bloodgroup-antibody-vs.html) with the SNOMED CT codes of the blood group antibodies

Standardization in the blood bank sector requires the cooperation and approval of the professional association (Schweizerische Vereinigung für Transfusionsmedizin), which could not be obtained in the short time available. This guideline is therefore limited to 4 possible forms of presentation as examples of blood bank results: 

* [Blood Group Panel ABO Rh simple](Observation-BloodGroupSimple.html)
* [Blood Group Panel ABO Rh Panel](Observation-BloodGroupPanel.html)
* [Blood Group Panel ABO Rh using Component](Observation-BloodGroupPanel.html)
* [Blood Group Panel using free text](Observation-BloodGroupFreeText.html)
