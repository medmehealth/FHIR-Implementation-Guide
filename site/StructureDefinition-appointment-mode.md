# Appointment Mode - MedMe Pharmacy Services Implementation Guide v0.9.22

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Appointment Mode**

## Extension: Appointment Mode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/appointment-mode | *Version*:0.9.22 |
| Draft as of 2025-11-25 | *Computable Name*:AppointmentMode |

The mode of service delivery for the appointment (e.g., in-person, virtual, phone).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MedMe Pharmacy Appointment](StructureDefinition-medme-pharmacy-appointment.md)
* Examples for this Extension: [Appointment/test-appointment-id](Appointment-test-appointment-id.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/appointment-mode)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-appointment-mode.csv), [Excel](StructureDefinition-appointment-mode.xlsx), [Schematron](StructureDefinition-appointment-mode.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "appointment-mode",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/appointment-mode",
  "version" : "0.9.22",
  "name" : "AppointmentMode",
  "title" : "Appointment Mode",
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
  "description" : "The mode of service delivery for the appointment (e.g., in-person, virtual, phone).",
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
        "short" : "Appointment Mode",
        "definition" : "The mode of service delivery for the appointment (e.g., in-person, virtual, phone)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/appointment-mode"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Service delivery mode",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ],
        "example" : [
          {
            "label" : "In-person appointment",
            "valueString" : "in-person"
          }
        ]
      }
    ]
  }
}

```
