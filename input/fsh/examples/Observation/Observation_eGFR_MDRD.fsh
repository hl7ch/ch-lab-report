// ╭────── example eGFR-MDRD for a male Patient ───────────╮
// │ Observation with components for blacks and non-blacks │
// ╰───────────────────────────────────────────────────────╯

Instance: Observation-eGFR-MDRD-male
InstanceOf: ChLabObservation_eGFR_MDRD
Description: "Example of an Observation Instance with component.referenceRange"
Usage: #example
* identifier.system = "http://example.org/Labor-Pipette/labvalues"
* identifier.value = "1304-03720-eGFR-MDRD-male"
* code = $loinc#70969-1 "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)/1.73 sq M among male population"
* status = #final

* subject = Reference(urn:uuid:6b8a0365-5022-403b-a5a5-8d8680d701ef) "Hans Guggindieluft"
* effectiveDateTime = "2023-09-14T07:34:00+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann"
* note.text = "All estimation formulas have their limitations: Only valid in steady state, i.e. not in acute renal failure, with abnormal muscle mass of the patient, with
heavy meat consumption, dialysis and other conditions."

// * component[blacks].code = $loinc#48643-1 "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* component[blacks].valueQuantity.comparator = #>
* component[blacks].valueQuantity = 60 'mL/min' 
* component[blacks].valueQuantity.unit = "mL/min/1.73m2"
* component[blacks].referenceRange.low = 60 'mL/min' "mL/min/1.73m2"
* component[blacks].referenceRange.appliesTo.text = "black/african-american"
* component[blacks].referenceRange.age.low = 18 'a' "yrs"

* component[non-blacks].code = $loinc#48642-3 "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)/1.73 sq M among non black population"
* component[non-blacks].valueQuantity.comparator = #>
* component[non-blacks].valueQuantity = 60 'mL/min'
* component[non-blacks].valueQuantity.unit = "mL/min/1.73m2"
* component[non-blacks].referenceRange.low = 60 'mL/min' "mL/min/1.73m2"
* component[non-blacks].referenceRange.appliesTo.text = "non-black/african-american"
* component[non-blacks].referenceRange.age.low = 18 'a' "yrs"
 
* interpretation.coding = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "interpretation of results should be assigned based upon the level of kindey function"

// ╭──────  example eGFR-MDRD for a female Patient  ───────╮
// │ Observation with components for blacks and non-blacks │
// ╰───────────────────────────────────────────────────────╯

Instance: Observation-eGFR-MDRD-female
InstanceOf: ChLabObservation_eGFR_MDRD
Description: "Example of an Observation Instance with component.referenceRange"
Usage: #example
* identifier.system = "https://example.org/labvalues"
* identifier.value = "1304-03720-eGFR-MDRD-female"
* code = $loinc#50044-7 "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)/1.73 sq M among female population"

* status = #final
* subject = Reference(urn:uuid:14fbf29b-5dac-483e-b543-15031f12344b) "Katarina Keller"
* effectiveDateTime = "2023-09-14T07:34:00+01:00"
* issued = "2024-04-24T11:24:26+01:00"
* performer = Reference(urn:uuid:017e8e32-2f3b-4bef-baf1-92c7278a7048) "Marc Mustermann"
* note.text = "All estimation formulas have their limitations: Only valid in steady state, i.e. not in acute renal failure, with abnormal muscle mass of the patient, with
heavy meat consumption, dialysis and other conditions."

// * component[blacks].code = $loinc#48643-1 "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* component[blacks].valueQuantity.comparator = #>
* component[blacks].valueQuantity = 60 'mL/min' 
* component[blacks].valueQuantity.unit = "mL/min/1.73m2"
* component[blacks].referenceRange.low = 60 'mL/min' "mL/min/1.73m2"
* component[blacks].referenceRange.appliesTo.text = "black/african-american"
* component[blacks].referenceRange.age.low = 18 'a' "yrs"

* component[non-blacks].code = $loinc#48642-3 "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)/1.73 sq M among non black population"
* component[non-blacks].valueQuantity.comparator = #>
* component[non-blacks].valueQuantity = 60 'mL/min'
* component[non-blacks].valueQuantity.unit = "mL/min/1.73m2"
* component[non-blacks].referenceRange.low = 60 'mL/min' "mL/min/1.73m2"
* component[non-blacks].referenceRange.appliesTo.text = "non-black/african-american"
* component[non-blacks].referenceRange.age.low = 18 'a' "yrs"
 
* interpretation.coding = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "interpretation of results should be assigned based upon the level of kindey function"
