Profile: ChLabOrganization
Parent: CHCoreOrganization
Id: ch-lab-organization
Title: "CH Organization: ordering or reporting Lab-Tests"
Description: "This base profile constrains the Organization resource for the ordering and reporting bodies."
* . ^short = "CH lab Organization"
* identifier[GLN] 1..
* name 1..
* address 1..
* address.postalCode 1..
* address.city 1..
* contact.name.text 1..
* contact.name.family 0..1
* contact.name.given 0..1
* contact.name.prefix 0..1
* contact.telecom.value 1..
