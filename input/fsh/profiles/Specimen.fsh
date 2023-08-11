Profile: ChLabSpecimen
Parent: Specimen
Id: ch-lab-specimen
Title: "CH Lab Specimen: Laboratory"
Description: "This profile constrains the Specimen resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Specimen: Laboratory"

* obeys ch-lab-spe1

Instance: Blood-coag
InstanceOf: ChLabSpecimen
Title: "Blood Sample Coagulation"
Description: "Example for Specimen for haemostatic Examination"
Usage: #example
* identifier.value = "48736-55555-75465"
* accessionIdentifier.value = "4e88a-66666-dd888"
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/HansGuggindieluft)
* receivedTime = "2020-08-16T16:40:17Z"
// * request = Reference(Lab) Why the specimen was collected
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* processing.timePeriod.start = "2015-08-16T06:40:17Z" // usually same time as collectedDateTime
* processing.timePeriod.end = "2015-08-17T06:40:17Z" // when processing should be terminated
* container.identifier.value = "4e88a-bc987-dd888-00001-bcoag"
* container.description = "S-Monovette grün"
* container.type = $sct#702120003 "Blood collection Luer adaptor"
* container.additiveCodeableConcept = $v2-0371#C38 "3.8% Citrate"

Instance: Blood
InstanceOf: ChLabSpecimen
Title: "Blood Sample"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/HansGuggindieluft)
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"