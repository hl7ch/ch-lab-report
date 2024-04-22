// ╭─── example Blood group Result ────────────╮
// │ Observation with components for blacks and non-blacks  │
// ╰────────────────────────────────────────────────────────╯

Instance: BloodGroup
InstanceOf: ChLabObservationBloodGroup
Title: "Observation BloodGroup"
Description: "Simple Example reporting Blood Group and RhD"
Usage: #example
* identifier.system = "https://intranet.aumc.nl/labvalues"
* identifier.value = "1304-03720-blood-group"
* status = #final

* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* issued = "2023-09-14T14:34:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* valueCodeableConcept.coding.code = #278154007
* valueCodeableConcept.coding.system = $sct
* valueCodeableConcept.coding.display = "Blood group AB Rh(D) negative"
