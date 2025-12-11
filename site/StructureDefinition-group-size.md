# Group Size - MedMe Pharmacy Services Implementation Guide v0.9.25

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Group Size**

## Extension: Group Size 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/group-size | *Version*:0.9.25 |
| Draft as of 2025-12-10 | *Computable Name*:GroupSize |

The maximum number of people that can be booked in this slot.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MedMe Pharmacy Slot](StructureDefinition-medme-pharmacy-slot.md)
* Examples for this Extension: [Slot/slot-123](Slot-slot-123.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/group-size)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-group-size.csv), [Excel](StructureDefinition-group-size.xlsx), [Schematron](StructureDefinition-group-size.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "group-size",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/group-size",
  "version" : "0.9.25",
  "name" : "GroupSize",
  "title" : "Group Size",
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
  "description" : "The maximum number of people that can be booked in this slot.",
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
        "short" : "Group Size",
        "definition" : "The maximum number of people that can be booked in this slot."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/group-size"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Maximum number of people",
        "min" : 1,
        "type" : [
          {
            "code" : "integer"
          }
        ],
        "constraint" : [
          {
            "key" : "positive-integer",
            "severity" : "error",
            "human" : "Group size must be a positive integer (greater than 0)",
            "expression" : "$this > 0",
            "xpath" : "@value|f:*|h:div",
            "source" : "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ]
      }
    ]
  }
}

```
