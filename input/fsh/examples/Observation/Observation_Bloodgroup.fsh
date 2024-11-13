// ╭─── example Blood group Result ABO Rh panel─────────╮
// │       Panel hasMembers ABO and RhD                 │
// ╰────────────────────────────────────────────────────╯

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
* code = $loinc#34530-6 "ABO and Rh group panel - Blood"  // LHC Form
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

// ╭─── example Blood group Result ──────────────────────────────────────╮
// │ ABO and Rh group panel coded with LOINC                             │
// │ AB0 Result: component coded with LOINC, Result coded with SNOMED CT │
// │ RhD Result: component coded with LOINC, Result coded with SNOMED CT │
// ╰─────────────────────────────────────────────────────────────────────╯
Instance: BloodGroupCompAB0CompRhD  // AB pos
InstanceOf: ChLabObservationBloodGroup
Title: "Blood Group Panel with Component ABO and Component Rh"
Description: "Example reporting ABO group [Type] and Rh [Type] separately in a component and coded with SNOMED CT"
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
  * valueCodeableConcept.coding.display = "Blood group AB"

* component[1]
  * code = $loinc#10331-7 "Rh [Type] in Blood"
  * valueCodeableConcept.coding.code = #165747007
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "RhD positive (finding)"

// ╭─── example Blood group Result from blood bank───────╮
// │          Surface Antigen on Erythrocytes            │
// │        Observation with SNOMED CT coded value       │
// ╰─────────────────────────────────────────────────────╯
Instance: BloodGroupAB0RhD  // O neg
InstanceOf: ChLabObservationBloodGroup
Title: "Blood Group Rh combined"
Description: "Example reporting Blood Group and RhD Result combined and coded with SNOMED CT"
Usage: #example
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03720-blood-group-simple"
* status = #final
* category[specialty] = $sct#421661004 "Blood banking and transfusion medicine (specialty) (qualifier value)"
* category[studyType] = $loinc#18717-9 "Blood bank studies (set)"
* code = $loinc#34530-6 "ABO and Rh group panel - Blood"
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"
* method = $sct#726528006 "Genotyping (qualifier value)"

* valueCodeableConcept.coding[+].code = #278154007
* valueCodeableConcept.coding[=].system = $sct
* valueCodeableConcept.coding[=].display = "Blood group AB Rh(D) negative"

// ╭─── example Blood group Result weak D ───────────────────────────────╮
// │ ABO and Rh group panel coded with LOINC                             │
// │ AB0 Result: component coded with LOINC, Result coded with SNOMED CT │
// │ RhD Result: component coded with LOINC, Result coded with SNOMED CT │
// ╰─────────────────────────────────────────────────────────────────────╯
Instance: BloodGroupCompAB0CompRhDWeakD
InstanceOf: ChLabObservationBloodGroup
Title: "Blood Group Panel with Component ABO and Component Rh resulting Weak D"
Description: "Example reporting ABO group [Type] and Rh [Type] separately in a component and coded with SNOMED CT, the latter proving weak D is in VS"
Usage: #example
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03760-blood-group-component"
* status = #final
* category[specialty] = $sct#421661004 "Blood banking and transfusion medicine (specialty) (qualifier value)"
* category[studyType] = $loinc#18717-9 "Blood bank studies (set)"
* code = $loinc#34530-6 "ABO and Rh group panel - Blood"
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
  * valueCodeableConcept.coding[+].code = #115763002
  * valueCodeableConcept.coding[=].system = $sct
  * valueCodeableConcept.coding[=].display = "Trans weak D phenotype"


// ####################################################################################
// ╭── 3 examples from Corina: coded results ────────────────────────────╮
// │ ABO and Rh group panel coded with LOINC                             │
// │ AB0 Result: component coded with LOINC, Result coded with SNOMED CT │
// │ RhD Result: component coded with LOINC, Result coded with SNOMED CT │
// ╰─────────────────────────────────────────────────────────────────────╯
Instance: BloodGroup-1-coded  // 1st example from Corina
InstanceOf: ChLabObservationBloodGroup
Title: "Blood Group Panel with Component ABO, Component RhD, Date, Period and Result Antibodies"
Description: "Example reporting ABO group [Type], Rh [Type],  separately in a component and coded with SNOMED CT"
Usage: #example
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03760-blood-group-component"
* status = #final
* category[specialty] = $sct#421661004 "Blood banking and transfusion medicine (specialty) (qualifier value)"
* category[studyType] = $loinc#18717-9 "Blood bank studies (set)"
* code = $loinc#34530-6 "ABO and Rh group panel - Blood"
* code.text = "ABO and Rh group panel (Bld)"   // Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* method = $sct#258075003 "Serotyping (qualifier value)"

* component[0]  // O
  * code = $loinc#883-9 "ABO group [Type] in Blood"
  * valueCodeableConcept.coding.code = #58460004
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "Blood group O"

* component[1]  // -
  * code = $loinc#10331-7 "Rh [Type] in Blood"
  * valueCodeableConcept.coding.code = #165746003
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "RhD negative"

* component[2]  // 1. Bestimmungsdatum 01.07.2022
  * code = $loinc#90089-4 "Date and time report was released"
  * valueDateTime = "2022-07-01T11:24:26+01:00"

* component[3]  // 2. Bestimmungsdatum 01.07.2022
  * code = $loinc#90089-4 "Date and time report was released"
  * valueDateTime = "2022-07-01T11:34:26+01:00"

* component[4]  // Gültigkeit T+S
  * code = $loinc#90089-4 "Date and time report was released"
  * valuePeriod.start = "2022-07-01T11:34:26+01:00"
  * valuePeriod.end = "2022-07-05T11:28:26+01:00"
  
* component[5]  // Antikörper: nein
  * code = $loinc#890-4 "Blood group antibody screen [Presence] in Serum or Plasma"
  * valueBoolean = false

Instance: BloodGroup-2-coded  // 2nd example from Corina
InstanceOf: ChLabObservationBloodGroup
Title: "Blood Group Panel with Component Antibody screen test and DAT test"
Description: "Example reporting Anti-C and Anti-K"
Usage: #example
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03760-blood-group-component"
* status = #final
* category[specialty] = $sct#421661004 "Blood banking and transfusion medicine (specialty) (qualifier value)"
* category[studyType] = $loinc#18717-9 "Blood bank studies (set)"
// * code = $loinc#882-1 "ABO and Rh group [Type] in Blood"
* code.text = "ABO and Rh group panel (Bld)"   // Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* method = $sct#258075003 "Serotyping (qualifier value)"

* component[0]  // A pos
  * code = $loinc#883-9 "ABO group [Type] in Blood"
  * valueCodeableConcept.coding.code = #278149003
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "Blood group A Rh(D) positive"

* component[1]  // Antikörper Suchtest neg
  * code = $loinc#890-4 "Blood group antibody screen [Presence] in Serum or Plasma"
  * valueCodeableConcept.coding.code = #568111000005107
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "Irregular blood group antibody not detected"

* component[2]  // DAT (IgG) neg
  * code = $loinc#55776-9 "Direct antiglobulin test.IgG specific reagent [Presence] on Red Blood Cells"
  * valueCodeableConcept.coding.code = #260415000
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "Not detected"

* component[3]  // DAT (C3d) neg
  * code = $loinc#55774-4 "Direct antiglobulin test.complement C3d specific reagent [Presence] on Red Blood Cells"
  * valueCodeableConcept.coding.code = #260415000
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "Not detected"


Instance: BloodGroup-3-coded  // 3rd example from Corina
InstanceOf: ChLabObservationBloodGroup
Title: "Blood Group Panel with Component ABO, Component RhD, Rh Genotype and Result Antibodies"
Description: "Example reporting ABO group [Type] and Rh [Type] separately in a component and coded with SNOMED CT"
Usage: #example
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03760-blood-group-component"
* status = #final
* category[specialty] = $sct#421661004 "Blood banking and transfusion medicine (specialty) (qualifier value)"
* category[studyType] = $loinc#18717-9 "Blood bank studies (set)"
// * code = $loinc#34530-6 "ABO and Rh group panel - Blood"
* code.text = "ABO and Rh group panel (Bld)"   // Display Name
* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* method = $sct#258075003 "Serotyping (qualifier value)"

* component[0]  // B 
  * code = $loinc#883-9 "ABO group [Type] in Blood"
  * valueCodeableConcept.coding.code = #112149005
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "Blood group B"

* component[1]  // RhD neg
  * code = $loinc#10331-7 "Rh [Type] in Blood"
  * valueCodeableConcept.coding.code = #165746003
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "RhD negative"

* component[2]  // Rhesus-Phänotyp: ccddee 
  * code = $loinc#10331-7 "Rh [Type] in Blood"
  * valueString = "ccddee"  // Rhesus Genotyp

* component[3]  // Antikörper: Anti-C
  * code = $loinc#890-4 "Blood group antibody screen [Presence] in Serum or Plasma"
  * valueCodeableConcept.coding.code = #35068008 // Anti-C
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "Blood group antibody C"

* component[4]  // Antikörper: Anti-K
  * code = $loinc#890-4 "Blood group antibody screen [Presence] in Serum or Plasma"
  * valueCodeableConcept.coding.code = #83404001  // Anti-K, Kell-System
  * valueCodeableConcept.coding.system = $sct
  * valueCodeableConcept.coding.display = "Blood group antibody K"
