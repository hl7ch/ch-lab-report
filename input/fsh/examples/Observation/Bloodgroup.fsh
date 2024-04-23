// ╭─── example Blood group Result ────────────╮
// │ Observation with SNOMED CT coded value    │
// ╰───────────────────────────────────────────╯
Instance: BloodGroup
InstanceOf: ChLabObservationBloodGroup
Title: "Observation BloodGroup"
Description: "Simple Example reporting Blood Group and RhD coded with SNOMED CT"
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

/*
// ╭─── example Blood group Result ────────────╮
// │ Observation: test coded with LOINC    │
// │ Observation Result as SNOMED CT coded value    │
// │ Observation with SNOMED CT coded value    │
// ╰───────────────────────────────────────────╯
Instance: SimpleBloodGroup
InstanceOf: ChLabObservationBloodGroup
Title: "Simple Observation BloodGroup Rh"
Description: "Simple Example reporting Blood Group and RhD coded with SNOMED CT"
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
*/

// ╭─── example Blood group Result ────────────╮
// │ Observation with HTML Table               │
// ╰───────────────────────────────────────────╯
Instance: BloodGroupFreeTest
InstanceOf: ChLabObservationBloodGroup
Title: "Observation BloodGroup as free text"
Description: "Example reporting the BloodGroup Result as HTML Table"
Usage: #example
* identifier.system = "https://intranet.aumc.nl/labvalues"
* identifier.value = "1304-03740-blood-group"
* status = #final

* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* issued = "2023-09-14T14:34:00+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "Eva Erlenmeyer"

// * valueCodeableConcept.coding.code = #278154007
// * valueCodeableConcept.coding.system = $sct
// * valueCodeableConcept.coding.display = "Blood group AB Rh(D) negative"
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
