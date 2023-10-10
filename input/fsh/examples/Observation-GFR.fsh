// ╭──────────────  example GFR  ────────────────────────────────╮
// │  Observation with component.referenceRange low and age.low  s│
// ╰─────────────────────────────────────────────────────────────╯

/*
Instance: f205
InstanceOf: Observation
Description: "Example of an Observation Instance with component.referenceRange"
Usage: #example
* identifier.system = "https://intranet.aumc.nl/labvalues"
* identifier.value = "1304-03720-eGFR"
* status = #final
* code = $loinc#33914-3 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum or Plasma by Creatinine-based formula (MDRD)"
* subject = Reference(HansGuggindieluft) "Hans Guggindieluft"
* effectiveDateTime = "2023-09-14T07:34:00+01:00"
* issued = "2023-09-14T14:34:00+01:00"
* performer = Reference(MarcMustermann) "Marc Mustermann"
* interpretation.text = "interpretation of results should be assigned based upon the level of kindey function"
* note.text = "GFR estimating equations developed by the Modification of Diet in Renal Disease (MDRD) Study Group and the Chronic Kidney Disease Epidemiology Collaboration (CKD-EPI)...."
* method = $sct#702668005 "MDRD"
* component[0].code = $loinc#48643-1 "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* component[=].valueQuantity.comparator = #>
* component[=].valueQuantity = 60 'mL/min/{1.73_m2}' "mL/min/1.73m2"
* component[=].referenceRange.low = 60 'mL/min/{1.73_m2}' "mL/min/1.73m2"
* component[=].referenceRange.appliesTo.text = "non-black/african-american"
* component[=].referenceRange.age.low = 18 'a' "yrs"
* component[+].code = $loinc#48642-3 "Glomerular filtration rate/1.73 sq M.predicted among non-blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* component[=].valueQuantity = 60 'mL/min/{1.73_m2}' "mL/min/1.73m2"
* component[=].referenceRange.low = 60 'mL/min/{1.73_m2}' "mL/min/1.73m2"
* component[=].referenceRange.age.low = 18 'a' "yrs"
// * interpretation = 

*/