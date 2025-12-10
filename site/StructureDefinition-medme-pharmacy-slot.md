# MedMe Pharmacy Slot - MedMe Pharmacy Services Implementation Guide v0.9.25

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedMe Pharmacy Slot**

## Resource Profile: MedMe Pharmacy Slot 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-slot | *Version*:0.9.25 |
| Draft as of 2025-12-10 | *Computable Name*:MedMePharmacySlot |

 
A profile of Slot for MedMe pharmacy services. 

**Usages:**

* Refer to this Profile: [MedMe Pharmacy Appointment](StructureDefinition-medme-pharmacy-appointment.md)
* Examples for this Profile: [Slot/slot-123](Slot-slot-123.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/medme-pharmacy-slot)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-medme-pharmacy-slot.csv), [Excel](StructureDefinition-medme-pharmacy-slot.xlsx), [Schematron](StructureDefinition-medme-pharmacy-slot.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "medme-pharmacy-slot",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-slot",
  "version" : "0.9.25",
  "name" : "MedMePharmacySlot",
  "title" : "MedMe Pharmacy Slot",
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
  "description" : "A profile of Slot for MedMe pharmacy services.",
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
  "type" : "Slot",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Slot",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Slot",
        "path" : "Slot"
      },
      {
        "id" : "Slot.id",
        "path" : "Slot.id",
        "short" : "Unique identifier for the slot",
        "min" : 1
      },
      {
        "id" : "Slot.meta",
        "path" : "Slot.meta",
        "short" : "Metadata including profile version",
        "min" : 1
      },
      {
        "id" : "Slot.extension",
        "path" : "Slot.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Slot.extension:groupSize",
        "path" : "Slot.extension",
        "sliceName" : "groupSize",
        "short" : "Maximum number of people that can be booked in this slot",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/group-size"
            ]
          }
        ]
      },
      {
        "id" : "Slot.extension:invalidatedAt",
        "path" : "Slot.extension",
        "sliceName" : "invalidatedAt",
        "short" : "Timestamp when this slot was/will be invalidated",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/invalidated-at"
            ]
          }
        ]
      },
      {
        "id" : "Slot.identifier",
        "path" : "Slot.identifier",
        "short" : "MedMe slot identifier",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Slot.identifier.system",
        "path" : "Slot.identifier.system",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/slot/id"
      },
      {
        "id" : "Slot.identifier.value",
        "path" : "Slot.identifier.value",
        "short" : "MedMe slot ID",
        "min" : 1
      },
      {
        "id" : "Slot.serviceType",
        "path" : "Slot.serviceType",
        "short" : "Type of service this slot is for",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Slot.serviceType.coding",
        "path" : "Slot.serviceType.coding",
        "short" : "Healthcare service ID",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Slot.serviceType.coding.system",
        "path" : "Slot.serviceType.coding.system",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/healthcare-service/id"
      },
      {
        "id" : "Slot.serviceType.coding.code",
        "path" : "Slot.serviceType.coding.code",
        "min" : 1
      },
      {
        "id" : "Slot.schedule",
        "path" : "Slot.schedule",
        "short" : "Schedule this slot belongs to",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-schedule"
            ]
          }
        ]
      },
      {
        "id" : "Slot.status",
        "path" : "Slot.status",
        "short" : "Status of the slot (free, busy, busy-tentative, busy-unavailable, entered-in-error)",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/slotstatus"
        }
      },
      {
        "id" : "Slot.start",
        "path" : "Slot.start",
        "short" : "Start time of the slot"
      },
      {
        "id" : "Slot.end",
        "path" : "Slot.end",
        "short" : "End time of the slot"
      }
    ]
  }
}

```
