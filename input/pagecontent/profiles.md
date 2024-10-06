<!-- markdownlint-disable MD001 MD033 MD041 -->

### General Profiles for CH LAB-Report

* [CH LAB Composition: Laboratory Report](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-report-composition.html)
This profile constrains the Composition resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB Device: Analyzer](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-report-device-analyzer.html)
Holds Laboratory Analyzer Data
* [CH LAB Device: TestKit](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-report-device-test-kit.html) 
Holds Laboratory Test-Kit Data
* [CH LAB DiagnosticReport: Laboratory Report](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-diagnosticreport.html)
This profile constrains the DiagnosticReport resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB Document: Laboratory Report](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-report-document.html)
This profile constrains the Bundle resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB Observation Results: Laboratory Report](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-results-laboratory.html)
This profile constrains the Observation resource for the purpose of laboratory test reports in Switzerland.

### Panels

In the laboratory field, we often use panels as a container for a group of laboratory analyses that belong together in terms of content, e.g. the group of analyses that quantify cardiovascular risks or that stand for a liver disease.
It is the task of the individual medical laboratories to offer the user meaningful panels. Some laboratories also offer their customers the opportunity to create their own panels. This results in a wide range of panels that serve different purposes and differ from laboratory to laboratory. 
The implementation guide contains a narrow selection of panels that can be optionally used by laboratories and that can cover common needs.

[CH LAB Observation Results: Panel](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ChLab-observation-panel.html)
This profile constrains the ChLabObservationResultsLaboratory profile to represent only a panel / battery of laboratory test results for the HL7 Swiss project. The top-level observation contains only further observations-panels and observations-single-tests in the hasMember element. The observation-panels may carry a conclusion in the note element and/or a global interpretation by the producer of the study, in the interpretation element; value[x] and component elements are not allowed and have to be shown in the observation-single-test profile.

[CH LAB Observation Results: Single Test](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ChLab-observation-single-test.html)
This profile constrains the ChLabObservationResultsLaboratory profile to represent single test results for the HL7 Swiss project. The profile enables only value[x] and component elements, hasMemer elemens are not allowed

#### Panels for automated blood cell count

* [CH LAB Observation Results CBC Panel - Blood by Automated count, Results in nested Profiles](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-cbc-panel.html)
This panel is the traditional hemogram plus platelet count which must now be reported with with hemograms according to current US re-imbursement rule The panel includes 2 different RDWs to accommodate the two different ways of reporting them. (Most automated instruments report as a percent ). The hemoglobin produced by the automatic counters does not use a counting method to generate the hemoglobin so we have used the fotometry version of hemoglobin in this panel.

* [CH LAB Observation Results CBC Panel - Blood by Automated count, Results in sliced component](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-cbc.html)
Profile for observation laboratory result of automated Count of Blood Cells. We choose as Unit 10⁹/L or 10¹²/L for Cell Count.

* [CH LAB Observation Results: Erythrocyte distribution width [Entitic volume] by Automated count](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-results-ery-distribution-width.html)
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory Erythrocyte Distribuition Width in Switzerland.

* [CH LAB Observation Results: Erythrocyte distribution width [Ratio] by Automated count](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-results-ery-dist-width-ratio.html)
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory Erythrocyte Distribution Width Ratio.

* [CH LAB Observation Results: ErythrocyteCount](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-results-rbc.html)
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory erythrocyte count.

* [CH LAB Observation Results: Hemoglobin](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-results-hb.html)
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory hemoglobin.

* [CH LAB Observation Results: Hemotocrit](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-results-ht.html)
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory hemotocrit in Switzerland.

* [CH LAB Observation Results: LeucocyteCount](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-results-wbc.html)
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory leucocyte count.

* [CH LAB Observation Results: Mean Corpuscular Hemoglobin](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-results-mch.html)
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory MCH in Switzerland.

* [CH LAB Observation Results: Mean Corpuscular Hemoglobin Concentration](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-results-mchc.html)
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory MCHC in Switzerland.

* [CH LAB Observation Results: MeanCorpuscularVolume](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-results-mcv.html)
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory MCV.

<!--- 
### Data Type Profiles

{% for sd_hash in site.data.structuredefinitions -%} {%- assign sd = sd_hash[1] -%} {%- if sd.kind == "complex-type" and sd.type != "Extension" -%}

<li>
    <a href="{{sd.path}}">{{sd.title}}</a>
</li>
{%- endif -%} {%- endfor -%}
--->
