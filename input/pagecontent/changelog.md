All significant changes to this FHIR implementation guide will be documented on this page.

#### Fixed (2024-03-10)
* [#156](https://github.com/hl7ch/ch-lab-report/issues): add SCT edition in the expansion parameters for usage of Swiss Extensions
* fix all not reacheable entries in Composition and remove correspondent warnings in ignoreWarnings file.

### STU 2 Sequence - v2.0.0 (2025-05-19)
* update dependency to eu-laboratory 0.1.1
* Newly issued warnings about multiple matches for URLs and about URLs not resolving with urn::oid are listed in the ignoreWarnings file. The sushi-config parameter 'pin-canonicals' causes the creation of the IG to be aborted. The cause is unclear. 
* replace http://www.labor-gantenbein.ch with http://example.org/Labor-Gantenbein
* replace https://labor.pipette.com with http://example.org/Labor-Pipette
* replace requisition.system = "urn:oid:2.16.756.5.30" with requisition.system = "http://example.org/ProviderNumber/Requisition
* replace identifier.system = "urn:oid:2.16.756.5.30" with identifier.system = "http://example.org/labor-pipette"

### STU 1 Sequence - v1.0.0 (2024-12-17)
<!--
See also open issues on [GitHub](https://github.com/hl7ch/ch-lab-report/issues).
-->
#### Changed / Updated
* [#91](https://github.com/hl7ch/ch-lab-report/issues/91): Missing slice of value[x] and component.value[x] in observation: value.ofType(boolean)
* [#70](https://github.com/hl7ch/ch-lab-report/issues/70): Limit image size to 20 megabytes: Add menu point and page 'Guidance'.
* [#73](https://github.com/hl7ch/ch-lab-report/issues/73): Results Blood Group: Add more examples
* [#77](https://github.com/hl7ch/ch-lab-report/issues/77): The graphic 'Resource Overview' has been removed.
* [#78](https://github.com/hl7ch/ch-lab-report/issues/78): CH LAB-Report Observation Blood Group - Definitions
  * add example Bloodgroup panel with 2 dependent hasMember elements
    * [Blood Group ABO Rh Panel](Observation-BloodGroupPanel.html)
    * [Blood Group Panel ABO](Observation-BloodGroupMemberABO.html)
    * [Blood Group RhD](Observation-BloodGroupMemberRh.html)
* [#92](https://github.com/hl7ch/ch-lab-report/issues/92): Add Profile ChLabObservationBloodGroup with additional valueSets as candidates
* [#93](https://github.com/hl7ch/ch-lab-report/issues/93): Outcomment SetFmmandStatusRule in all profiles to set them to active.
* [#94](https://github.com/hl7ch/ch-lab-report/issues/94): Bundle 2-electrophoresis – JSON: section "Laboratory examinations" empty? no amendment: contains subsection "Chemistry studies (set)
* [#95](https://github.com/hl7ch/ch-lab-report/issues/95): Specimen.type: reduce the minimum cardinality of Specimen.type to 0.
* [#96](https://github.com/hl7ch/ch-lab-report/issues/96): Duplicate from #95, no amendment
* [#99](https://github.com/hl7ch/ch-lab-report/issues/99): Insert 'imposeProfile extension (to EU LAB)' into the ChLabReportServiceRequest profile'
* [#100](https://github.com/hl7ch/ch-lab-report/issues/100): Use Cases in English and other langs: Remove Fig. 1 Resource Overview diagram and place a link to Resource Overview in CH ELM on the profiles page.
* [#102](https://github.com/hl7ch/ch-lab-report/issues/102): Move referenceRanges from dGFR profiles into examples
* [#103](https://github.com/hl7ch/ch-lab-report/issues/103): Merge CDK-EPI profiles for males and females, parent is ChLabObservation_eGFR
* [#104](https://github.com/hl7ch/ch-lab-report/issues/104): Merge Erythrocytes distribuition width, MDRD and CDK-EPI profiles, take codes from valueSet. eGFR calculation uses different formulas with different parameters, the implementation guide uses 3 calculation methods.
* [#108](https://github.com/hl7ch/ch-lab-report/issues/108): Home: replace sex with (administrative) gender.
* [#109](https://github.com/hl7ch/ch-lab-report/issues/109): External links to FHIR spec: replace https://www.hl7.org/fhir/ with https://www.hl7.org/fhir/r4/
* [#106](https://github.com/hl7ch/ch-lab-report/issues/106): CodeableConcept.text with fixed value: remove code.text from all profiles
* [#110](https://github.com/hl7ch/ch-lab-report/issues/110): Terminology: empty sections: outcomment empty sections in terminology page
* [#111](https://github.com/hl7ch/ch-lab-report/issues/111): Terminology: Replace Profile name SpecimenAdditiveSubstance with ChLabSpecimenAdditiveSubstance
* [#113](https://github.com/hl7ch/ch-lab-report/issues/113): ChLab BloodGroup Antibody Screen Tests; 3 Value Sets are used by the Blood Group profile: CH LAB-Report BloodGroup Antibody Result (SNOMED CT coded substances), CH LAB-Report BloodGroup Immunohematology Tests (SNOMED CT coded procedures), CH LAB-Report BloodGroup Antibody Screen Test Result (LOINC codes)
* [#114](https://github.com/hl7ch/ch-lab-report/issues/114): Profiles: add links to LOINC Codes and NEJM in text of eGFR-CKD-EPI(ASR) 2021 Profile
* [#115](https://github.com/hl7ch/ch-lab-report/issues/115): Use Cases in English: No amendment, duplicate of [#100](https://github.com/hl7ch/ch-lab-report/issues/100)
* [#116](https://github.com/hl7ch/ch-lab-report/issues/116): Changelog, refactor bloodgroup examples
* [#159](https://github.com/hl7ch/ch-lab-report/issues/159): Fix dependency to hl7.terminology

#### Issues resolved without amendment (in IG)
* [#97](https://github.com/hl7ch/ch-lab-report/issues/97): Typo generated in narrative (tooling side)


### STU 1 Sequence - v1.0.0-ballot (2024-05-17)
* [#48](https://github.com/hl7ch/ch-lab-report/issues/48): Exchange the conformsTo rules with the imposeProfile extension
* [#49](https://github.com/hl7ch/ch-lab-report/issues/49): Add the FHIR flame to the IG header


### DSTU 1 Sequence - v0.1.1 (2023-12-28)
* [#270](https://github.com/hl7ch/ch-core/issues/270): Technical correction for invalid package
* [#52](https://github.com/hl7ch/ch-lab-report/issues/52): Update to Version 0.2.0-ci of HL7 Europe Laboratory Report
* [#73](https://github.com/hl7ch/ch-lab-report/issues/73): Results Blood Group
  * Profile CH LAB-Report Observation Blood Group: Change ValueSet to [Results Blood Group - IPS](http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-uv-ips), change binding to 'preferred'
  * Example reporting Blood Group and RhD Result combined and coded with SNOMED CT: [BloodGroupAB0RhD](Observation-BloodGroupAB0RhD.html)
  * Example reporting Blood Group and RhD Result separately and coded with SNOMED CT: [BloodGroupCompAB0CompRhD](Observation-BloodGroupCompAB0CompRhD.html)
  * Example reporting ABO group [Type] and Rh [Type] separately in a component and coded with SNOMED CT, the latter proving weak D is in VS: [BloodGroupCompAB0CompRhDWeakD](Observation-BloodGroupCompAB0CompRhDWeakD.html)
  * Example reporting ABO group [Type], Rh [Type], the result of antibody screen test and the Result of DAT separately in a component and coded with SNOMED CT: [BloodGroupCompAB0CompRhDAT](Observation-BloodGroup-codedResult-2.html)
  * Example reporting ABO group [Type] and Rh [Type] as a panel containing 2 hasMember elements: [BloodGroupPanel](Observation-BloodGroupPanel.html)
  * Example reporting ABO group [Type], Rh [Type], the Rhesus phenotyp as uncoded text, and the result of Antibody screen test : [BloodGroupCompAB0CompRhDAntibodies](Observation-BloodGroup-codedResult-3.html)
  * [#71](https://github.com/hl7ch/ch-lab-report/issues/71): Example for renal Insufficiency:
  * [CH LAB-Report Observation Results: Renal Insufficiency Panel](StructureDefinition-ch-lab-observation-renal-insufficiency-panel.html)
* [#76](https://github.com/hl7ch/ch-lab-report/issues/76): eGFR CKD-EPI 2009 or 2021 formula:
  *  [CH LAB-Report Observation Results: eGFR - CKD-EPI(ASR) Profile for females](StructureDefinition-ch-lab-observation-egfr.html)
    * [CH LAB-Report Observation Results: eGFRcr - CKD-EPI(AS) Creatinin/Cystatin-C based Profile](StructureDefinition-ch-lab-observation-egfr-ckd-epi-2021.html)
* [#68](https://github.com/hl7ch/ch-lab-report/issues/68): Do we need Observation Panel Profiles?
  * [CH LAB-Report Observation Results CBC Panel - Blood by Automated count, Results in sliced component](StructureDefinition-ch-lab-observation-cbc.html)Profile for observation laboratory result of automated Count of Blood Cells. We choose as Unit 10⁹/L or 10¹²/L for Cell Count. We use component slices which contain each Result.
  * [CH LAB-Report Observation Results CBC Panel - Blood by Automated count, Results in nested Profiles](StructureDefinition-ch-lab-observation-cbc-panel.html) We use SingleTest Profiles for each CBC Result slicing 'hasMember' element.
* [#92](https://github.com/hl7ch/ch-lab-report/issues/92): Profile: ChLabObservationBloodGroup
  * Add Antibody ValueSets:
    * ValueSet: ChLabBloodGroupAntibody
    * ValueSet: ChLabBloodGroupAntibodyScreen
    * ValueSet: ChLabBloodGroupAntibodyScreen
