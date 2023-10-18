Profile: ChLabPatient
Parent: CHCorePatient
Id: ch-lab-patient
Title: "CH Lab Patient"
Description: "This profile constrains the Patient resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Patient"

* obeys ch-lab-pat1

/*
* extension contains
    ChCorePatientEch11PlaceOfOrigin named placeOfOrigin 0..* and
    $patient-religion named religion 0..1

* extension[placeOfOrigin] ^short = "Place of origin(s) of patient"
* extension[religion] ^short = "Religion of patient"

*/