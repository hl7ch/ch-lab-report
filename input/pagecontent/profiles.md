<!-- markdownlint-disable MD001 MD033 MD041 -->

### Diagram of Resources

The dependencies between the resources are shown in this diagram
[Resource Overview](https://fhir.ch/ig/ch-elm/profiles.html#overview)" 

### General Profiles for CH LAB-Report

To provide a better overview, this profiles page is divided into *General Profiles* and  *Profiles for specific purposes*. The implementation guide offers specific profiles for **Panels for automated blood cell count** and profiles handling **Panels for renal insufficiency and eGFR (estimated Glomerulum Filtration Rate)**.

* [CH LAB-Report Composition: Laboratory Report](StructureDefinition-ch-lab-report-composition.html)  
This profile constrains the Composition resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB-Report Device: Analyzer](StructureDefinition-ch-lab-report-device-analyzer.html)  
Holds Laboratory Analyzer Data
* [CH LAB-Report Device: TestKit](StructureDefinition-ch-lab-report-device-test-kit.html)  
Holds Laboratory Test-Kit Data
* [CH LAB-Report DiagnosticReport: Laboratory Report](StructureDefinition-ch-lab-diagnosticreport.html)  
This profile constrains the DiagnosticReport resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB-Report Document: Laboratory Report](StructureDefinition-ch-lab-report-document.html)  
This profile constrains the Bundle resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB-Report Observation Results: Laboratory Report](StructureDefinition-ch-lab-observation-results-laboratory.html)  
This profile constrains the Observation resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB-Report Patient](StructureDefinition-ch-lab-patient.html)  
This profile constrains the Patient resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB-Report Practitioner](StructureDefinition-ch-lab-practitioner.html)  
This profile constrains the Practitioner resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB-Report PractitionerRole](StructureDefinition-ch-lab-practitionerrole.html)  
This profile constrains the PractitionerRole resource for the purpose of laboratory test reports in Switzerland.  
* [CH LAB-Report ServiceRequest: Laboratory Order](StructureDefinition-ch-lab-report-servicerequest.html)  
This profile constrains the ServiceRequest resource for the purpose of laboratory orders in Switzerland.
* [CH LAB-Report Specimen](StructureDefinition-ch-lab-specimen.html)  
This profile constrains the Specimen resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB-Report Additive Substance](StructureDefinition-ch-lab-specimen-additive-substance.html)  
This profile defines how to represent Specimen Additive Substances in HL7 FHIR for the purpose of this guide.

### Profile for specific purposes, Panels (optional)

In the laboratory field, we often use panels for grouping laboratory analyses that belong together in terms of content, e.g. the group of analyses that quantify cardiovascular risks or that stand for a liver disease.
It is the task of the individual medical laboratories to offer the user meaningful panels. Some laboratories also offer their customers the opportunity to create their own panels. All this results in a wide range of panels that serve different purposes and differ from laboratory to laboratory. The implementation guide contains a narrow selection of panels that can be optionally used by laboratories and that can cover common needs.

<div markdown="5" class="dragon">
    <p>
    In FHIR, we have various options for displaying test panels in the laboratory area:<br>
      1. sliced component: we use the element <i>component</i> as an array in the Observation resource. The disadvantage is that component cannot be structured.<br>
      2. nested profiles: we can use the element <i>hasMember</i> to create test panels with any number of branches, which can be nested. The two profiles <i>CH LAB Observation Results Panel</i> and <i>CH LAB Observation Results Single Test</i> are provided for this purpose.
    </p>
    <p>
    The profile for estimated GFR is a particular challenge. There are different ways to calculate this GFR based on age, gender, race, creatinine, creatinine combined with cystatin-C. The implementation guide contains 3 profiles for this: 
      <ol>
        <li>eGFR-MDRD Profile</li>
        <li>eGFR-CKD-EPI(ASR) 2009 Profile</li>
        <li>eGFR-CKD-EPI(ASR) 2021 Profile</li>
      </ol>
    </p>
    <p>An expert in nephrology says: "Well, the fact is that there is explicitly <strong>no standard</strong> in Switzerland. The professional association allows both formulas, for various reasons (history, custom, politics (“factor for blacks”)). Likewise the statement of both formulas is virtually identical, they are both equally meaningful. He recommends that we map both formulas and mention that it is decided per institution, which is used. However, the discussion in Switzerland, Europe and worldwide is probably heated and ongoing."
</p>
    <p>
    Please add your feedback via the 'Propose a change'-link in the footer of the page.
    </p>
</div>
<br>

* [CH LAB-Report Observation Results: Panel](StructureDefinition-ChLab-observation-panel.html)  
This profile constrains the ChLabObservationResultsLaboratory profile to represent only a panel / battery of laboratory test results for the HL7 Swiss project. The top-level observation contains only further observations-panels and observations-single-tests in the hasMember element. The observation-panels may carry a conclusion in the note element and/or a global interpretation by the producer of the study, in the interpretation element; value[x] and component elements are not allowed and have to be shown in the observation-single-test profile.
* [CH LAB-Report Observation Results: Single Test](StructureDefinition-ChLab-observation-single-test.html)  
This profile constrains the ChLabObservationResultsLaboratory profile to represent single test results for the HL7 Swiss project. The profile enables only value[x] and component elements, hasMemer elements are not allowed.

* [CH LAB-Report Observation Results: Blood Group](StructureDefinition-ch-lab-observation-blood-group.html)  
Profile to report Blood Group and RhD data. In addition to the code element valuesets delivered from EU Laboratory we have added 3 supplement value sets: CH LAB-Report BloodGroup Antibody Screen Test Result, CH LAB-Report BloodGroup Antibody Result, CH LAB-Report BloodGroup Immunohematology Tests. These value sets have a candidate binding, i.e. they are candidates to substitute general value sets in some
defined situations.

#### Panels for automated blood cell count

We have two possibilities to structure the data for an automated blood cell count. We can use a profile with contains each cell count in a component. Or we pack the results in a container profile with nested cell count profiles.

##### CBC in sliced component

* [CH LAB-Report Observation Results CBC Panel - Blood by Automated count, Results in sliced component](StructureDefinition-ch-lab-observation-cbc.html)  
Profile for observation laboratory result of automated Count of Blood Cells. We choose as Unit 10⁹/L or 10¹²/L for Cell Count.

##### CBC in nested profiles

* [CH LAB-Report Observation Results CBC Panel - Blood by Automated count, Results in nested Profiles](StructureDefinition-ch-lab-observation-cbc-panel.html)  
This panel is the traditional hemogram plus platelet count which must now be reported with with hemograms according to current US re-imbursement rule The panel includes 2 different RDWs to accommodate the two different ways of reporting them. (Most automated instruments report as a percent ). The hemoglobin produced by the automatic counters does not use a counting method to generate the hemoglobin so we have used the fotometry version of hemoglobin in this panel.
  - [CH LAB-Report Observation Results: LeucocyteCount](StructureDefinition-ch-lab-observation-results-wbc.html)  
  This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory leucocyte count.
  - [CH LAB-Report Observation Results: ErythrocyteCount](StructureDefinition-ch-lab-observation-results-rbc.html)  
  This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory erythrocyte count.
  - [CH LAB-Report Observation Results: Hemoglobin](StructureDefinition-ch-lab-observation-results-hb.html)  
  This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory hemoglobin.
  - [CH LAB-Report Observation Results: Hemotocrit](StructureDefinition-ch-lab-observation-results-ht.html)  
  This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory hemotocrit in Switzerland.
  - [CH LAB-Report Observation Results: MeanCorpuscularVolume](StructureDefinition-ch-lab-observation-results-mcv.html)  
  This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory MCV.
  - [CH LAB-Report Observation Results: Mean Corpuscular Hemoglobin](StructureDefinition-ch-lab-observation-results-mch.html)  
  This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory MCH in Switzerland.
  - [CH LAB-Report Observation Results: Mean Corpuscular Hemoglobin Concentration](StructureDefinition-ch-lab-observation-results-mchc.html)  
  This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory MCHC in Switzerland.
  - [CH LAB-Report Observation Results: Erythrocyte distribution Width by Automated count](StructureDefinition-ch-lab-observation-results-ery-distribution-width.html)  
  This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory Erythrocyte Distribuition Width in Switzerland.
  - [CH LAB-Report Observation Results: Platelet Count](StructureDefinition-ch-lab-observation-results-platelets.html)  
  This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory platelet count.
  - [CH LAB-Report Observation Results: Platelet Distribution Width](StructureDefinition-ch-lab-observation-results-platelets-distribution-width.html)  
  This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory platelet count.
  - CH [LAB Observation Results: Platelet Mean Volume](StructureDefinition-ch-lab-observation-results-platelets-mean-volume.html)  
  This profile constrains the ChLabObservationSingleTest profile for the purpose of laboratory platelet mean volume.

#### Panels for renal insufficiency and eGFR (estimated Glomerulum Filtration Rate)

The estimated glomerular filtration rate (eGFR) is a critical measure used to assess kidney function. Several formulas and approaches have been developed to calculate eGFR, with variations based on available patient information.

* [CH LAB-Report Observation Results: Renal Insufficiency Panel](StructureDefinition-ch-lab-observation-renal-insufficiency-panel.html)  
This panel collects the lab results in relation to renal insufficiency.  
  - [CH LAB-Report Observation Results: eGFR](StructureDefinition-ch-lab-observation-egfr.html)  
  Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular filtration rate (eGFR) can be calculated, see 3 methods below.
  - [CH LAB-Report Observation Results: Albumin/Creatinine Ratio in Urine](StructureDefinition-ch-lab-observation-albumin-creatinine-urine-ratio.html)  
  This profile constrains the ChLabObservationSingleTest profile to get the ratio of laboratory albumin/creatinin concentration.  

##### eGFR_MDRD based on serum creatinine, age, gender, race

* [CH LAB-Report Observation Results: eGFR-MDRD Profile](StructureDefinition-ch-lab-observation-egfr-mdrd.html)  
Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular (eGFR_MDMR) filtration rate can be calculated. Further input parameters are age, race and gender.  
Note: The MDRD equation is hardly used any more and is replaced by the CKD-EPI equation.

##### eGFR_CKD_EPI 2009 based on serum creatinine, age, gender, race

* [CH LAB-Report Observation Results: eGFR-CKD-EPI(ASR) 2009 Profile](StructureDefinition-ch-lab-observation-egfr-ckd-epi-2009.html)  
Renal function can be determined by laboratory measurement of serum creatinine and serum cystatin C, from which the estimated glomerular (eGFR_CKD_EPI) filtration rate can be calculated.

##### eGFR_CKD_EPI 2021 based on serum creatinine, serum creatinine and cystatin-C, age, gender

* [CH LAB-Report Observation Results: eGFR-CKD-EPI(ASR) 2021 Profile](StructureDefinition-ch-lab-observation-egfr-ckd-epi-2021.html)  
Glomerular filtration rate (GFR) is considered the best overall index of kidney function; however measured GFR is not practical in the routine clinical setting. Estimated glomerular filtration rate (eGFR) is a suitable alternative and can be calculated for adults >= 18 years using an equation incorporating the patient's age, gender, and measured serum/plasma/blood creatinine only (eGFRcr) [LOINC: 98979-8](https://loinc.org/98979-8/) or both serum/plasma/blood creatinine and serum/plasma cystatin C (eGFRcr-cys) [LOINC: 98980-6](https://loinc.org/98980-6/). The serum/plasma/blood creatinine value is based on a measurement procedure that is traceable to the isotope dilution mass spectrometry (IDMS) reference measurement procedure for creatinine. The 2021 CKD-EPI equations used for eGFRcr and eGFRcr-cys do not have a race term as does the older estimating equations that they replace. [https://www.nejm.org/doi/pdf/10.1056/NEJMoa2102953](https://www.nejm.org/doi/pdf/10.1056/NEJMoa2102953)

<!--- 
### Data Type Profiles

{% for sd_hash in site.data.structuredefinitions -%} {%- assign sd = sd_hash[1] -%} {%- if sd.kind == "complex-type" and sd.type != "Extension" -%}

<li>
    <a href="{{sd.path}}">{{sd.title}}</a>
</li>
{%- endif -%} {%- endfor -%}
--->
