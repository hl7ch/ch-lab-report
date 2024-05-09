<!--  markdownlint-disable MD001 MD041 -->

### Diagram of Resources

{% include img.html img="Resource Overview.svg" caption="Fig. 1: Resource Overview" width="80%" %}

### Laboratory Test Panels (also called batteries)



#### Use Case Renal Insufficiency

#### Use Case Count of Blood Cells (automated CPC)

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
