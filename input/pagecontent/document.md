<!-- markdownlint-disable MD041 -->

### FHIR document (Bundle)

This exchange format is defined as a [document type](https://www.hl7.org/fhir/r4/documents.html) that corresponds to a [Bundle](https://www.hl7.org/fhir/r4/bundle.html) as a FHIR resource. A [Bundle](https://www.hl7.org/fhir/r4/bundle.html) has a list of entries. The first entry is the [Composition](https://www.hl7.org/fhir/r4/composition.html), in which all contained entries are then referenced.

{% include img.html img="LabReport.png" caption="Fig.: Laboratory Report" width="40%" %}

* **Profile**: [CH LAB-Report-Report](StructureDefinition-ch-lab-report-document.html)

* **Example Deep Vein Thrombosis**: CH LAB-Report Document ([XML](Bundle-LabResultReport-1-tvt.xml.html), [JSON](Bundle-LabResultReport-1-tvt.json.html))

* **Example Electrophoresis**: CH LAB-Report Document ([XML](Bundle-LabResultReport-2-electrophoresis.xml.html), [JSON](Bundle-LabResultReport-2-electrophoresis.json.html))

* **Example Breath-Test**: CH LAB-Report Document ([XML](Bundle-LabResultReport-3-breath-test.xml.html), [JSON](Bundle-LabResultReport-3-breath-test.json.html))

* **Example Sepsis**: CH LAB-Report Document ([XML](Bundle-LabResultReport-4-sepsis.xml.html), [JSON](Bundle-LabResultReport-4-sepsis.json.html))
