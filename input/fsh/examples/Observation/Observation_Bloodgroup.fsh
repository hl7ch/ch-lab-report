// ╭─── example Blood group Result ────────────╮
// │ Observation with SNOMED CT coded value    │
// ╰───────────────────────────────────────────╯
Instance: BloodGroupRhSimple
InstanceOf: ChLabObservationBloodGroup
Title: "Observation Result for blood group and rhesus factor combined"
Description: "Example reporting Blood Group and RhD Result combined and coded with SNOMED CT"
Usage: #example
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03720-blood-group"
* status = #final

* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* method = $sct#264788002 "Biotyping (qualifier value)"

* valueCodeableConcept.coding.code = #278154007
* valueCodeableConcept.coding.system = $sct
* valueCodeableConcept.coding.display = "Blood group AB Rh(D) negative"

// ╭─── example Blood group Result ──────────────────────────────────────╮
// │ ABO and Rh group panel coded with LOINC                             │
// │ AB0 Result: component coded with LOINC, Result coded with SNOMED CT │
// │ RhD Result: component coded with LOINC, Result coded with SNOMED CT │
// ╰─────────────────────────────────────────────────────────────────────╯
Instance: BloodGroupRh
InstanceOf: ChLabObservationBloodGroup
Title: "Observation Result for blood group and rhesus factor separately"
Description: "Example reporting Blood Group and RhD Result separately and coded with SNOMED CT"
Usage: #example
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03760-blood-group"
* status = #final

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
Instance: BloodGroupFreeText
InstanceOf: ChLabObservationBloodGroup
Title: "Observation Result for blood group and rhesus factor as free text"
Description: "Example reporting the BloodGroup, Rhd and Coombs-Test Result as HTML Table"
Usage: #example
* identifier.system = "https://labor.pipette.com/labvalues"
* identifier.value = "1304-03740-blood-group"
* status = #final

* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

* method = $sct#258075003 "Serotyping (qualifier value)"

* valueCodeableConcept.text = """<table>
    <tr>
      <th>Untersuchungen</th>
      <th>Resultat</th>
      <th>Einheit</th>
      <th>Referenzbereich</th>
    </tr>
    <tr>
      <td colspan="4"><strong>Blutgruppe</strong></td>
    </tr>
    <tr>
      <td>Blutgruppe</td>
      <td>A</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Rhesus D / Untergruppe</td>
      <td>positiv</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Antik&ouml;rpersuchtest</td>
      <td>negativ</td>
      <td>&nbsp;</td>
      <td>negativ</td>
    </tr>
    <tr>
      <td colspan="4"><strong>Direkter Coombstest</strong></td>
    </tr>
    <tr>
      <td>DAT (IgG und C3d)</td>
      <td>negativ</td>
      <td>&nbsp;</td>
      <td>negativ</td>
    </tr>
  </table>"""
