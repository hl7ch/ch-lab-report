<!-- markdownlint-disable MD001 MD041 -->

### Exchange Images and PDF-Documents

Certain laboratory results are available in the form of images or PDF documents. One possibility to exchange images or PDF files via HL7 FHIR, is the usage of the [base64Binary](https://hl7.org/fhir/R4/datatypes.html#base64Binary) data type. This data type enables embedding and transferring binary data (such as images or PDFs) in FHIR resources in Base64-encoded format.

#### Using the base64Binary Data Type

In HL7 FHIR, the base64Binary data type is used for fields meant to hold binary data. A common example is the `DocumentReference.content.attachment.data` element in the [DocumentReference](https://hl7.org/fhir/R4/documentreference.html) resource, which has the possiblity to contain documents as a base64-encoded string. When sending a file, it is first encoded in base64 and then inserted into the appropriate data element.

Example of a base64-encoded image in a DocumentReference:

```json
{
  "resourceType": "DocumentReference",
  "content": [
    {
      "attachment": {
        "contentType": "image/jpeg",
        "data": "base64-encoded-data-here"
      }
    }
  ]
}
```

You can find another representation in the element `DiagnosticReport.presentedForm` in the example [3-breath-test](Bundle-LabResultReport-3-breath-test.json.html)

#### Limiting File Size

Since transferring large files can impact network load and server performance, it's advisable to implement file size limitation mechanisms:

1. <b>Set a file size limit:</b> FHIR implementations can set a maximum file size limit for uploaded documents, for example, a limit of 20 MB base64Binary.

2. <b>Use external links:</b> For very large or frequently updated files, consider using an external link instead of the base64-encoded content. This can be done through the `url` element of the [Attachment](https://hl7.org/fhir/R4/datatypes.html#Attachment), where only the link to the file is provided, and the actual file remains stored on a separate server.

Example:

```json
{
  "resourceType": "DocumentReference",
  "content": [
    {
      "attachment": {
        "contentType": "application/pdf",
        "url": "https://example.com/path/to/document.pdf"
      }
    }
  ]
}
```
3. <b>File compression:</b> Files can be compressed before base64-encoding to reduce the amount of data transferred.

In summary, the base64Binary data type provides a flexible solution for transferring binary data in FHIR, and by combining size restrictions, the use of external URLs, and potential compression, the efficiency and performance of these transfers can be optimized.
