# Invalidated At - MedMe Pharmacy Services Implementation Guide v0.9.24

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Invalidated At**

## Extension: Invalidated At 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/invalidated-at | *Version*:0.9.24 |
| Draft as of 2025-12-08 | *Computable Name*:InvalidatedAt |

The timestamp when this slot was/will be invalidated.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MedMe Pharmacy Slot](StructureDefinition-medme-pharmacy-slot.md)
* Examples for this Extension: [Slot/slot-123](Slot-slot-123.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/invalidated-at)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-invalidated-at.csv), [Excel](StructureDefinition-invalidated-at.xlsx), [Schematron](StructureDefinition-invalidated-at.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "invalidated-at",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/invalidated-at",
  "version" : "0.9.24",
  "name" : "InvalidatedAt",
  "title" : "Invalidated At",
  "status" : "draft",
  "date" : "2025-12-08T15:17:38-05:00",
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
  "description" : "The timestamp when this slot was/will be invalidated.",
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
      "expression" : "Slot"
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
        "short" : "Invalidated At",
        "definition" : "The timestamp when this slot was/will be invalidated."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/invalidated-at"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Timestamp when slot was invalidated",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
