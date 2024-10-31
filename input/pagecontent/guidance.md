<!-- markdownlint-disable MD001 MD041 -->

### Exchange Images and PDF-Documents

Certain laboratory results are available in the form of images or PDF documents. To standardize the exchange of image or PDF files via HL7 FHIR, we can use the base64Binary data type. This data type enables embedding and transferring binary data (such as images or PDFs) in FHIR resources in Base64-encoded format.

#### Using the base64Binary Data Type

In HL7 FHIR, the base64Binary data type is used for fields meant to hold binary data. A common example is the DocumentReference.content.attachment.data field in the DocumentReference resource, which is designed to store documents as a Base64-encoded string. When sending a file, it is first encoded in Base64 and then inserted into the appropriate data field.

Example of a Base64-encoded image in a DocumentReference:

```json
{
  "resourceType": "DocumentReference",
  "content": [
    {
      "attachment": {
        "contentType": "image/jpeg",
        "data": "Base64-encoded-data-here"
      }
    }
  ]
}
```

A 2nd example you may find in the element <i>presentedForm</i> in [3-breath-test](https://fhir.ch/ig/ch-lab-report/Bundle-LabResultReport-3-breath-test.json.html)

#### Limiting File Size

Since transferring large files can impact network load and server performance, it's advisable to implement file size limitation mechanisms:

1. <b>Set a file size limit:</b> FHIR implementations can set a maximum file size limit for uploaded documents, for example, a limit of 20 MB [base64Binary](https://build.fhir.org/datatypes.html#base64Binary)

2. <b>Use external links:</b> For very large or frequently updated files, consider using an external link instead of the Base64-encoded content. This can be done through the url field of the attachment component in DocumentReference.content, where only the link to the file is provided, and the actual file remains stored on a separate server.

Example:

```json
{
  "resourceType": "DocumentReference",
  "content": [
    {
      "attachment": {
        "contentType": "application/pdf",
        "url": "https://server.com/path/to/document.pdf"
      }
    }
  ]
}
```
3. <b>File compression:</b> Files can be compressed before Base64 encoding to reduce the amount of data transferred.

In summary, the base64Binary data type provides a flexible solution for transferring binary data in FHIR, and by combining size restrictions, the use of external URLs, and potential compression, the efficiency and performance of these transfers can be optimized.