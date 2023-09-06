Profile: ChLabPractitioner
Parent: CHCorePractitioner
Id: ch-lab-practitioner
Title: "CH Lab Practitioner"
Description: "This profile constrains the Practitioner resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Practitioner"

* obeys ch-lab-pract1
* identifier[GLN] 1..
* name 1..
* address 1..
* address.postalCode 1..
* address.city 1..

