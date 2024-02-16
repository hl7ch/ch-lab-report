Instance: 0-proof-of-concept
Title: "CH LAB-Report Template, 0-proof-of-concept"
InstanceOf: Bundle
Description: "This example is a template for CH LAB-Report"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"
* identifier.system = "http://example.org"
* identifier.value = "39fd3a20-5dc1-47a9-a066-caa7fce173b2"
* type = #document
* timestamp = "2023-03-06T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:80709186-426d-4cdf-abba-034c4f80acb4"
* entry[=].resource = Composition-0-proof-of-concept
* entry[+].fullUrl = "urn:uuid:a3780f5a-3ca7-4718-9800-bc0582820ac3"
* entry[=].resource = DiagnosticReport-0-proof-of-concept
* entry[+].fullUrl = "urn:uuid:1d252ca0-803c-464c-87d5-f12f73c12eda"
* entry[=].resource = 1d252ca0-803c-464c-87d5-f12f73c12eda
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-ba5629b12e7f"
* entry[=].resource = 8bd279af-125a-4318-b461-ba5629b12e7f
* entry[+].fullUrl = "urn:uuid:2e861278-2e99-4ffa-befa-049467a095b2"
* entry[=].resource = Inline-ServiceRequest-laboratory-results-report-poc
* entry[+].fullUrl = "urn:uuid:608b5309-2609-4d03-b6da-c758bfa1de70"
* entry[=].resource = 608b5309-2609-4d03-b6da-c758bfa1de70
* entry[+].fullUrl = "urn:uuid:cadaf2e3-b707-4207-9b63-5c29ffece051"
* entry[=].resource = cadaf2e3-b707-4207-9b63-5c29ffece051

Instance: Composition-0-proof-of-concept
InstanceOf: Composition
Title: "CH LAB-Report Composition, 0-proof-of-concept"
Usage: #inline
* id = "80709186-426d-4cdf-abba-034c4f80acb4"
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab"

// Composition Identifier must be same as in DiagnosticReport
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#11502-2 "Laboratory report"
* category[0] = $loinc#26436-6 "Laboratory Studies (set)"
* category[+] = $sct#394596001 "Chemical pathology"
* subject = Reference(urn:uuid:1d252ca0-803c-464c-87d5-f12f73c12eda)
* date = "2023-03-09T14:30:00+01:00"
* author.display = "Dr. Patrick Dempsey"
* title = "Laboratory Report - 10 March, 2023 14:30"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2020-12-27T14:30:00+01:00"
* attester.party = Reference(urn:uuid:608b5309-2609-4d03-b6da-c758bfa1de70)
* custodian = Reference(urn:uuid:608b5309-2609-4d03-b6da-c758bfa1de70)
* section.title = "Blood group lab result report"
* section.code = $loinc#26436-6 "Laboratory studies (set)"
* section.code.text = "LABORATORY STUDIES"
* section.entry = Reference(urn:uuid:8bd279af-125a-4318-b461-ba5629b12e7f)

Instance: DiagnosticReport-0-proof-of-concept
InstanceOf: DiagnosticReport
Usage: #inline
* id = "a3780f5a-3ca7-4718-9800-bc0582820ac3"
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(urn:uuid:80709186-426d-4cdf-abba-034c4f80acb4)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* category[0] = $loinc#26436-6 "Laboratory Studies (set)"
* category[+] = $sct#394596001 "Chemical pathology"
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(urn:uuid:1d252ca0-803c-464c-87d5-f12f73c12eda)
* effectiveDateTime = "2023-04-19T15:46:00+01:00"
* performer.display = "Dr. Patrick Dempsey"

Instance: 1d252ca0-803c-464c-87d5-f12f73c12eda
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab"
* identifier[0].type = $v2-0203#NIIP
* identifier[=].system = "urn:oid:1.2.203.24341.1.20.2"
* identifier[=].value = "740512852"
* identifier[+].system = "urn:oid:1.2.203.24341.1.20.9.1"
* identifier[=].value = "A225961454"
* identifier[+].type = $v2-0203#PPN
* identifier[=].system = "urn:oid:2.16.840.1.113883.4.330.203"
* identifier[=].value = "5484136"
* name.family = "Doe"
* name.given = "John"
* gender = #male
* birthDate = "2000-03-21"

Instance: 8bd279af-125a-4318-b461-ba5629b12e7f
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* status = #final
* category = $observation-category#laboratory
* code = $loinc#883-9 "ABO group [Type] in Blood"
* code.text = "Blood Group"
* subject = Reference(urn:uuid:1d252ca0-803c-464c-87d5-f12f73c12eda)
* effectiveDateTime = "2023-03-09T13:35:00+01:00"
* performer.display = "Dr. Patrick Dempsey"
* valueCodeableConcept = $sct#112144000 "Blood group A (finding)"
* valueCodeableConcept.text = "A"

Instance: Inline-ServiceRequest-laboratory-results-report-poc
InstanceOf: ServiceRequest
Usage: #inline
// * id = 2e861278-2e99-4ffa-befa-049467a095b2
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab"
* identifier.system = "http://example.org"
* identifier.value = "2e861278-2e99-4ffa-befa-049467a095b2"
* status = #active
* intent = #order
* code = $sct#108252007 "Laboratory procedure"
* subject = Reference(urn:uuid:1d252ca0-803c-464c-87d5-f12f73c12eda)
* specimen = Reference(urn:uuid:cadaf2e3-b707-4207-9b63-5c29ffece051)

Instance: 608b5309-2609-4d03-b6da-c758bfa1de70
InstanceOf: Organization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
* name = "SAN RAFFAELE NOMENTANA"
* telecom.system = #phone
* telecom.value = "390 666 0581"
* telecom.use = #work
* address.line = "Via Emilio Praga 39"
* address.line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract"
* address.line.extension.valueString = "058091"
* address.city = "Roma"
* address.district = "RM"
* address.state = "120"
* address.postalCode = "00137"
* address.country = "100"

Instance: cadaf2e3-b707-4207-9b63-5c29ffece051
InstanceOf: Specimen
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Specimen-eu-lab"
* status = #available
* type = $sct#119297000 "Blood specimen"
* type.text = "Blood specimen"