All significant changes to this FHIR implementation guide will be documented on this page.
### STU 1 Ballot (2024)

* [#92](https://github.com/hl7ch/ch-lab-report/issues/92): Add Profile ChLabObservationBloodGroup with additional valueSets as candidates
* [#93](https://github.com/hl7ch/ch-lab-report/issues/93): Outcomment SetFmmandStatusRule in all profiles to set them to active.
* [#94](https://github.com/hl7ch/ch-lab-report/issues/94): Bundle 2-electrophoresis – JSON: section "Laboratory examinations" empty? no amendment: contains subsection "Chemistry studies (set)
* [#95](https://github.com/hl7ch/ch-lab-report/issues/95): Specimen.type: reduce the minimum cardinality of Specimen.type to 0.
* [#96](https://github.com/hl7ch/ch-lab-report/issues/96): Duplicate from #95, no amendment
* [#114](https://github.com/hl7ch/ch-lab-report/issues/114): Profiles: add links to LOINC Codes and NEJM in text of eGFR-CKD-EPI(ASR) 2021 Profile
* [#115](https://github.com/hl7ch/ch-lab-report/issues/115): Use Cases in English: No amendment, duplicate of [#100](https://github.com/hl7ch/ch-lab-report/issues/100)
* [#116](https://github.com/hl7ch/ch-lab-report/issues/116): Changelog, refactor bloodgroup examples

### STU 1 Sequence - v1.0.0-ballot

* [#48](https://github.com/hl7ch/ch-lab-report/issues/48): Exchange the conformsTo rules with the imposeProfile extension
* [#49](https://github.com/hl7ch/ch-lab-report/issues/49): Add the FHIR flame to the IG header

### DSTU 1 Sequence - v0.1.1 (2023-12-28)

* [#270](https://github.com/hl7ch/ch-core/issues/270): Technical correction for invalid package
* [#52](https://github.com/hl7ch/ch-lab-report/issues/52): Update to Version 0.2.0-ci of HL7 Europe Laboratory Report

* [#73](https://github.com/hl7ch/ch-lab-report/issues/73): Results Blood Group
  * Profile CH LAB Observation Blood Group: Change ValueSet to [Results Blood Group - IPS](http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-uv-ips), change binding to 'preferred'
  * Example reporting Blood Group and RhD Result combined and coded with SNOMED CT: [BloodGroupAB0RhD](https://build.fhir.org/ig/hl7ch/ch-lab-report/Observation-BloodGroupAB0RhD.html)
  * Example reporting Blood Group and RhD Result separately and coded with SNOMED CT: [BloodGroupCompAB0CompRhD](https://build.fhir.org/ig/hl7ch/ch-lab-report/Observation-BloodGroupCompAB0CompRhD.html)

  * Example reporting ABO group [Type] and Rh [Type] separately in a component and coded with SNOMED CT, the latter proving weak D is in VS: [BloodGroupCompAB0CompRhDWeakD](https://build.fhir.org/ig/hl7ch/ch-lab-report/Observation-BloodGroupCompAB0CompRhDWeakD.html)

  * Example reporting ABO group [Type], Rh [Type], the result of antibody screen test and the Result of DAT separately in a component and coded with SNOMED CT: [BloodGroupCompAB0CompRhDAT](https://build.fhir.org/ig/hl7ch/ch-lab-report/Observation-BloodGroupCompAB0CompRhDAT.html)

  * Example reporting ABO group [Type] and Rh [Type] as a panel containing 2 hasMember elements: [BloodGroupPanel](https://build.fhir.org/ig/hl7ch/ch-lab-report/Observation-BloodGroupPanel.html)

  * Example reporting ABO group [Type], Rh [Type], the Rhesus Genotyp as uncoded text, and the result of Antibody screen test : [BloodGroupCompAB0CompRhDAntibodies](https://build.fhir.org/ig/hl7ch/ch-lab-report/Observation-BloodGroupCompAB0CompRhDAntibodies.html)

  * [#71](https://github.com/hl7ch/ch-lab-report/issues/71): Example for renal Insufficiency:
  * [CH LAB Observation Results: Renal Insufficiency Panel](https://build.fhir.org/ig/hl7ch/ch-lab-report/StructureDefinition-ch-lab-observation-renal-insufficiency-panel.html)

* [#76](https://github.com/hl7ch/ch-lab-report/issues/76): eGFR CKD-EPI 2009 or 2021 formula:
  *  [CH LAB Observation Results: eGFR - CKD-EPI(ASR) Profile for females](https://build.fhir.org/ig/hl7ch/ch-lab-report/StructureDefinition-ch-lab-observation-egfr.html)
  
    * [CH LAB Observation Results: eGFRcr - CKD-EPI(AS) Creatinin based Profile](https://build.fhir.org/ig/hl7ch/ch-lab-report/StructureDefinition-ch-lab-observation-egfr-cr-ckd-epi-2021.html)
    * [CH LAB Observation Results: eGFRcr-cys - CKD-EPI(AS) Creatinin and Cystatin-C based Profile](https://build.fhir.org/ig/hl7ch/ch-lab-report/StructureDefinition-ch-lab-observation-egfr-cr-cys-ckd-epi-2021.html)

* [#68 Do we need Observation Panel Profiles?](https://github.com/hl7ch/ch-lab-report/issues/68):
  * [CH LAB Observation Results CBC Panel - Blood by Automated count, Results in sliced component](https://build.fhir.org/ig/hl7ch/ch-lab-report/StructureDefinition-ch-lab-observation-cbc.html)Profile for observation laboratory result of automated Count of Blood Cells. We choose as Unit 10⁹/L or 10¹²/L for Cell Count. We use component slices which contain each Result.
  * [CH LAB Observation Results CBC Panel - Blood by Automated count, Results in nested Profiles](https://build.fhir.org/ig/hl7ch/ch-lab-report/StructureDefinition-ch-lab-observation-cbc-panel.html) We use SingleTest Profiles for each CBC Result slicing 'hasMember' element.

* [#92 Profile: ChLabObservationBloodGroup](https://github.com/hl7ch/ch-lab-report/issues/92)
  * Add Antibody ValueSets:
    * ValueSet: ChLabBloodGroupAntibody
    * ValueSet: ChLabBloodGroupAntibodyScreen
    * ValueSet: ChLabBloodGroupAntibodyScreen
