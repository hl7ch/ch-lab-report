/*
Extension: CompositionBasedOnOrderOrRequisition
Id:   composition-basedOn-order-or-requisition
Title:  "Document Based On Order"
Description: "This extension provides a link to the order [(Reference(ServiceRequest)] or requisition [ServiceRequest.requisition (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Composition"
* ^url = "http://fhir.ch/ig/ch-lab-report/StructureDefinition/composition-basedOn-order-or-requisition"
* value[x] only Reference (ServiceRequest) or Identifier


Extension: CompositionBasedOnOrderOrRequisition
Id:   composition-basedOn-order-or-requisition
Title:  "Document Based On Order"
Description: "This extension provides a link to the order [(Reference(ServiceRequest)] or requisition [ServiceRequest.requisition (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert SetFmmandStatusRule ( 2, trial-use )
* insert ExtensionContext(Composition)
* ^url = "http://fhir.ch/ig/ch-lab-report/StructureDefinition/composition-basedOn-order-or-requisition"
* value[x] only Reference(ChLabReportServiceRequest) or Identifier
*/
/*
Extension: ObservationInstantiatesR5
Id:   observation-instantiates
Title:  "Observation instantiates an ObservationDefinition"
Description: "This extension provides a reference that this observation is an instance."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* ^url = "http://fhir.ch/ig/ch-lab-report/StructureDefinition/observation-instantiates"
* value[x] only Reference (ChLabObservationDefinition)
// * instantiatesReference only Reference (ObservationDefinition)
// * instantiatesCanonical only 
*/