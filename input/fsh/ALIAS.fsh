// External Code Systems
Alias: $loinc                         = http://loinc.org
Alias: $sct                           = http://snomed.info/sct
Alias: $m49.htm                       = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $v2-0074                       = http://terminology.hl7.org/CodeSystem/v2-0074 // diagnosticServiceSectionId, ca
Alias: $v2-0131                       = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $v2-0203                       = http://terminology.hl7.org/CodeSystem/v2-0203 // identifierType
Alias: $v2-0360                       = http://terminology.hl7.org/CodeSystem/v2-0360 // qualification Code
Alias: $v2-0371                       = http://terminology.hl7.org/CodeSystem/v2-0371|2.0 // additivePreservative
Alias: $v2-0487                       = http://terminology.hl7.org/CodeSystem/v2-0487 // specimenType
Alias: $v2-0488                       = http://terminology.hl7.org/CodeSystem/v2-0488 // specimenCollectionMethod
Alias: $v2-0916                       = http://terminology.hl7.org/CodeSystem/v2-0916|2.0 // relevanteClinicalInformation
Alias: $organization-type             = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $referencerange-meaning        = http://terminology.hl7.org/CodeSystem/referencerange-meaning
Alias: $v3-ActCode                    = http://terminology.hl7.org/CodeSystem/v3-ActCode|3.0.0
Alias: $v3-ObservationInterpretation  = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $v3-ParticipationType          = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $v3-MaritalStatus              = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $v3-EntityCode                 = http://terminology.hl7.org/CodeSystem/v3-EntityCode // Entity the instancerepresents, e.g. a blood collection tube
Alias: $media-type                    = http://terminology.hl7.org/CodeSystem/media-type
Alias: $v3-ParticipationType          = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $v3-ReligiousAffiliation       = http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation
Alias: $v3-RoleCode                   = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $device-categorie              = http://hl7.org/fhir/device-category
Alias: $substance-category            = http://terminology.hl7.org/CodeSystem/substance-category
Alias: $observation-category          = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $resource-types                = http://hl7.org/fhir/fhir-types
Alias: $ucum                          = http://unitsofmeasure.org

// Value Sets
Alias: $results-coded-values-laboratory-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-coded-values-laboratory-uv-ips
Alias: $results-laboratory-observations-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-laboratory-observations-uv-ips
Alias: $lab-studyType-eu-lab          = http://hl7.eu/fhir/laboratory/ValueSet/lab-studyType-eu-lab
Alias: $lab-specialty-eu-lab          = http://hl7.eu/fhir/laboratory/ValueSet/lab-specialty-eu-lab
Alias: $lab-obsCode-eu-lab            = http://hl7.eu/fhir/laboratory/ValueSet/lab-obsCode-eu-lab
Alias: $lab-technique-eu-lab          = http://hl7.eu/fhir/laboratory/ValueSet/lab-technique-eu-lab
Alias: $bg-ips-free-set               = http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-snomed-ct-ips-free-set
Alias: $bg-ips                        = http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-uv-ips

// External Profiles
Alias: $CodeableConcept-uv-ips        = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $ext-data-absent-reason        = http://hl7.org/fhir/StructureDefinition/data-absent-reason|4.0.1
Alias: $imposeProfile                 = http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile
Alias: $dr-eu-lab                     = http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab
Alias: $obs-resultslab-eu-lab         = http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab
Alias: $CodeableConcept-uv-ips        = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $obs-interpretation            = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $Patient-animal-eu-lab         = http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-animal-eu-lab
Alias: $Quantity-eu-lab               = http://hl7.eu/fhir/laboratory/StructureDefinition/Quantity-eu-lab
Alias: $Range-uv-ips                  = http://hl7.org/fhir/uv/ips/StructureDefinition/Range-uv-ips|1.1.0
Alias: $Ratio-eu-lab                  = http://hl7.eu/fhir/laboratory/StructureDefinition/Ratio-eu-lab

// Extensions
Alias: $bodySite                      = http://hl7.org/fhir/StructureDefinition/bodySite|4.0.1
Alias: $extension-DiagnosticReport.composition  = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition // from eu-laboratory
Alias: $observation.triggeredBy       = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy
Alias: $event-performerFunction       = http://hl7.org/fhir/StructureDefinition/event-performerFunction|4.0.1
Alias: $observation-certifiedRefMaterialCodeable = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-certifiedRefMaterialCodeable
Alias: $observation-certifiedRefMaterialIdentifer = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-certifiedRefMaterialIdentifer
Alias: $observation-deviceLabTestKit  = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-deviceLabTestKit
Alias: $observation-instantiates-r5   = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.instantiates[x]
Alias: $specimen-container-device-r5  = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.container.device
Alias: $specimen-feature-r5           = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature
Alias: $specimen-feature-type-r5      = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature.type
Alias: $observationDefinition-device-r5   = http://hl7.org/fhir/5.0/StructureDefinition/extension-ObservationDefinition.device
Alias: $observationDefinition-specimen-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-ObservationDefinition.specimen
Alias: $observation-triggeredBy-r5        = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy
Alias: $observation-value-r5              = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value[x]
// Alias: $extension-Observation.value[x] = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value[x]
Alias: $supportingInfo                    = http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo|4.0.1
// Alias:   $diagnostic-report-result-r5  =  http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.result

// CH Core Structure Definitions
Alias: $ech-11-maritalstatus          = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus
Alias: $administrative-gender         = http://hl7.org/fhir/administrative-gender
Alias: $religiousAffiliation          = http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation

// from ch-lab-order
// Alias:  $servicerequest-categories      = http://fhir.ch/ig/ch-lab-order/CodeSystem/ch-lab-order-servicerequest-categories
