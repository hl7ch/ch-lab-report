Profile: ExampleLipidProfile
Parent: Observation
Id: triglyceride
Title: "Example  Lipid  Profile"
Description: "Triglyceride Result, example for referenceRange"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.5.1398"
* ^version = "6.0.0-cibuild"
* ^status = #draft
* ^experimental = true
* ^date = "2012-05-12"
* ^publisher = "Grahame Grieve"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "grahame@healthintersections.com.au"
* . 1..1
* . ^short = "Triglyceride Result"
* . ^definition = "Group of elements for Triglyceride result."
* code 1..1 MS
* code only CodeableConcept
* code = $loinc#47210-0 "Triglyceride [Moles/volume] in Serum or Plasma --fasting"
* code ^short = "Triglyceride"
* code ^definition = "Triglyceride."
* valueQuantity 0..1 MS
* valueQuantity only Quantity
* valueQuantity ^short = "Triglyceride value"
* valueQuantity ^definition = "Triglyceride value. If a result is not available, use the comments field."
* interpretation 0..1 MS
* interpretation only CodeableConcept
* interpretation ^short = "+ | ++ | +++ | - | -- | ---"
* interpretation ^definition = "+ | ++ | +++ | - | -- | ---."
* note 0..* MS
* note only Annotation
* note ^short = "Comments about result"
* note ^definition = "Comments about result."
* referenceRange 1..1 MS
* referenceRange.low 0..0
* referenceRange.high 1..1
* referenceRange.high ^comment = "Per Australian NHF Recommendations."
* referenceRange.high ^requirements = "<2.0 mmol/L."
* referenceRange.type 0..0
* referenceRange.type only CodeableConcept
* referenceRange.appliesTo 0..0
* referenceRange.appliesTo only CodeableConcept
* referenceRange.age 0..0
* referenceRange.age only Range
* hasMember 0..0
* derivedFrom 0..0