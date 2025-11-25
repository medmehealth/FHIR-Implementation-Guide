# Is Cancellation Allowed - MedMe Pharmacy Services Implementation Guide v0.9.21

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Is Cancellation Allowed**

## Extension: Is Cancellation Allowed 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-cancellation-allowed | *Version*:0.9.21 |
| Draft as of 2025-11-25 | *Computable Name*:IsCancellationAllowed |

Indicates whether patients can cancel their appointments for this healthcare service.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MedMe Pharmacy HealthcareService](StructureDefinition-medme-pharmacy-healthcareservice.md)
* Examples for this Extension: [COVID-19 and Flu Vaccination Service](HealthcareService-pharmacy-immunization-service.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/is-cancellation-allowed)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-is-cancellation-allowed.csv), [Excel](StructureDefinition-is-cancellation-allowed.xlsx), [Schematron](StructureDefinition-is-cancellation-allowed.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "is-cancellation-allowed",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-cancellation-allowed",
  "version" : "0.9.21",
  "name" : "IsCancellationAllowed",
  "title" : "Is Cancellation Allowed",
  "status" : "draft",
  "date" : "2025-11-25T16:51:38-05:00",
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
  "description" : "Indicates whether patients can cancel their appointments for this healthcare service.",
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
      "expression" : "HealthcareService"
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
        "short" : "Is Cancellation Allowed",
        "definition" : "Indicates whether patients can cancel their appointments for this healthcare service."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-cancellation-allowed"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
