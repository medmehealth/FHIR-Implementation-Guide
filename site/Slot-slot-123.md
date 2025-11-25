# Example Pharmacy Slot - MedMe Pharmacy Services Implementation Guide v0.9.21

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Pharmacy Slot**

## Example Slot: Example Pharmacy Slot

Profile: [MedMe Pharmacy Slot](StructureDefinition-medme-pharmacy-slot.md)

**Group Size**: 2

**Invalidated At**: 2025-07-15 09:15:00+0000

**identifier**: `https://fhir.medmehealth.com/pharmacy-services/systems/entity/slot/id`/a521be25-475d-4a45-b193-026c3d35048d

**serviceType**: 123

**schedule**: [Schedule: identifier = https://fhir.medmehealth.com/pharmacy-services/systems/entity/schedule/id#12345,https://fhir.medmehealth.com/pharmacy-services/systems/entity/schedule/name#Test Calendar](Schedule-example-pharmacy-schedule.md)

**status**: Free

**start**: 2025-07-15 09:15:00+0000

**end**: 2025-07-15 09:30:00+0000



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "slot-123",
  "meta" : {
    "profile" : [
      "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-slot"
    ]
  },
  "extension" : [
    {
      "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/group-size",
      "valueInteger" : 2
    },
    {
      "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/invalidated-at",
      "valueDateTime" : "2025-07-15T09:15:00Z"
    }
  ],
  "identifier" : [
    {
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/slot/id",
      "value" : "a521be25-475d-4a45-b193-026c3d35048d"
    }
  ],
  "serviceType" : [
    {
      "coding" : [
        {
          "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/healthcare-service/id",
          "code" : "123"
        }
      ]
    }
  ],
  "schedule" : {
    "reference" : "Schedule/example-pharmacy-schedule"
  },
  "status" : "free",
  "start" : "2025-07-15T09:15:00Z",
  "end" : "2025-07-15T09:30:00Z"
}

```
