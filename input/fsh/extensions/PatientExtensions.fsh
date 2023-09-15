Extension: BirthSexExtension
Id: example-extension
Title: "Birth Sex Extension"
Description: "bla"
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only code
* valueCode 1..1
* valueCode from BirthSex (required)