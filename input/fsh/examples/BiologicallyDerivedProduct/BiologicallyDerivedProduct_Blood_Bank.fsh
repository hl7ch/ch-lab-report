// Elements available only in Release 5 und höher
/*
Instance: example
InstanceOf: BiologicallyDerivedProduct
Usage: #example
* productCode.coding.code = #E0398  // display RED BLOOD CELLS|CPD>AS5/450mL/refg|Irr|ResLeu	
* identifier.system = "https://www.isbt128.org/uri/MPHOUniqueIdentifier"
* identifier.value = "A9999E0398A999921123456A00000"
* biologicalSourceEvent.system = "https://www.isbt128.org/uri/DonationIdentificationNumber"
* biologicalSourceEvent.value = "A999921123456"
* processingFacility.reference = "Organization/A9999"
* division = "A00000"   // Ein eindeutiger Identifikator für eine ganzzahlige Teilmenge dieses Produkts
* productStatus.code = "available"
* expirationDate = "2021-08-02T23:59:00-05:00"
* storageTempRequirements.low.value = 1
* storageTempRequirements.low.system = "http://unitsofmeasure.org"
* storageTempRequirements.low.unit = "degrees C"
* storageTempRequirements.high.value = 6
* storageTempRequirements.high.system = "http://unitsofmeasure.org"
* storageTempRequirements.high.unit = "degrees C"
* property[0].type.coding.code = "ABORhD"
* property[=].valueCodeableConcept.coding.system = "https://www.isbt128.org/uri/ABORhD"
* property[=].valueCodeableConcept.coding.code = "62"
* property[=].valueCodeableConcept.coding.display = "A RhD Positive"
* property[+].type.coding.code = "Donor"
* property[=].valueCodeableConcept.coding.system = "https://www.isbt128.org/uri/CollectionType"
* property[=].valueCodeableConcept.coding.code = "V"
* property[=].valueCodeableConcept.coding.display = "Volunteer"
*/