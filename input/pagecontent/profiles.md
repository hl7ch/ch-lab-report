<!-- markdownlint-disable MD001 MD033 MD041 -->

### General Profiles for CH LAB-Report

* [CH LAB Composition: Laboratory Report](StructureDefinition-ch-lab-report-composition.html)\
This profile constrains the Composition resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB Device: Analyzer](StructureDefinition-ch-lab-report-device-analyzer.html)\
Holds Laboratory Analyzer Data
* [CH LAB Device: TestKit](StructureDefinition-ch-lab-report-device-test-kit.html)\
Holds Laboratory Test-Kit Data
* [CH LAB DiagnosticReport: Laboratory Report](StructureDefinition-ch-lab-diagnosticreport.html)\
This profile constrains the DiagnosticReport resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB Document: Laboratory Report](StructureDefinition-ch-lab-report-document.html)\
This profile constrains the Bundle resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB Observation Results: Laboratory Report](StructureDefinition-ch-lab-observation-results-laboratory.html)\
This profile constrains the Observation resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB Patient](StructureDefinition-ch-lab-patient.html)\
This profile constrains the Patient resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB Practitioner](StructureDefinition-ch-lab-practitioner.html)\
This profile constrains the Practitioner resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB PractitionerRole](StructureDefinition-ch-lab-practitionerrole.html)\
This profile constrains the PractitionerRole resource for the purpose of laboratory test reports in Switzerland.\
* [CH LAB ServiceRequest: Laboratory Order](StructureDefinition-ch-lab-report-servicerequest.html)\
This profile constrains the ServiceRequest resource for the purpose of laboratory orders in Switzerland.
* [CH LAB Specimen](StructureDefinition-ch-lab-specimen.html)\
This profile constrains the Specimen resource for the purpose of laboratory test reports in Switzerland.
* [Substance: Specimen Additive Substance](StructureDefinition-specimen-additive-substance-eu-lab.html)\
This profile defines how to represent Specimen Additive Substances in HL7 FHIR for the purpose of this guide.

### Profile for specific purposes, Panels (optional)

In the laboratory field, we often use panels as a container for a group of laboratory analyses that belong together in terms of content, e.g. the group of analyses that quantify cardiovascular risks or that stand for a liver disease.
It is the task of the individual medical laboratories to offer the user meaningful panels. Some laboratories also offer their customers the opportunity to create their own panels. This results in a wide range of panels that serve different purposes and differ from laboratory to laboratory. 
The implementation guide contains a narrow selection of panels that can be optionally used by laboratories and that can cover common needs.

* [CH LAB Observation Results: Panel](StructureDefinition-ChLab-observation-panel.html)\
This profile constrains the ChLabObservationResultsLaboratory profile to represent only a panel / battery of laboratory test results for the HL7 Swiss project. The top-level observation contains only further observations-panels and observations-single-tests in the hasMember element. The observation-panels may carry a conclusion in the note element and/or a global interpretation by the producer of the study, in the interpretation element; value[x] and component elements are not allowed and have to be shown in the observation-single-test profile.
* [CH LAB Observation Results: Single Test](StructureDefinition-ChLab-observation-single-test.html)\
This profile constrains the ChLabObservationResultsLaboratory profile to represent single test results for the HL7 Swiss project. The profile enables only value[x] and component elements, hasMemer elements are not allowed.

#### Panels for automated blood cell count

We have two possibilities to structure the data for an automated blood cell count. We can use a profile with contains each cell count in a component. Or we pack the results in a container profile with nested cell count profiles.

##### CBC in sliced component

* [CH LAB Observation Results CBC Panel - Blood by Automated count, Results in sliced component](StructureDefinition-ch-lab-observation-cbc.html)\
Profile for observation laboratory result of automated Count of Blood Cells. We choose as Unit 10⁹/L or 10¹²/L for Cell Count.

##### CBC in nested profiles

* [CH LAB Observation Results CBC Panel - Blood by Automated count, Results in nested Profiles](StructureDefinition-ch-lab-observation-cbc-panel.html)\
This panel is the traditional hemogram plus platelet count which must now be reported with with hemograms according to current US re-imbursement rule The panel includes 2 different RDWs to accommodate the two different ways of reporting them. (Most automated instruments report as a percent ). The hemoglobin produced by the automatic counters does not use a counting method to generate the hemoglobin so we have used the fotometry version of hemoglobin in this panel.
* [CH LAB Observation Results: LeucocyteCount](StructureDefinition-ch-lab-observation-results-wbc.html)\
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory leucocyte count.
* [CH LAB Observation Results: ErythrocyteCount](StructureDefinition-ch-lab-observation-results-rbc.html)\
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory erythrocyte count.
* [CH LAB Observation Results: Hemoglobin](StructureDefinition-ch-lab-observation-results-hb.html)\
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory hemoglobin.
* [CH LAB Observation Results: Hemotocrit](StructureDefinition-ch-lab-observation-results-ht.html)\
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory hemotocrit in Switzerland.
* [CH LAB Observation Results: MeanCorpuscularVolume](StructureDefinition-ch-lab-observation-results-mcv.html)\
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory MCV.
* [CH LAB Observation Results: Mean Corpuscular Hemoglobin](StructureDefinition-ch-lab-observation-results-mch.html)\
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory MCH in Switzerland.
* [CH LAB Observation Results: Mean Corpuscular Hemoglobin Concentration](StructureDefinition-ch-lab-observation-results-mchc.html)\
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory MCHC in Switzerland.
* [CH LAB Observation Results: Erythrocyte distribution by Automated count](StructureDefinition-ch-lab-observation-results-ery-distribution-width.html)\
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory Erythrocyte Distribuition Width in Switzerland.
* [CH LAB Observation Results: Platelet Count](StructureDefinition-ch-lab-observation-results-platelets.html)\
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory platelet count.
* [CH LAB Observation Results: Platelet Distribution Width](StructureDefinition-ch-lab-observation-results-platelets-distribution-width.html)\
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory platelet count.
* CH [LAB Observation Results: Platelet Mean Volume](StructureDefinition-ch-lab-observation-results-platelets-mean-volume.html)\
This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory platelet mean volume.

#### Panels for renal insufficiency and eGFR (estimated Glomerulum Filtration Rate)

The estimated glomerular filtration rate (eGFR) is a critical measure used to assess kidney function. Several formulas and approaches have been developed to calculate eGFR, with variations based on available patient information.

* [CH LAB Observation Results: Renal Insufficiency Panel](StructureDefinition-ch-lab-observation-renal-insufficiency-panel.html)\
This panel collects the lab results in relation to renal insufficiency.\
* [CH LAB Observation Results: eGFR](StructureDefinition-ch-lab-observation-egfr.html)\
Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular filtration rate (eGFR) can be calculated.
* [CH LAB Observation Results: Albumin/Creatinine Ratio in Urine](StructureDefinition-ch-lab-observation-albumin-creatinine-urine-ratio.html)\
This profile constrains the ChLabObservationSingleTest profile to get the ratio of laboratory albumin/creatinin concentration.\

##### eGFR_MDRD and eGFR_CKD_EPI based on serum creatinine, age, gender, race

* [CH LAB Observation Results: eGFR - MDRD Profile for females](StructureDefinition-ch-lab-observation-egfr-mdrd-female.html)\
Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular (eGFR_MDMR) filtration rate can be calculated.
* [CH LAB Observation Results: eGFR - MDRD Profile for males](StructureDefinition-ch-lab-observation-egfr-mdrd-male.html)\
Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular (eGFR_MDMR) filtration rate can be calculated.
* [CH LAB Observation Results: eGFR - CKD-EPI(ASR) Profile for females](StructureDefinition-ch-lab-observation-egfr-female.html)\
Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular (eGFR_CKD_EPI) filtration rate can be calculated.
* [CH LAB Observation Results: eGFR - CKD-EPI(ASR) Profile for males](StructureDefinition-ch-lab-observation-egfr-ckd-epi-male.html)\
Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular (eGFR_CKD_EPI) filtration rate can be calculated.

##### eGFRcr_CKD_EPI_2021 based on serum creatinine, serum creatinine and cystatin-C, age, gender

* [CH LAB Observation Results: eGFRcr - CKD-EPI(AS) Creatinin based Profile](StructureDefinition-ch-lab-observation-egfr-cr-ckd-epi-2021.html)\
Glomerular filtration rate (GFR) is considered the best overall index of kidney function; however measured GFR is not practical in the routine clinical setting. Estimated glomerular filtration rate (eGFR) is a suitable alternative and can be calculated for adults >= 18 years using an equation incorporating the patient's age, gender, and measured serum/plasma/blood creatinine only (eGFRcr) (this term) or both serum/plasma/blood creatinine and serum/plasma cystatin C (eGFRcr-cys) [LOINC: 98979-8](https://loinc.org/98979-8/). The serum/plasma/blood creatinine value is based on a measurement procedure that is traceable to the isotope dilution mass spectrometry (IDMS) reference measurement procedure for creatinine. The 2021 CKD-EPI equations used for eGFRcr and eGFRcr-cys do not have a race term as does the older estimating equations that they replace. [https://www.nejm.org/doi/pdf/10.1056/NEJMoa2102953](https://www.nejm.org/doi/pdf/10.1056/NEJMoa2102953)
* [CH LAB Observation Results: eGFRcr-cys - CKD-EPI(AS) Creatinin and Cystatin-C based Profile](StructureDefinition-ch-lab-observation-egfr-cr-cys-ckd-epi-2021.html)\
Glomerular filtration rate (GFR) is considered the best overall index of kidney function; however measured GFR is not practical in the routine clinical setting. Estimated glomerular filtration rate (eGFR) is a suitable alternative and can be calculated for adults >= 18 years using an equation incorporating the patient's age, gender, and measured serum/plasma/blood creatinine only (eGFRcr) (this term) or both serum/plasma/blood creatinine and serum/plasma cystatin C (eGFRcr-cys) [LOINC: 98980-6](https://loinc.org/98980-6/). The serum/plasma/blood creatinine value is based on a measurement procedure that is traceable to the isotope dilution mass spectrometry (IDMS) reference measurement procedure for creatinine. The 2021 CKD-EPI equations used for eGFRcr and eGFRcr-cys do not have a race term as does the older estimating equations that they replace. [https://www.nejm.org/doi/pdf/10.1056/NEJMoa2102953](https://www.nejm.org/doi/pdf/10.1056/NEJMoa2102953)

<!--- 
### Data Type Profiles

{% for sd_hash in site.data.structuredefinitions -%} {%- assign sd = sd_hash[1] -%} {%- if sd.kind == "complex-type" and sd.type != "Extension" -%}

<li>
    <a href="{{sd.path}}">{{sd.title}}</a>
</li>
{%- endif -%} {%- endfor -%}
--->
