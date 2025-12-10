# Location ID - MedMe Pharmacy Services Implementation Guide v0.9.25

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Location ID**

## Extension: Location ID 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/location-id | *Version*:0.9.25 |
| Draft as of 2025-12-10 | *Computable Name*:LocationId |

Reference to the location where the patient is registered or primarily receives care.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MedMe Pharmacy Patient](StructureDefinition-medme-pharmacy-patient.md)
* Examples for this Extension: [Patient/66ccb0fd-199d-4321-95b0-4defae497b72](Patient-66ccb0fd-199d-4321-95b0-4defae497b72.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/location-id)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-location-id.csv), [Excel](StructureDefinition-location-id.xlsx), [Schematron](StructureDefinition-location-id.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "location-id",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/location-id",
  "version" : "0.9.25",
  "name" : "LocationId",
  "title" : "Location ID",
  "status" : "draft",
  "date" : "2025-12-10T09:54:50-05:00",
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
  "description" : "Reference to the location where the patient is registered or primarily receives care.",
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
      "expression" : "Patient"
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
        "short" : "Location ID",
        "definition" : "Reference to the location where the patient is registered or primarily receives care."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/location-id"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Reference to the location (format: Location/{id})",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ],
        "example" : [
          {
            "label" : "Location reference",
            "valueString" : "Location/5ce61e53-6c0e-47c0-975c-6e76dcdfaaf5"
          }
        ]
      }
    ]
  }
}

```
