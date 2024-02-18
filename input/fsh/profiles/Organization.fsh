Profile: ChLabOrganization
Parent: CHCoreOrganization
Id: ch-lab-organization
Title: "CH Organization: ordering or reporting Lab-Tests"
Description: "This base profile constrains the Organization resource for the ordering and reporting bodies."
* . ^short = "CH lab Organization"
* ^extension[$imposeProfile].valueCanonical = Canonical(OrganizationUvIps)
