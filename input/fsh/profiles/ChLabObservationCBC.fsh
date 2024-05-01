Profile:      ChLabObservation_CBC
Id:           ch-lab-observation-cpc
Parent:       ChLabObservationResultsLaboratory
Title:        "CH LAB Observation Results: automated CBC Profile"
Description:  "Renal function can be determined by laboratory measurement of serum creatinine, from which the estimated glomerular filtration rate (eGFR) can be calculated."

* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = $m49.htm#756 "Switzerland"
* ^purpose = "This profile constrains the ChLabObservationResultsLaboratoryt profile to represent results produced by automated CBC (count of Blood-Cells) for the  HL7 Swiss project."
* ^copyright = "Used by permission of HL7 Switzerland, all rights reserved Creative Commons License"
* category[specialty] = $sct#394916005 "Hematopathology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"

* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
  * text = "CBC panel Auto (Bld)"
  * ^short = "LOINC Display Name"
