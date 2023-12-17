<!-- markdownlint-disable MD001 MD041 -->

### Diagram

{% include img.html img="Resource Overview.svg" caption="Fig. 1: Resource Overview" width="50%" %}

### Use Cases from HL7 Europe Laboratory Report

The DiagnosticReport status decides the Use Case

{% include img.html img="DiagnosticReport_state" caption="Fig. 2: Resource Overview" width="50%" %}


#### Laboratory Report Scenarios

##### Complete Laboratory Report

* A Laboratory, after performing its internal testing workflow, forms a complete result report, according to the requirements and query parameters formulated by the ordering entity. Internal testing workflow includes consolidation of all test result orders or order groups and all steps of data quality assurance and validation.
* Then, depending on its internal organization, may inform the application of the clinical practice (known as Order Result Tracker), send the report to the intended recipients included in the Laboratory test order; store a report copy in an EHR-system; etc.
In this case:

* the Laboratory report status is set to “final”;
* all individual test results which are included in the final laboratory report should be also marked as final or cancelled
