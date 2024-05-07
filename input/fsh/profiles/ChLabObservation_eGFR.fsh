Profile:      ChLabObservation_eGFR
Id:           ch-lab-observation-egfr
Parent:       ChLabObservationSingleTest
Title:        "CH LAB Observation Results: eGFR Profiles"
Description:  "Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular filtration rate (eGFR) can be calculated."
* method = $sct#703505007 "Clearance calculation relative to 1.73 square meters body surface area (qualifier value)"
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* category[specialty] = $sct#394596001 "Chemical pathology"

Instance: Estimated-GFR
InstanceOf: ChLabObservation_eGFR
Usage: #example
Title: "Example of estimated Glomerulum Filtration Rate"
Description: "eGFR"
* status = #final
* code = $loinc#69405-9 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood"
* code.text = "GFR/1.73 sq M.predicted (S/P/Bld) [Vol rate/Area]"
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* effectiveDateTime = "2024-04-23T11:24:26+01:00"
* performer = Reference(urn:uuid:12328339-f7d6-4bb6-80e4-89fd03ce5052) "BeatBunsen"
* valueQuantity = 74 'mg/mmol' "mg/mmol"
* referenceRange.low.value = 60
* referenceRange.low.unit = "mg/mol"