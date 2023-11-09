Profile: ChLabPractitioner
Parent: CHCorePractitioner
Id: ch-lab-practitioner
Title: "CH Lab Practitioner"
Description: "This profile constrains the Practitioner resource for the purpose of laboratory test reports in Switzerland."
* . ^short = "CH Lab Practitioner"

* obeys ch-lab-pract1

* identifier[GLN] 0..1
* name 1..
// * address 1..
// * address.postalCode 1..
// * address.city 1..

// https://www.fedlex.admin.ch/eli/cc/2015/892/de

// ╭── Meldepflichtige Personen ───────╮
// │  a. Vorname und Name;             │
// │  b. Telefon- und Faxnummer;       │
// │  c. Adresse und E-Mail-Adresse.   │
// ╰───────────────────────────────────╯