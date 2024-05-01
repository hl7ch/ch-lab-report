Instance: ExampleObservationCBC
InstanceOf: ChLabObservationCBCPanel
Usage: #example
Title: "Example Observation_CBC"
Description: "Example to illustrate ChLabObservationCBCPanel"
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03780-cbc-panel"
* status = #final

* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* hasMember[WhiteBloodCellCount] = Reference(Observation/ExampleObservationWBC) "Observation-WBC"
* hasMember[RedBloodCellCount] = Reference(Observation/ExampleObservationRBC) "Observation-RBC"
* hasMember[Hemoglobin] = Reference(Observation/ExampleObservationHb) "Observation-HGB"
* hasMember[Hematocrit] = Reference(Observation/ExampleObservationHt) "Observation-HT"
* hasMember[MeanCorpuscularVolume] = Reference(Observation/ExampleObservationMCV) "Observation-MCV"
* hasMember[MeanCorpuscularHemoglobin] = Reference(Observation/ExampleObservationMCH) "Observation-MCH"
* hasMember[MeanCorpuscularHemoglobinConcentration] = Reference(Observation/ExampleObservationMCHC) "Observation-MCHC"
* hasMember[PlateletCount] = Reference(Observation/ExampleObservationPlateletCount) "Observation-Platelet-Count"
* hasMember[ErythrocyteDistributionWidth] = Reference(Observation/ExampleObservationRDW-SD)
* hasMember[ErythrocyteDistWidthRatio] = Reference(Observation/ExampleObservationRDW-CV)

Instance: ExampleObservationWBC
InstanceOf: ChLabLeucocyteCount
Usage: #example
Title: "Example Observation Leucocyte Count"
Description: "White blood Cells Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 2.90 '10*9/L' "10*9U/L"

Instance: ExampleObservationRBC
InstanceOf: ChLabErythrocyteCount
Usage: #example
Title: "Example Observation Erythrocyte Count"
Description: "Red blood Cells Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 4.35 '10*12/L' "10*12U/L"

Instance: ExampleObservationHb
InstanceOf: ChLabHemoglobin
Usage: #example
Title: "Example Observation Hemoglobin"
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
Title: "Example Observation Hematocrit"
Description: "Hematocrit Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 33 '%' "%"

// ++++++++++++++++++++++++++++++++
Instance: ExampleObservationMCV
InstanceOf: ChLabMeanCorpuscularVolume
Usage: #example
Title: "Example Observation MCV"
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
Title: "Example Observation MCH"
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
Title: "Example Observation MCHC"
Description: "MCHC Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 324 'g/L' "g/L"

// ++++++++++++++++++++++++++++++

Instance: ExampleObservationRDW-SD // Anisocytose
InstanceOf: ChLabErythrocyteDistributionWidth
Usage: #example
Title: "Example Observation Erythrocyte Distribution Width"
Description: "RDW-SD Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 41.5 'fL' "fL"

Instance: ExampleObservationRDW-CV
InstanceOf: ChLabErythrocyteDistWidthRatio
Usage: #example
Title: "Example Observation Erythrocyte Distribution Width Ratio"
Description: "RDW-CV Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 15.2 '%' "%"

Instance: ExampleObservationPlateletCount
InstanceOf: ChLabPlateletCount
Usage: #example
Title: "Example Observation Platelet Count"
Description: "Platelet Count Result"
* status = #final
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueQuantity = 113 '10*9/L' "10*9U/L"