Profile: ChLabObservationBloodGroup
Parent: ChLabObservationSingleTest
Id: ch-lab-observation-blood-group
Title: "CH LAB Observation Blood Group"
Description: "Simple Profile to report Blood Group and RhD"
* category[specialty] = $sct#421661004 "Blood banking and transfusion medicine (specialty) (qualifier value)"
* category[studyType] = $loinc#18717-9 "Blood bank studies (set)"
* code = $loinc#883-9 "ABO group [Type] in Blood"
* method = $sct#115678000 "Rh blood group system (qualifier value)"
* valueCodeableConcept from $bg-ips-free-set (required)