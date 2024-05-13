// ╭─── example Blood group Result ────────────╮
// │ Observation with SNOMED CT coded value    │
// ╰───────────────────────────────────────────╯
Instance: BloodGroupSimple
InstanceOf: ChLabObservationSingleTest
Title: "Blood Group Rh combined"
Description: "Example reporting Blood Group and RhD Result combined and coded with SNOMED CT"
Usage: #example
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03720-blood-group-simple"
* status = #final
* category[specialty] = $sct#421661004 "Blood banking and transfusion medicine (specialty) (qualifier value)"
* category[studyType] = $loinc#18717-9 "Blood bank studies (set)"
* code = $loinc#882-1 "ABO and Rh group [Type] in Blood"
* code.text = "ABO and Rh group panel (Bld)"   // Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* method = $sct#726528006 "Genotyping (qualifier value)"

* valueCodeableConcept.coding.code = #278154007
* valueCodeableConcept.coding.system = $sct
* valueCodeableConcept.coding.display = "Blood group AB Rh(D) negative"

// ╭─── example Blood group Result ──────────────────────────────────────╮
// │ ABO and Rh group panel coded with LOINC                             │
// │ AB0 Result: component coded with LOINC, Result coded with SNOMED CT │
// │ RhD Result: component coded with LOINC, Result coded with SNOMED CT │
// ╰─────────────────────────────────────────────────────────────────────╯
Instance: BloodGroupComponent
InstanceOf: ChLabObservationSingleTest
Title: "Blood Group Panel with Component ABO and Component Rh"
Description: "Example reporting Blood Group and RhD Result separately in a component and coded with SNOMED CT"
Usage: #example
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03760-blood-group-component"
* status = #final
* category[specialty] = $sct#421661004 "Blood banking and transfusion medicine (specialty) (qualifier value)"
* category[studyType] = $loinc#18717-9 "Blood bank studies (set)"
* code = $loinc#882-1 "ABO and Rh group [Type] in Blood"
* code.text = "ABO and Rh group panel (Bld)"   // Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* method = $sct#258075003 "Serotyping (qualifier value)"

* component[0]
  * code = $loinc#883-9 "ABO group [Type] in Blood"
  * valueCodeableConcept.coding.code = #165743006
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "Blood group AB (finding)"

* component[1]
  * code = $loinc#10331-7 "Rh [Type] in Blood"
  * valueCodeableConcept.coding.code = #165747007
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "RhD positive (finding)"

// ╭─── example Blood group Result ────────────╮
// │ Result as free Text in HTML Table         │
// ╰───────────────────────────────────────────╯

Instance: BloodGroupPanel
InstanceOf: ChLabObservationPanel
Usage: #example
Title: "Blood Group ABO Rh Panel"
Description: "Example reporting Blood Group and RhD Result separately in a member and coded with SNOMED CT"
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03760-blood-group-panel"
* status = #final
* category[specialty] = $sct#421661004 "Blood banking and transfusion medicine (specialty) (qualifier value)"
* category[studyType] = $loinc#18717-9 "Blood bank studies (set)"
* code = $loinc#882-1 "ABO and Rh group [Type] in Blood"
* code.text = "ABO and Rh group panel (Bld)"   // Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* method = $sct#258075003 "Serotyping (qualifier value)"
* hasMember[+] = Reference(Observation/BloodGroupABO)
* hasMember[+] = Reference(Observation/BloodGroupRh)

Instance: BloodGroupABO
InstanceOf: ChLab-observation-single-test
Usage: #example
Title: "Blood Group ABO"
Description: "Example reporting just blood group ABO System"
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03760-blood-group-abo"
* status = #final
* category[specialty] = $sct#421661004 "Blood banking and transfusion medicine (specialty) (qualifier value)"
* category[studyType] = $loinc#18717-9 "Blood bank studies (set)"
* code = $loinc#883-9 "ABO group [Type] in Blood"
* code.text = "ABO group (Bld)"   // Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueCodeableConcept.coding.code = #165743006
* valueCodeableConcept.coding.system = $sct
* valueCodeableConcept.coding.display = "Blood group AB (finding)"
* valueCodeableConcept.text = "de-DE	Blutgruppe AB"

Instance: BloodGroupRh
InstanceOf: ChLab-observation-single-test
Usage: #example
Title: "Blood Group Rh"
Description: "Example reporting just blood group Rh System"
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03760-blood-group-Rh"
* status = #final
* category[specialty] = $sct#421661004 "Blood banking and transfusion medicine (specialty) (qualifier value)"
* category[studyType] = $loinc#18717-9 "Blood bank studies (set)"
* code = $loinc#10331-7 "Rh [Type] in Blood"
* code.text = "Rh Nom (Bld)"   // Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* valueCodeableConcept.coding.code = #165747007
* valueCodeableConcept.coding.system = $sct
* valueCodeableConcept.coding.display = "RhD positive (finding)"

// * valueCodeableConcept.text = "text from LIS"