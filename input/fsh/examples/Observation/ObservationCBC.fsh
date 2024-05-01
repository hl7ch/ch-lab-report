
/*
Instance: ObservationCBC
InstanceOf: ChLabObservationCBCPanel
Usage: #example
Title: "Observation_CBC"
Description: "Example to illustrate ChLabObservationCBCPanel"
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03780-cbc-panel"
* status = #final

* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* hasMember[WhiteBloodCell] = Reference(urn:uuid:5c1ceea1-2751-4ddc-afb5-4c28037ba1be) "Observation-WBC"
* hasMember[RedBloodCellCount] = Reference(urn:uuid:04ec7690-a1e8-4fdf-be4f-6c92949e948a) "Observation-RBC"
* hasMember[Hemoglobin] = Reference(urn:uuid:2565be07-47a0-4cca-926e-a57e1ac96fb8) "Observation-HGB"
* hasMember[Hematocrit] = Reference(urn:uuid:c4d64c0a-aafb-4b41-ae0b-a620b2a6c08c) "Observation-HT"
* hasMember[MeanCorpuscularVolume] = Reference(urn:uuid:857cfa10-66ea-45ae-b236-e6e03af4be3f) "Observation-MCV"
* hasMember[MeanCorpuscularHemoglobin] = Reference(urn:uuid:3b263f29-44d8-468f-b612-e748442e1845) "Observation-MCH"
* hasMember[MeanCorpuscularHemoglobinConcentration] = Reference(urn:uuid:735c9244-497a-420d-b006-15a57be365b1) "Observation-MCHC"
* hasMember[PlateletCount] = Reference(urn:uuid:32a7d6fb-dc8a-4673-8cef-c59c1c5397db) "Observation-Platelet"
*/