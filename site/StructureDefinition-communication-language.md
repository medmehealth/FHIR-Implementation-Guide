# Communication Language - MedMe Pharmacy Services Implementation Guide v0.9.22

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication Language**

## Extension: Communication Language 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/communication-language | *Version*:0.9.22 |
| Draft as of 2025-11-25 | *Computable Name*:CommunicationLanguage |

Preferred language for communications related to this appointment.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MedMe Pharmacy Appointment](StructureDefinition-medme-pharmacy-appointment.md)
* Examples for this Extension: [Appointment/test-appointment-id](Appointment-test-appointment-id.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/communication-language)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-communication-language.csv), [Excel](StructureDefinition-communication-language.xlsx), [Schematron](StructureDefinition-communication-language.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "communication-language",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/communication-language",
  "version" : "0.9.22",
  "name" : "CommunicationLanguage",
  "title" : "Communication Language",
  "status" : "draft",
  "date" : "2025-11-25T17:07:48-05:00",
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
  "description" : "Preferred language for communications related to this appointment.",
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
        "short" : "Communication Language",
        "definition" : "Preferred language for communications related to this appointment."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/communication-language"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Preferred language for appointment communications",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.value[x].coding",
        "path" : "Extension.value[x].coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.value[x].coding.system",
        "path" : "Extension.value[x].coding.system",
        "fixedUri" : "https://terminology.hl7.org/CodeSystem/language"
      },
      {
        "id" : "Extension.value[x].coding.code",
        "path" : "Extension.value[x].coding.code",
        "min" : 1
      },
      {
        "id" : "Extension.value[x].text",
        "path" : "Extension.value[x].text",
        "short" : "Human-readable language description"
      }
    ]
  }
}

```
