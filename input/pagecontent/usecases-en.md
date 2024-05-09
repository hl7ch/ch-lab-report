<!--  markdownlint-disable MD001 MD041 -->

### Diagram of Resources

{% include img.html img="Resource Overview.svg" caption="Fig. 1: Resource Overview" width="80%" %}

### Laboratory Result Documents

Based on HL7 Europe Laboratory Report, the laboratory results are shown here as FHIR bundle of type document. The first entry element is therefore the composition, which defines the structure of the document.
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

The results of microbiological tests differ from other laboratory results in that not only numerical return values are available, but also identifiers of pathogens, semi-quantitative growth in cultures or attributes of resistance tests. In addition to LOINC coding, SNOMET CT terminology is used here.

[Laboratory Result Document](Bundle-LabResultReport-4-sepsis.html)

### Laboratory Test Panels (also called batteries)

++++++++++++++++++++++++

#### Use Case Renal Insufficiency

Profile: [CH LAB Observation Results: Renal Insufficiency Panel](StructureDefinition-ch-lab-observation-renal-insufficiency-panel.html)

Example: [Observation Results: Renal Insufficiency Panel](Observation-ObservationRenalInsufficiencyPanel.html)

#### Use Case Count of Blood Cells (automated CBC)

Profile: [CH LAB Observation Results: Renal Insufficiency Panel](StructureDefinition-ch-lab-observation-cbc-panel.html)

Example: [Observation Results: Renal Insufficiency Panel](Observation-ExampleObservationCBCPanel.html)


#### Use Case Graphical Results, Breath Tests

Profile: [CH LAB Observation Results: Renal Insufficiency Panel](StructureDefinition-ch-lab-observation-renal-insufficiency-panel.html)

Example: [Observation Results: Renal Insufficiency Panel](Observation-ObservationRenalInsufficiencyPanel.html)

#### Use Case Blood Bank

Examples:

* [Blood Group Panel ABO Rh simple](Observation-BloodGroupSimple.html)
* [Blood Group Panel ABO Rh Panel](Observation-BloodGroupPanel.html)
* [Blood Group Panel ABO Rh using Component](Observation-BloodGroupPanel.html)
* [Blood Group Panel using free text](Observation-BloodGroupFreeText.html)




### Use Cases from HL7 Europe Laboratory Report

The DiagnosticReport status decides the Use Case. [ValueSet URL](http://hl7.org/fhir/diagnostic-report-status)

{% include img.html img="DiagnosticReport_state.png" caption="Fig. 2: DiagnosticReport state machine diagram" width="60%" %}

#### Laboratory Report Scenarios

##### Complete Laboratory Report

A Laboratory, after performing its internal testing workflow, forms a complete result report, according to the requirements and query parameters formulated by the ordering entity. Internal testing workflow includes consolidation of all test result orders or order groups and all steps of data quality assurance and validation.
Then, depending on its internal organization, may inform the application of the clinical practice (known as Order Result Tracker), send the report to the intended recipients included in the Laboratory test order; store a report copy in an EHR-system; etc.
In this case:

* the Laboratory report status is set to _“final”_;
* all individual test results which are included in the final laboratory report should be also marked as _"final"_ or _"cancelled"_

##### Partial Laboratory Report

In some cases, a laboratory might release a laboratory report which is either incomplete (not all results are available or marked as “final”) or unverified.
This usually occurs when some of the results are known to be produced later, but others need to be communicated to report recipients due to specific organizational and/or process rules; or because of the urgency of some results. Note: the ‘delay’ in the results availability may be due to the nature of the test, or to organizational or technical reasons.
In such cases:

* the report status should be set to _“preliminary”_ or _“partial”_

##### Appended Laboratory Report

As described in the example 1-tvt the practitioner Marc Mustermann may request further request for coagulation tests from the same sample of citrate tubes after having received the confirmation of a deep vein thrombose. After the fullfillment of these request the laboratory may send an additional laboratory report. Subsequent to being final, the report will be modified by adding new content. The existing content is unchanged.

* In this case the Laboratory Report status is set to _"appended"_.

##### Cancelled Laboratory Report

The report is unavailable because the measurement was not started or not completed (also sometimes called "aborted").

* In this case the Laboratory Report status is set to _"cancelled"_.
