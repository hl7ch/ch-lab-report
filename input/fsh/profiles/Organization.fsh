Profile: ChLabOrganization
Parent: CHCoreOrganization
Id: ch-lab-organization
Title: "CH Organization: ordering or reporting Lab-Tests"
Description: "This base profile constrains the Organization resource for the ordering and reporting bodies."
* . ^short = "CH lab Organization"
* identifier[GLN] 1..
// * identifier[FOP] 0..1
* name 1..
* address 1..
* address.postalCode 1..
* address.city 1..
* contact.id 0..1  // GLN
* contact.purpose 0.. 
// * contact.purpose include http://hl7.org/fhir/ValueSet/contactentity-type TODO
* contact.name.text 0..1
* contact.name.family 1..
* contact.name.given 1..
* contact.name.prefix 0..1
* contact.telecom.value 1..
* contact.address 1..

// https://www.fedlex.admin.ch/eli/cc/2015/892/de

// ╭── Art. 4 Meldungen von laboranalytischen Befunden ───────────────────────────────────────────────╮
// │  a. Bezeichnung des Laboratoriums;                                                               │
// │  b. Vorname und Name der verantwortlichen Laborleiterin oder des verantwortlichen Laborleiters;  │
// │  bb. Vorname und Name der der für die Durchführung des Tests verantwortlichen Person, Covid-tests│
// │  c. Telefon- und Faxnummer;                                                                      │
// │  c. Adresse und E-Mail-Adresse.                                                                  │
// ╰──────────────────────────────────────────────────────────────────────────────────────────────────╯




// TODO nationale Referenz-Zentren
// https://www.bag.admin.ch/dam/bag/de/dokumente/mt/msys/adressliste-nat-referenzzentren.pdf.download.pdf/Adressliste-Nationalen-Referenzzentren-meldepflichtiger-uebertragbarer-Krankheiten-2022.pdf
// HIV Referenz-Zentren
// https://www.bag.admin.ch/dam/bag/de/dokumente/mt/p-und-p/richtlinien-empfehlungen/adressliste-meldelabors-hiv.pdf.download.pdf/adressliste-meldelabors-hiv.pdf