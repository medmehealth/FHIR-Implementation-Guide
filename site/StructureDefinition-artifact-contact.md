# Artifact Contact - MedMe Pharmacy Services Implementation Guide v0.9.21

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artifact Contact**

## Extension: Artifact Contact 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/StructureDefinition/artifact-contact | *Version*:0.9.21 |
| Draft as of 2025-11-24 | *Computable Name*:ArtifactContact |

Contact details for communications related to this appointment (may be different from the patient).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MedMe Pharmacy Appointment](StructureDefinition-medme-pharmacy-appointment.md)
* Examples for this Extension: [Appointment/test-appointment-id](Appointment-test-appointment-id.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/artifact-contact)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-artifact-contact.csv), [Excel](StructureDefinition-artifact-contact.xlsx), [Schematron](StructureDefinition-artifact-contact.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "artifact-contact",
  "url" : "http://hl7.org/fhir/StructureDefinition/artifact-contact",
  "version" : "0.9.21",
  "name" : "ArtifactContact",
  "title" : "Artifact Contact",
  "status" : "draft",
  "date" : "2025-11-24T17:38:48-05:00",
  "publisher" : "MedMe Health",
  "contact" : [
    {
      "name" : "MedMe Health",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://medmehealth.com"
        },
        {
          "system" : "email",
          "value" : "fhir@medmehealth.com"
        }
      ]
    }
  ],
  "description" : "Contact details for communications related to this appointment (may be different from the patient).",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CA"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Appointment"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Artifact Contact",
        "definition" : "Contact details for communications related to this appointment (may be different from the patient)."
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/StructureDefinition/artifact-contact"
      }
    ]
  }
}

```
