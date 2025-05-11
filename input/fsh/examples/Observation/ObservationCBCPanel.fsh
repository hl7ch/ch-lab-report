Instance: ExampleObservationCBCPanel
InstanceOf: ChLabObservationCBCPanel
Usage: #example
Title: "Observation CBC panel using 'hasMember'"
Description: "Example to illustrate ChLabObservationCBCPanel"
* identifier.system = "http://example.org/Labor-Pipette/labvalues"
* identifier.value = "1304-03780-cbc-panel"
* status = #final

* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* hasMember[WhiteBloodCellCount] = Reference(Observation/ExampleObservationWBC)
* hasMember[RedBloodCellCount] = Reference(Observation/ExampleObservationRBC)
* hasMember[Hemoglobin] = Reference(Observation/ExampleObservationHb)
* hasMember[Hematocrit] = Reference(Observation/ExampleObservationHt)
* hasMember[MeanCorpuscularVolume] = Reference(Observation/ExampleObservationMCV)
* hasMember[MeanCorpuscularHemoglobin] = Reference(Observation/ExampleObservationMCH)
* hasMember[MeanCorpuscularHemoglobinConcentration] = Reference(Observation/ExampleObservationMCHC)
* hasMember[PlateletCount] = Reference(Observation/ExampleObservationPlateletCount)
* hasMember[ErythrocyteDistributionWidth] = Reference(Observation/ExampleObservationRDW-SD)
* hasMember[ErythrocyteDistributionWidth] = Reference(Observation/ExampleObservationRDW-CV)

Instance: ExampleObservationWBC
InstanceOf: ChLabLeucocyteCount
Usage: #example
Title: "Leucocyte Count"
Description: "White blood Cells Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 2.90 '10*9/L' "10*9/L"

Instance: ExampleObservationRBC
InstanceOf: ChLabErythrocyteCount
Usage: #example
Title: "Erythrocyte Count"
Description: "Red blood Cells Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 4.35 '10*12/L' "10*12/L"

Instance: ExampleObservationHb
InstanceOf: ChLabHemoglobin
Usage: #example
Title: "Hemoglobin"
Description: "Hemoglobin Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 107 'g/L' "g/L"

Instance: ExampleObservationHt
InstanceOf: ChLabHematocrit
Usage: #example
Title: "Hematocrit"
Description: "Hematocrit Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 33 '%' "%"

Instance: ExampleObservationMCV
InstanceOf: ChLabMeanCorpuscularVolume
Usage: #example
Title: "MCV"
Description: "MCV Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 75.9 'fL' "fL"

Instance: ExampleObservationMCH
InstanceOf: ChLabMeanCorpuscularHemoglobin
Usage: #example
Title: "MCH"
Description: "MCH Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 24.6 'pg' "pg"

Instance: ExampleObservationMCHC
InstanceOf: ChLabMeanCorpuscularHemoglobinConcentration
Usage: #example
Title: "MCHC"
Description: "MCHC Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 324 'g/L' "g/L"

Instance: ExampleObservationRDW-SD // Anisocytose
InstanceOf: ChLabErythrocyteDistributionWidth
Usage: #example
Title: "Erythrocyte Distribution Width"
Description: "RDW-SD Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* code = $loinc#788-0 "Erythrocyte [DistWidth] in Red Blood Cells by Automated count"
* valueQuantity = 41.5 'fL' "fL"

Instance: ExampleObservationRDW-CV
InstanceOf: ChLabErythrocyteDistributionWidth
Usage: #example
Title: "Erythrocyte Distribution Width Ratio"
Description: "RDW-CV Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* code = $loinc#788-0 "Erythrocyte [DistWidth] in Red Blood Cells by Automated count"
* valueQuantity = 15.2 '%' "%"

Instance: ExampleObservationPlateletCount
InstanceOf: ChLabPlateletCount
Usage: #example
Title: "Platelet Count"
Description: "Platelet Count Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 113 '10*9/L' "10*9U/L"