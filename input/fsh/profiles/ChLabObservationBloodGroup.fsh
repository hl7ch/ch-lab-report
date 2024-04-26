Profile: ChLabObservationBloodGroup
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-blood-group
Title: "CH LAB Observation Results: Blood Group"
Description: "Simple Profile to report Blood Group and RhD"
* category[specialty] = $sct#421661004 "Blood banking and transfusion medicine (specialty) (qualifier value)"
* category[studyType] = $loinc#18717-9 "Blood bank studies (set)"
* code = $loinc#882-1 "ABO and Rh group [Type] in Blood"
* code.text = "ABO and Rh group panel (Bld)"   // Display Name
// * method = $sct#115678000 "Rh blood group system (qualifier value)"
// * valueCodeableConcept from $bg-ips-free-set (preferred)
* valueCodeableConcept from $bg-ips (preferred)  // contains 207 concepts, including codes from Results Blood Group - SNOMED CT IPS Free Set
* valueCodeableConcept.text MS // has cardinality 0..1