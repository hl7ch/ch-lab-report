// External Code Systems
Alias: $loinc                         = http://loinc.org
Alias: $sct                           = http://snomed.info/sct
Alias: $v2-0074                       = http://terminology.hl7.org/CodeSystem/v2-0074 // diagnosticServiceSectionId, ca
Alias: $v2-0203                       = http://terminology.hl7.org/CodeSystem/v2-0203 // identifierType
Alias: $v2-0360                       = http://terminology.hl7.org/CodeSystem/v2-0360 // qualification Code
Alias: $v2-0371                       = http://terminology.hl7.org/CodeSystem/v2-0371 // additivePreservative
Alias: $v2-0488                       = http://terminology.hl7.org/CodeSystem/v2-0488 // specimenCollectionMethod
Alias: $v2-0916                       = http://terminology.hl7.org/CodeSystem/v2-0916 // relevanteClinicalInformation
Alias: $organization-type             = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $referencerange-meaning        = http://terminology.hl7.org/CodeSystem/referencerange-meaning
Alias: $v3-ActCode                    = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v3-ObservationInterpretation  = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $v3-MaritalStatus              = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $v3-EntityCode                 = http://terminology.hl7.org/CodeSystem/v3-EntityCode // Entity the instance represents, e.g. a blood collection tube
Alias: $device-categorie              = http://hl7.org/fhir/device-category
Alias: $observation-category          = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $labStudyType                  = http://hl7.eu/fhir/laboratory/ValueSet/lab-studyType-eu-lab
Alias: $resource-types                = http://hl7.org/fhir/fhir-types
Alias: $ucum                          = http://unitsofmeasure.org
Alias: $observation-category          = http://terminology.hl7.org/CodeSystem/observation-category

// External Structure Definitions
Alias: $imposeProfile                 = http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile
Alias: $dr-eu-lab                     = http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab
Alias: $obs-resultslab-eu-lab         = http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab
Alias: $CodeableConcept-uv-ips        = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $obs-interpretation            = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $imposeProfile                 = http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile

// Extensions
Alias: $information-recipient         = http://hl7.eu/fhir/StructureDefinition/information-recipient
Alias: $diagnostic-report-composition-r5  = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition // from eu-laboratory
Alias: $observation-instantiates-r5   = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.instantiates[x]
Alias: $specimen-feature-r5           = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature
Alias: $specimen-feature-type-r5      = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature.type
Alias: $observationDefinition-device-r5   = http://hl7.org/fhir/5.0/StructureDefinition/extension-ObservationDefinition.device
Alias: $observationDefinition-specimen-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-ObservationDefinition.specimen
// Alias:   $diagnostic-report-result-r5  =  http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.result

// CH Core Structure Definitions
// Alias:   $CHCoreOrganization =          http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization
Alias:   $ech-11-maritalstatus          = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus
Alias:   $administrative-gender         = http://hl7.org/fhir/administrative-gender
Alias:   $religiousAffiliation          = http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation

// from ch-lab-order
// Alias:  $servicerequest-categories      = http://fhir.ch/ig/ch-lab-order/CodeSystem/ch-lab-order-servicerequest-categories