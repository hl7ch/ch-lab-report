Instance: ObservationRenalInsufficiencyPanel
InstanceOf: ChLabObservationRenalInsufficiencyPanel
Title: "Observation Results: Renal Insufficiency Panel"
Description: "Panel containing Laboratory Results in case of Renal Insufficiency"
* status = #final
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "BeatBunsen"
* hasMember[CKD-EPI] = Reference(Observation/Result-egfr-cr-ckd-epi-2021)
* hasMember[uACR] = Reference(Observation/AlbuminCreatininRatioUrin)

Instance: AlbuminCreatininRatioUrin
InstanceOf: ChLabObservation_uACR
Usage: #example
Title: "Albumin Creatinin Ratio Urin"
Description: "Example of Laboratory Test Result"
* status = #final
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "BeatBunsen"
* valueQuantity = 2.8 'mg/mmol' "mg/mmol"
* specimen = Reference(Urin)
* referenceRange.high.value = 3
* referenceRange.high.unit = "mg/mmol"

Instance: Urin
InstanceOf: Specimen-eu-lab
Usage: #example
Title: "Urin"
Description: "Specimen EU Laboratory"
* type = $sct#122575003 "Urine specimen (specimen)"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* container.type = $sct#706054001 "Urine specimen container (physical object)"