# Example Pharmacy Appointment - MedMe Pharmacy Services Implementation Guide v0.9.21

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Pharmacy Appointment**

## Example Appointment: Example Pharmacy Appointment

Profile: [MedMe Pharmacy Appointment](StructureDefinition-medme-pharmacy-appointment.md)

**Appointment Mode**: in-person

**Communication Language**: English (Canada)

**identifier**: `https://fhir.medmehealth.com/pharmacy-services/systems/entity/appointment/id`/test-appointment-id

**status**: Booked

**appointmentType**: ROUTINE

**start**: 2023-01-01 10:00:00+0000

**end**: 2023-01-01 10:15:00+0000

**minutesDuration**: 30

**slot**: [Slot: extension = 2,2025-07-15 09:15:00+0000; identifier = https://fhir.medmehealth.com/pharmacy-services/systems/entity/slot/id#a521be25-475d-4a45-b193-026c3d35048d; serviceType = 123; status = free; start = 2025-07-15 09:15:00+0000; end = 2025-07-15 09:30:00+0000](Slot-slot-123.md)

**created**: 2023-01-01 10:00:00+0000

> **participant****actor**:[Jane Doe Female, DoB: 1990-01-13 ( MR)](Patient-66ccb0fd-199d-4321-95b0-4defae497b72.md)**status**: Accepted

> **participant****actor**:[HealthcareService COVID-19 and Flu Vaccination Service](HealthcareService-pharmacy-immunization-service.md)**status**: Accepted



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "test-appointment-id",
  "meta" : {
    "profile" : [
      "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-appointment"
    ]
  },
  "extension" : [
    {
      "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/appointment-mode",
      "valueString" : "in-person"
    },
    {
      "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/communication-language",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://terminology.hl7.org/CodeSystem/language",
            "code" : "en-CA",
            "display" : "English (Canada)"
          }
        ],
        "text" : "English (Canada)"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/artifact-contact"
    }
  ],
  "identifier" : [
    {
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/appointment/id",
      "value" : "test-appointment-id"
    }
  ],
  "status" : "booked",
  "appointmentType" : {
    "coding" : [
      {
        "system" : "https://terminology.hl7.org/CodeSystem/v2-0276",
        "code" : "ROUTINE"
      }
    ]
  },
  "start" : "2023-01-01T10:00:00Z",
  "end" : "2023-01-01T10:15:00Z",
  "minutesDuration" : 30,
  "slot" : [
    {
      "reference" : "Slot/slot-123"
    }
  ],
  "created" : "2023-01-01T10:00:00Z",
  "participant" : [
    {
      "actor" : {
        "reference" : "Patient/66ccb0fd-199d-4321-95b0-4defae497b72"
      },
      "status" : "accepted"
    },
    {
      "actor" : {
        "reference" : "HealthcareService/pharmacy-immunization-service"
      },
      "status" : "accepted"
    }
  ]
}

```
