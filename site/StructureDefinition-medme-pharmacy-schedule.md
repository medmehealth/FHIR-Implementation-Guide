# MedMe Pharmacy Schedule - MedMe Pharmacy Services Implementation Guide v0.9.21

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedMe Pharmacy Schedule**

## Resource Profile: MedMe Pharmacy Schedule 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-schedule | *Version*:0.9.21 |
| Draft as of 2025-11-24 | *Computable Name*:MedMePharmacySchedule |

 
A profile of Schedule for MedMe pharmacy services. 

**Usages:**

* Refer to this Profile: [MedMe Pharmacy Slot](StructureDefinition-medme-pharmacy-slot.md)
* Examples for this Profile: [Schedule/example-pharmacy-schedule](Schedule-example-pharmacy-schedule.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/medme-pharmacy-schedule)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-medme-pharmacy-schedule.csv), [Excel](StructureDefinition-medme-pharmacy-schedule.xlsx), [Schematron](StructureDefinition-medme-pharmacy-schedule.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "medme-pharmacy-schedule",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-schedule",
  "version" : "0.9.21",
  "name" : "MedMePharmacySchedule",
  "title" : "MedMe Pharmacy Schedule",
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
  "description" : "A profile of Schedule for MedMe pharmacy services.",
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
    },
    {
      "identity" : "ical",
      "uri" : "http://ietf.org/rfc/2445",
      "name" : "iCalendar"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Schedule",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Schedule",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Schedule",
        "path" : "Schedule"
      },
      {
        "id" : "Schedule.id",
        "path" : "Schedule.id",
        "short" : "Unique identifier for the schedule",
        "min" : 1
      },
      {
        "id" : "Schedule.meta",
        "path" : "Schedule.meta",
        "short" : "Metadata including profile version",
        "min" : 1
      },
      {
        "id" : "Schedule.identifier",
        "path" : "Schedule.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "description" : "Slice based on the identifier system",
          "rules" : "closed"
        },
        "short" : "MedMe schedule identifiers",
        "min" : 2,
        "max" : "2"
      },
      {
        "id" : "Schedule.identifier:scheduleId",
        "path" : "Schedule.identifier",
        "sliceName" : "scheduleId",
        "short" : "MedMe schedule/calendar ID",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Schedule.identifier:scheduleId.system",
        "path" : "Schedule.identifier.system",
        "min" : 1,
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/schedule/id"
      },
      {
        "id" : "Schedule.identifier:scheduleId.value",
        "path" : "Schedule.identifier.value",
        "min" : 1
      },
      {
        "id" : "Schedule.identifier:scheduleName",
        "path" : "Schedule.identifier",
        "sliceName" : "scheduleName",
        "short" : "MedMe schedule/calendar name",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Schedule.identifier:scheduleName.system",
        "path" : "Schedule.identifier.system",
        "min" : 1,
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/schedule/name"
      },
      {
        "id" : "Schedule.identifier:scheduleName.value",
        "path" : "Schedule.identifier.value",
        "min" : 1
      },
      {
        "id" : "Schedule.active",
        "path" : "Schedule.active",
        "short" : "Whether the schedule is active",
        "min" : 1
      },
      {
        "id" : "Schedule.actor",
        "path" : "Schedule.actor",
        "short" : "Actors for this schedule (HealthcareServices and Locations)",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-healthcareservice",
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-location"
            ]
          }
        ],
        "constraint" : [
          {
            "key" : "at-least-one-location",
            "severity" : "error",
            "human" : "At least one actor must be a Location",
            "expression" : "where(reference.startsWith('Location/')).count() >= 1",
            "xpath" : "@value|f:*|h:div",
            "source" : "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ]
      }
    ]
  }
}

```
