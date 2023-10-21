/*
Extension: BirthSexExtension
Id: example-extension
Title: "Birth Sex Extension"
Description: "bla"
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only code
* valueCode 1..1
* valueCode from BirthSex (required)
*/

Extension: ChCorePatientEch11PlaceOfOrigin
Id: ch-core-patient-ech-11-placeoforigin
Title: "Place of Origin according to eCH-0011"
Description: "The place of origin of the patient."

* ^context.type = #element
* ^context.expression = "Patient"

* . ^short = "Place of origin for patient according to eCH-0011"
* . ^definition = "The registered place of origin of the patient."
* url only uri
* valueAddress only CHCoreAddressECH11PlaceOfOrigin