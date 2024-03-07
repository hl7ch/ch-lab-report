// External Code Systems
Alias: $loinc                         = http://loinc.org
Alias: $sct                           = http://snomed.info/sct
Alias: $m49.htm                       = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $v2-0074                       = http://terminology.hl7.org/CodeSystem/v2-0074 // diagnosticServiceSectionId, ca
Alias: $v2-0131                       = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $v2-0203                       = http://terminology.hl7.org/CodeSystem/v2-0203 // identifierType
Alias: $v2-0360                       = http://terminology.hl7.org/CodeSystem/v2-0360 // qualification Code
Alias: $v2-0371                       = http://terminology.hl7.org/CodeSystem/v2-0371 // additivePreservative
Alias: $v2-0488                       = http://terminology.hl7.org/CodeSystem/v2-0488 // specimenCollectionMethod
Alias: $v2-0916                       = http://terminology.hl7.org/CodeSystem/v2-0916 // relevanteClinicalInformation
Alias: $organization-type             = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $referencerange-meaning        = http://terminology.hl7.org/CodeSystem/referencerange-meaning
Alias: $v3-ActCode                    = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v3-ObservationInterpretation  = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
// Alias: $v3-ParticipationType          = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $v3-MaritalStatus              = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $v3-EntityCode                 = http://terminology.hl7.org/CodeSystem/v3-EntityCode // Entity the instancerepresents, e.g. a blood collection tube
Alias: $v3-RoleCode                   = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $device-categorie              = http://hl7.org/fhir/device-category
Alias: $observation-category          = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $resource-types                = http://hl7.org/fhir/fhir-types
Alias: $ucum                          = http://unitsofmeasure.org
Alias: $observation-category          = http://terminology.hl7.org/CodeSystem/observation-category

// Value Sets
// Alias: $labStudyType                  = http://hl7.eu/fhir/laboratory/ValueSet/lab-studyType-eu-lab
Alias: $results-coded-values-laboratory-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-coded-values-laboratory-uv-ips

// External Profiles
Alias: $CodeableConcept-uv-ips        = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $ext-data-absent-reason        = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $imposeProfile                 = http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile
Alias: $dr-eu-lab                     = http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab
Alias: $obs-resultslab-eu-lab         = http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab
Alias: $CodeableConcept-uv-ips        = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $obs-interpretation            = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $Patient-animal-eu-lab         = http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-animal-eu-lab
Alias: $Range-uv-ips                  = http://hl7.org/fhir/uv/ips/StructureDefinition/Range-uv-ips

// Extensions
Alias: $basedOn-order-or-requisition  = http://hl7.eu/fhir/StructureDefinition/composition-basedOn-order-or-requisition
Alias: $bodySite                      = http://hl7.org/fhir/StructureDefinition/bodySite
// Alias: $cd-version-number             = http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber
// Alias: $information-recipient         = http://hl7.eu/fhir/StructureDefinition/information-recipient
Alias: $extension-DiagnosticReport.composition  = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition // from eu-laboratory
Alias: $observation.triggeredBy = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy
Alias: $event-performerFunction       = http://hl7.org/fhir/StructureDefinition/event-performerFunction
Alias: $observation-certifiedRefMaterialCodeable = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-certifiedRefMaterialCodeable
Alias: $observation-certifiedRefMaterialIdentifer = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-certifiedRefMaterialIdentifer
Alias: $observation-deviceLabTestKit = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-deviceLabTestKit
Alias: $observation-instantiates-r5   = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.instantiates[x]
Alias: $specimen-container-device-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.container.device
Alias: $specimen-feature-r5           = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature
Alias: $specimen-feature-type-r5      = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature.type
Alias: $observationDefinition-device-r5   = http://hl7.org/fhir/5.0/StructureDefinition/extension-ObservationDefinition.device
Alias: $observationDefinition-specimen-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-ObservationDefinition.specimen
Alias: $observation-value-r5          = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value[x]
// Alias: $supportingInfo       = http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo
// Alias:   $diagnostic-report-result-r5  =  http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.result

// CH Core Structure Definitions
// Alias:   $CHCoreOrganization =          http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization
Alias: $ech-11-maritalstatus          = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus
Alias: $administrative-gender         = http://hl7.org/fhir/administrative-gender
Alias: $religiousAffiliation          = http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation

// from ch-lab-order
// Alias:  $servicerequest-categories      = http://fhir.ch/ig/ch-lab-order/CodeSystem/ch-lab-order-servicerequest-categories


Alias: $extension-Observation.value[x] = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value[x]