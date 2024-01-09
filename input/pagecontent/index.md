<!-- markdownlint-disable MD033 MD041 MD045 -->

### Introduction

The examination of blood, urine, tissue samples, cerebrospinal fluid, exhaled air and wound secretions using modern medical laboratory methods helps clinicians to diagnose, prevent and treat diseases. In order for the results to be evaluated correctly, a number of requirements must be met, including the correct reproduction of the results of clinical laboratory tests.

<div markdown="1" class="stu-note">

The specification herewith documented is work in progress. No liability can be inferred from the use or misuse of this specification, or its consequences.

</div>

### Management Summary

This implementation guide specifies the exchange format for the comprehensive and correct reproduction of clinical laboratory results. These consist of the following data in detail:

#### Administrative data

* Patient Information: Include the patient's name, age, sex, date of birth, and any other relevant identification details.
* Order Data: Ordering practitioner, organization, ordering date, recipients
* Laboratory Information: Include details about the laboratory that performed the analysis, such as the name, address, and contact information.
* Authorised Signatures: Include the signatures or electronic authentication of the laboratory personnel responsible for conducting and validating the tests.

#### Laboratory Analytic-Test Data

* Specimen Information: Specification of the preanalytic conditions, the type of specimen collected for analysis. This could include details like the date and time of collection.
* Test Request Details: Information about the tests requested are provided by the requester. It includes the name of the test, mostly in form of a code, the reason for the test, and any specific instructions given.
* Test Results: The results of each test performed must be presented. Appropriate units of measurement and reference ranges for comparison must be presented. Any values that fall outside the normal range are highlighted.
* Reference Ranges: Normal or expected range of values for each test are included. This helps healthcare providers interpret the results in the context of the patient's health. Since these data may be dependent from the used test-kits, the identification of the test-kits (UDI) might be useful. Alternatively the likelihood ratio of the test, if available, can be used for the interpretation of the results. The likelihood ratio is not dependent on the kind of used test-kit.

* Certain results are shown in the form of images, e.g. electrophoresis of haemoglobin, haematology scatter-plots, microbiological cultures, or MALDI-TOF mass spectrometry.

* Interpretation or Comments: Include any additional comments or interpretations provided by the laboratory. This can help healthcare providers understand the clinical significance of the results.

* Date and Time of Analysis: Provide the date and time when the laboratory tests were conducted.

**Download**: You can download this implementation guide in [NPM format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### IP Statements

This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependency Table

{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}
