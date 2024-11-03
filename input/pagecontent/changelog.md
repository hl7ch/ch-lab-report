All significant changes to this FHIR implementation guide will be documented on this page.
### STU 1 Ballot (2024)

* [#70](https://github.com/hl7ch/ch-lab-report/issues/70) Limit image size to 20 megabytes: Add menu point and page 'Guidance'.
* [#71](https://github.com/hl7ch/ch-lab-report/issues/71) Example for renal Insufficiency
* [#73](https://github.com/hl7ch/ch-lab-report/issues/73) Results Blood Group: Add more examples
* [#77](https://github.com/hl7ch/ch-lab-report/issues/77) The graphic 'Resoure Overview' has been removed.
* [#78](https://github.com/hl7ch/ch-lab-report/issues/78) Add Examples: CH LAB Observation Blood Group - Definitions
[Blood Group Panel with Component ABO and Component Rh resulting Weak D](https://build.fhir.org/ig/hl7ch/ch-lab-report/Observation-BloodGroupComponentWeakD.html)
* [#92](https://github.com/hl7ch/ch-lab-report/issues/92): Add Profile ChLabObservationBloodGroup with additional valueSets as candidates
* [#93](https://github.com/hl7ch/ch-lab-report/issues/93): Outcomment SetFmmandStatusRule in all profiles to set them to active.
* [#94](https://github.com/hl7ch/ch-lab-report/issues/94): Bundle 2-electrophoresis – JSON: section "Laboratory examinations" empty? no amendment: contains subsection "Chemistry studies (set)
* [#95](https://github.com/hl7ch/ch-lab-report/issues/95): Specimen.type: reduce the minimum cardinality of Specimen.type to 0.
* [#96](https://github.com/hl7ch/ch-lab-report/issues/96): Duplicate from #95, no amendment

* [#99](https://github.com/hl7ch/ch-lab-report/issues/99): Insert 'imposeProfile extension (to EU LAB)' into the ChLabReportServiceRequest profile'
* [#100](https://github.com/hl7ch/ch-lab-report/issues/100)
* [#102](https://github.com/hl7ch/ch-lab-report/issues/102) Move referenceRanges from dGFR profiles into examples
* [#103](https://github.com/hl7ch/ch-lab-report/issues/103) Merge CDK-EPI profiles for males and females, parent is ChLabObservation_eGFR
* [#104](https://github.com/hl7ch/ch-lab-report/issues/104) Merge Erythrocytes distribuition width, MDRD and CDK-EPI profiles, take codes from valueSet. eGFR calculation uses different formulas with different parameters, the implementation guide uses 3 calculation methods.
* [#106](https://github.com/hl7ch/ch-lab-report/issues/106) CodeableConcept.text with fixed value: remove code.text from all profiles
* [#108](https://github.com/hl7ch/ch-lab-report/issues/108) Home: replace sex with (administrative) gender.

* [#109](https://github.com/hl7ch/ch-lab-report/issues/109) external links to FHIR spec: replace https://www.hl7.org/fhir/ with https://www.hl7.org/fhir/r4/
* [#110](https://github.com/hl7ch/ch-lab-report/issues/110) Terminology: empty sections: outcomment empty sections in terminology page
* [#111](https://github.com/hl7ch/ch-lab-report/issues/111) Terminology: Replace Profile name SpecimenAdditiveSubstance with ChLabSpecimenAdditiveSubstance

* [#113](https://github.com/hl7ch/ch-lab-report/issues/113) ChLab BloodGroup Antibody Screen Tests; 3 Value Sets are used by the Blood Group profile: CH LAB BloodGroup Antibody Result (SNOMED CT coded substances), CH LAB BloodGroup Immunohematology Tests (SNOMED CT coded procedures), CH LAB BloodGroup Antibody Screen Test Result (LOINC codes)

* [#114](https://github.com/hl7ch/ch-lab-report/issues/114) Profiles: add links to LOINC Codes and NEJM in text of eGFR-CKD-EPI(ASR) 2021 Profile

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
  * [#71](https://github.com/hl7ch/ch-lab-report/issues/71) Example for renal Insufficiency:
  * [CH LAB Observation Results: Renal Insufficiency Panel](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-renal-insufficiency-panel.html)
* [#76](https://github.com/hl7ch/ch-lab-report/issues/76) eGFR CKD-EPI 2009 or 2021 formula:
  *  [CH LAB Observation Results: eGFR - CKD-EPI(ASR) Profile for females](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-egfr-female.html)
  * [CH LAB Observation Results: eGFR - CKD-EPI(ASR) Profile for males](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-egfr-ckd-epi-2009-male.html)
  * [CH LAB Observation Results: eGFRcr - CKD-EPI(AS) Creatinin based Profile](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-egfr-cr-ckd-epi-2001.html)
  * [CH LAB Observation Results: eGFRcr-cys - CKD-EPI(AS) Creatinin and Cystatin-C based Profile](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-egfr-cr-cys-ckd-epi-2001.html)

* [#68 Do we need Observation Panel Profiles?](https://github.com/hl7ch/ch-lab-report/issues/68):
  * [CH LAB Observation Results CBC Panel - Blood by Automated count, Results in sliced component](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-cbc.html)Profile for observation laboratory result of automated Count of Blood Cells. We choose as Unit 10⁹/L or 10¹²/L for Cell Count. We use component slices which contain each Result.
  * [CH LAB Observation Results CBC Panel - Blood by Automated count, Results in nested Profiles](https://build.fhir.org/ig/hl7ch/ch-lab-report/branches/develop/StructureDefinition-ch-lab-observation-cbc-panel.html) We use SingleTest Profiles for each CBC Result slicing 'hasMember' element.

  * added examples for Profiles: 
    * StructureDefinition​/ch-lab-observation-cbc
    * StructureDefinition​/ch-lab-observation-egfr-cr-ckd-epi-2021
    * StructureDefinition​/ch-lab-observation-egfr-cr-cys-ckd-epi-2021
    * StructureDefinition-specimen-additive-substance
    * StructureDefininion-ch-lab-observation-albumin-creatinine-urine-ratio

* [#78 CH LAB Observation Blood Group - Definitions (Corina von Känel CISTEC)](https://github.com/hl7ch/ch-lab-report/issues/78) 
  * removed Observation Profile Bloodgroup
  * added examples Bloodgroup
    * [Blood Group ABO Rh Panel](https://build.fhir.org/ig/hl7ch/ch-lab-report/Observation-BloodGroupPanel.html)
    * [Blood Group Panel with Component ABO and Component Rh](https://build.fhir.org/ig/hl7ch/ch-lab-report/Observation-BloodGroupComponent.html)
    * [Blood Group Rh combined](https://build.fhir.org/ig/hl7ch/ch-lab-report/Observation-BloodGroupSimple.html)

[#92 Profile: ChLabObservationBloodGroup](https://github.com/hl7ch/ch-lab-report/issues/92)
  * Add Antibody ValueSets:
    * ValueSet: ChLabBloodGroupAntibody
    * ValueSet: ChLabBloodGroupAntibodyScreen
    * ValueSet: ChLabBloodGroupAntibodyScreenResult
