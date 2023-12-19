<!-- markdownlint-disable MD041 -->

### FHIR document (Bundle)

This exchange format is defined as a [document type](https://www.hl7.org/fhir/documents.html) that corresponds to a [Bundle](https://www.hl7.org/fhir/bundle.html) as a FHIR resource. A [Bundle](https://www.hl7.org/fhir/bundle.html) has a list of entries. The first entry is the [Composition](https://www.hl7.org/fhir/composition.html), in which all contained entries are then referenced.

{% include img.html img="LabReport.png" caption="Fig.: Laboratory Report" width="40%" %}

* **Profile**: [CH LAB-Report](StructureDefinition-ch-lab-report-document.html)

* **Example**: CH LAB-Report Document ([XML](Bundle-LabResultReport-1-tvt.xml.html), [JSON](Bundle-LabResultReport-1-tvt.json.html))
