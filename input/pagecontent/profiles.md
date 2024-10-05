<!-- markdownlint-disable MD001 MD033 MD041 -->

### General Profiles for CH LAB-Report

* [CH LAB Composition: Laboratory Report](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-report-composition.html)
This profile constrains the Composition resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB Device: Analyzer](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-report-device-analyzer.html)
Holds Laboratory Analyzer Data
* [CH LAB Device: TestKit](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-report-device-test-kit.html) 
Holds Laboratory Test-Kit Data
* [CH LAB DiagnosticReport: Laboratory Report](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-diagnosticreport.html)
This profile constrains the DiagnosticReport resource for the purpose of laboratory test reports in Switzerland.
* [CH LAB Document: Laboratory Report](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-report-document.html)
This profile constrains the Bundle resource for the purpose of laboratory test reports in Switzerland.


<!--- 
### Data Type Profiles

{% for sd_hash in site.data.structuredefinitions -%} {%- assign sd = sd_hash[1] -%} {%- if sd.kind == "complex-type" and sd.type != "Extension" -%}

<li>
    <a href="{{sd.path}}">{{sd.title}}</a>
</li>
{%- endif -%} {%- endfor -%}
--->
