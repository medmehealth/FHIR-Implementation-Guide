# MedMe Pharmacy Appointment - MedMe Pharmacy Services Implementation Guide v0.9.22

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedMe Pharmacy Appointment**

## Resource Profile: MedMe Pharmacy Appointment 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-appointment | *Version*:0.9.22 |
| Draft as of 2025-11-25 | *Computable Name*:MedMePharmacyAppointment |

 
A profile of Appointment for MedMe pharmacy services, based on FHIR R4, with essential fields for pharmacy appointment management. 

**Usages:**

* Examples for this Profile: [Appointment/test-appointment-id](Appointment-test-appointment-id.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/medme-pharmacy-appointment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-medme-pharmacy-appointment.csv), [Excel](StructureDefinition-medme-pharmacy-appointment.xlsx), [Schematron](StructureDefinition-medme-pharmacy-appointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "medme-pharmacy-appointment",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-appointment",
  "version" : "0.9.22",
  "name" : "MedMePharmacyAppointment",
  "title" : "MedMe Pharmacy Appointment",
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
  "description" : "A profile of Appointment for MedMe pharmacy services, based on FHIR R4, with essential fields for pharmacy appointment management.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
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
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Appointment",
        "path" : "Appointment"
      },
      {
        "id" : "Appointment.id",
        "path" : "Appointment.id",
        "short" : "Unique identifier for the appointment"
      },
      {
        "id" : "Appointment.meta",
        "path" : "Appointment.meta",
        "short" : "Metadata including profile version",
        "min" : 1
      },
      {
        "id" : "Appointment.extension",
        "path" : "Appointment.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Appointment.extension:appointmentMode",
        "path" : "Appointment.extension",
        "sliceName" : "appointmentMode",
        "short" : "The mode of service delivery (e.g., in-person, virtual, phone)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/appointment-mode"
            ]
          }
        ]
      },
      {
        "id" : "Appointment.extension:artifactContact",
        "path" : "Appointment.extension",
        "sliceName" : "artifactContact",
        "short" : "Contact details for appointment communications (may be different from patient)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/artifact-contact"]
          }
        ]
      },
      {
        "id" : "Appointment.extension:communicationLanguage",
        "path" : "Appointment.extension",
        "sliceName" : "communicationLanguage",
        "short" : "Preferred language for appointment communications",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/communication-language"
            ]
          }
        ]
      },
      {
        "id" : "Appointment.identifier",
        "path" : "Appointment.identifier",
        "short" : "MedMe appointment ID",
        "max" : "1"
      },
      {
        "id" : "Appointment.identifier.system",
        "path" : "Appointment.identifier.system",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/appointment/id"
      },
      {
        "id" : "Appointment.identifier.value",
        "path" : "Appointment.identifier.value",
        "min" : 1
      },
      {
        "id" : "Appointment.status",
        "path" : "Appointment.status",
        "short" : "Status of the appointment (pending, booked, cancelled, fulfilled, entered-in-error)",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.medmehealth.com/pharmacy-services/ValueSet/medme-appointment-status"
        }
      },
      {
        "id" : "Appointment.appointmentType",
        "path" : "Appointment.appointmentType",
        "short" : "Type of appointment (WALKIN or ROUTINE)",
        "min" : 1,
        "constraint" : [
          {
            "key" : "walkin-no-slot",
            "severity" : "error",
            "human" : "If appointment type is WALKIN, slot must not be present",
            "expression" : "appointmentType.coding.where(system = 'https://terminology.hl7.org/CodeSystem/v2-0276' and code = 'WALKIN').exists() implies slot.empty()",
            "xpath" : "@value|f:*|h:div",
            "source" : "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.medmehealth.com/pharmacy-services/ValueSet/medme-appointment-type"
        }
      },
      {
        "id" : "Appointment.appointmentType.coding",
        "path" : "Appointment.appointmentType.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Appointment.appointmentType.coding.system",
        "path" : "Appointment.appointmentType.coding.system",
        "fixedUri" : "https://terminology.hl7.org/CodeSystem/v2-0276"
      },
      {
        "id" : "Appointment.appointmentType.coding.code",
        "path" : "Appointment.appointmentType.coding.code",
        "min" : 1
      },
      {
        "id" : "Appointment.start",
        "path" : "Appointment.start",
        "short" : "Scheduled start time of the appointment",
        "min" : 1
      },
      {
        "id" : "Appointment.end",
        "path" : "Appointment.end",
        "short" : "Scheduled end time of the appointment",
        "min" : 1
      },
      {
        "id" : "Appointment.minutesDuration",
        "path" : "Appointment.minutesDuration",
        "short" : "Duration of the appointment in minutes",
        "min" : 1
      },
      {
        "id" : "Appointment.slot",
        "path" : "Appointment.slot",
        "short" : "The slot fulfilled by this appointment, only required for non-WALKIN/INSTANT appointments originating from dynamic slots.",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-slot"
            ]
          }
        ]
      },
      {
        "id" : "Appointment.created",
        "path" : "Appointment.created",
        "short" : "Date and time when the appointment was created",
        "min" : 1
      },
      {
        "id" : "Appointment.participant",
        "path" : "Appointment.participant",
        "short" : "Participants in the appointment (at least 2: patient and healthcare service)",
        "min" : 2,
        "constraint" : [
          {
            "key" : "at-least-one-patient",
            "severity" : "error",
            "human" : "At least one participant must be a Patient",
            "expression" : "participant.where(actor.reference.startsWith('Patient/')).count() >= 1",
            "xpath" : "(exists(f:type) or exists(f:actor))"
          },
          {
            "key" : "at-least-one-healthcare-service",
            "severity" : "error",
            "human" : "At least one participant must be a HealthcareService",
            "expression" : "participant.where(actor.reference.startsWith('HealthcareService/')).count() >= 1",
            "xpath" : "@value|f:*|h:div",
            "source" : "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ]
      },
      {
        "id" : "Appointment.participant.actor",
        "path" : "Appointment.participant.actor",
        "short" : "Reference to the participant (Patient or HealthcareService)",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-patient",
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-healthcareservice",
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-location"
            ]
          }
        ]
      },
      {
        "id" : "Appointment.participant.status",
        "path" : "Appointment.participant.status",
        "short" : "Status of the participant's participation",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.org/fhir/ValueSet/participationstatus"
        }
      }
    ]
  }
}

```
