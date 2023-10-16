Invariant: ch-lab-dr1
Description: "The resource should be conform to the corresponding EU LAB profile"
Severity: #warning
Expression: "conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab')"

Invariant: ch-lab-obs1
Description: "The resource should be conform to the corresponding EU LAB profile"
Severity: #warning
Expression: "conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab')"

Invariant: ch-lab-pat1
Description: "The resource should be conform to the corresponding EU LAB profile"
Severity: #warning
Expression: "conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab')"

Invariant: ch-lab-pr1
Description: "The resource should be conform to the corresponding EU LAB profile"
Severity: #warning
Expression: "conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/PractitionerRole-eu-lab')"

Invariant: ch-lab-pract1
Description: "The resource should be conform to the corresponding EU LAB profile"
Severity: #warning
Expression: "conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/Practitioner-eu-lab')"

Invariant: ch-lab-bdl1
Description: "The resource should be conform to the corresponding EU LAB profile"
Severity: #warning
Expression: "conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab')"

Invariant: ch-lab-comp1
Description: "The resource should be conform to the corresponding EU LAB profile"
Severity: #warning
Expression: "conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab')"

Invariant: ch-lab-spe1
Description: "The resource should be conform to the corresponding EU LAB profile"
Severity: #warning
Expression: "conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/Specimen-eu-lab')"

Invariant: ch-lab-sr1
Description: "The resource should be conform to the corresponding EU LAB profile"
Severity: #warning
Expression: "conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab')"

// ╭────────────── Invariants  ────────────╮
// │  From EU laboratory                   │
// │  input/fsh/profiles/bundle-lab.fsh    │
// ╰───────────────────────────────────────╯

Invariant: dr-comp-enc
Description: "DiagnosticReport and Composition SHALL have the same encounter"
/* Expression: "( (entry:composition.resource.encounter.empty() and entry:diagnosticReport.resource.encounter.empty() ) or entry:composition.resource.encounter = entry:diagnosticReport.resource.encounter )" */
Expression: "( (entry.resource.ofType(Composition).encounter.empty() and entry.resource.ofType(DiagnosticReport).encounter.empty() ) or entry.resource.ofType(Composition).encounter = entry.resource.ofType(DiagnosticReport).encounter )"
Severity:    #error

Invariant: dr-comp-subj
Description: "DiagnosticReport and Composition SHALL have the same subject"
Expression: "( (entry.resource.ofType(Composition).subject.empty() and entry.resource.ofType(DiagnosticReport).subject.empty() ) or entry.resource.ofType(Composition).subject = entry.resource.ofType(DiagnosticReport).subject )"
Severity:    #error


Invariant: dr-comp-type
Description: "At least one DiagnosticReport.code.coding and Composition.type.coding SHALL be equal"
Expression: "entry.resource.ofType(Composition).type.coding.intersect(entry.resource.ofType(DiagnosticReport).code.coding).exists()" 
Severity:    #error

Invariant: dr-comp-category
Description: "At least one DiagnosticReport.category.coding and Composition.category.coding SHALL be equal"
Expression: "(entry.resource.ofType(Composition).category.exists() or entry.resource.ofType(DiagnosticReport).category.exists()) implies entry.resource.ofType(Composition).category.coding.intersect(entry.resource.ofType(DiagnosticReport).category.coding).exists()" 
Severity:    #error

Invariant: dr-comp-identifier
Description: "If one or more DiagnosticReport.identifiers are given, at least one of them SHALL be equal to the Composition.identifier"

Expression: "(entry.resource.ofType(Composition).identifier.exists() and entry.resource.ofType(DiagnosticReport).identifier.exists()) implies entry.resource.ofType(Composition).identifier.intersect(entry.resource.ofType(DiagnosticReport).identifier).exists()" 
Severity:    #error

Invariant: one-comp
Description: "A laboratory report bundle SHALL includes one and only one Composition"
Expression: "entry.resource.ofType(Composition).count() = 1"
Severity:    #error

Invariant: one-dr
Description: "A laboratory report SHALL includes one and only one DiagnosticReport"
Expression: "entry.resource.ofType(DiagnosticReport).count() = 1"
Severity:    #error