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
