// ╭─── simple example Observation Result ─────────────────────────────────────╮
// │ Hematocrit Observation, status, categories, code, method, referenceRange  │
// ╰───────────────────────────────────────────────────────────────────────────╯

Instance: Observation-Ht
InstanceOf: ChLabObservationResultsLaboratory
Title: "Ht-Observation"
Description: "Example for Hematocrit Observation"
Usage: #inline
* id = "6329ad78-c886-44f8-9471-3783cc990ff0"
* status = #final

* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* category[specialty] = $sct#394916005 "Hematopathology (specialty) (qualifier value)"

* code = $loinc#20570-8 "Hematocrit [Volume Fraction] of Blood"
* code.text = "Hematocrit (Bld) [Volume fraction]" // display text
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "BeatBunsen"
// TODO values
* valueQuantity = 48 '%' "%"
//* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#703454003 "Centrifugation technique (qualifier value)"
* specimen = Reference(Blood)
* referenceRange.low.value = 42   // women 37
* referenceRange.low.unit = "%"
* referenceRange.high.value = 50  // women 45
* referenceRange.high.unit = "%"
// * referenceRange.type = $referencerange-meaning#normal "Normal Range"
