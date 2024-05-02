All significant changes to this FHIR implementation guide will be documented on this page.

### STU 1 Sequence - v1.0.0-ballot

* [#48](https://github.com/hl7ch/ch-lab-report/issues/48): Exchange the conformsTo rules with the imposeProfile extension
* [#49](https://github.com/hl7ch/ch-lab-report/issues/49): Add the FHIR flame to the IG header

### DSTU 1 Sequence - v0.1.1 (2023-12-28)

* [#270](https://github.com/hl7ch/ch-core/issues/270): Technical correction for invalid package
* [#52](https://github.com/hl7ch/ch-lab-report/issues/52): Update to Version 0.2.0-ci of HL7 Europe Laboratory Report

### publisher note: <http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber>

* reduce cardinality versionNumber of composition to 0..1
* align DiagnosticReport and Composition to EU Laboratory
* align Observation to EU Laboratory
* use Devices on examples
* use presentedForm to add base 64 encoded PDF
* add 2 examples with image results: electrophoresis and H2-CH4 Breath Test
* replace method $sct#82962001 "Protein electrophoresis (procedure)" with $sct#703450007 "Electrophoresis technique (qualifier value)"

* add simple example for a laboratory observation result: Observation-Ht

* [#73](https://github.com/hl7ch/ch-lab-report/issues/73) Results Blood Group
  * Profile CH LAB Observation Blood Group: Change ValueSet to [Results Blood Group - IPS](http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-uv-ips), change binding to 'preferred'
  * Example reporting Blood Group and RhD Result combined and coded with SNOMED CT: [BloodGroupRhSimple](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/Observation-BloodGroupSimple.html)
  * Example reporting Blood Group and RhD Result separately and coded with SNOMED CT: [BloodGroupRh](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/Observation-BloodGroup.html)
  * Example reporting the BloodGroup, Rhd and Coombs-Test Result as HTML Table: [BloodGroupFreeText](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/Observation-BloodGroupFreeText.html)
* [#71](https://github.com/hl7ch/ch-lab-report/issues/71) Example for renal Insufficiency:
  * [CH LAB Observation Results: Renal Insufficiency Panel](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-renal-insufficiency-panel.html)
* [#76](https://github.com/hl7ch/ch-lab-report/issues/76) eGFR CKD-EPI 2009 or 2021 formula:
  *  [CH LAB Observation Results: eGFR - CKD-EPI(ASR) Profile for females](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-egfr-female.html)
  * [CH LAB Observation Results: eGFR - CKD-EPI(ASR) Profile for males](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-egfr-ckd-epi-male.html)
  * [CH LAB Observation Results: eGFRcr - CKD-EPI(AS) Creatinin based Profile](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-egfr-cr-ckd-epi-2001.html)
  * [CH LAB Observation Results: eGFRcr-cys - CKD-EPI(AS) Creatinin and Cystatin-C based Profile](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-egfr-cr-cys-ckd-epi-2001.html)

* [#68 Do we need Observation Panel Profiles?](https://github.com/hl7ch/ch-lab-report/issues/68):
  * [CH LAB Observation Results CBC Panel - Blood by Automated count, Results in sliced component](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-cbc.html)Profile for observation laboratory result of automated Count of Blood Cells. We choose as Unit 10⁹/L or 10¹²/L for Cell Count. We use component slices which contain each Result.
  * [CH LAB Observation Results CBC Panel - Blood by Automated count, Results in nested Profiles](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-cbc-panel.html) We use SingleTest Profiles for each CBC Result slicing 'hasMember' element.
