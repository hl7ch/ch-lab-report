Profile: ChLabBloodGroup
Parent: ChLabObservationSingleTest
Id: ch-lab-blood-group
Title: "Ch Lab Blood Group"
Description: "Simple Profile to report Blood Group and RhD"
* code = $loinc#883-9 "ABO group [Type] in Blood"
* method = $sct#115678000 "Rh blood group system (qualifier value)"
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-snomed-ct-ips-free-set"