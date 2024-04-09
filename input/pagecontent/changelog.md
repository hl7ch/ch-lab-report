<!-- markdownlint-disable MD041 -->

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

* [#71](https://github.com/hl7ch/ch-lab-report/issues/71) Example for renal Insufficiency #71
  * add Observation-eGFR-MDRD examples and ChLabObservation_eGFR_MDRD profiles
  * add Observation-eGFR-CKD-EPI examples and ChLabObservation_eGFR_CKD_EPI profiles

* add simple example for a laboratory observation result: Observation-Ht
