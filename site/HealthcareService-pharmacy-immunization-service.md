# Example Pharmacy Immunization Service - MedMe Pharmacy Services Implementation Guide v0.9.22

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Pharmacy Immunization Service**

## Example HealthcareService: Example Pharmacy Immunization Service

Profile: [MedMe Pharmacy HealthcareService](StructureDefinition-medme-pharmacy-healthcareservice.md)

**Is Public**: true

**Is Waitlisted**: true

**Is Rescheduling Allowed**: true

**Is Cancellation Allowed**: false

**Default Duration**: 15

**identifier**: `https://fhir.medmehealth.com/pharmacy-services/systems/entity/healthcare-service/id`/hs-12345, `https://fhir.medmehealth.com/pharmacy-services/systems/entity/healthcare-service/activity-id`/activity-67890, `https://fhir.medmehealth.com/pharmacy-services/systems/entity/healthcare-service/url-param`/covid-flu-vaccination

**active**: true

**providedBy**: [Organization MedMe Pharmacy](Organization-example-pharmacy-organization.md)

**category**: Medication management services, Preventive care services

**type**: Administration of vaccine to produce active immunity

**location**: [Location MedMe Pharmacy - Downtown](Location-example-pharmacy-location.md)

**name**: COVID-19 and Flu Vaccination Service

**comment**: Comprehensive vaccination service for COVID-19 and seasonal flu vaccines

**extraDetails**: 

**Walk-ins welcome** during business hours. Please bring your health card and vaccination history.

**characteristic**: In-person

**appointmentRequired**: false

### AvailableTimes

| | | | |
| :--- | :--- | :--- | :--- |
| - | **DaysOfWeek** | **AvailableStartTime** | **AvailableEndTime** |
| * | Friday | 09:00:00 | 17:00:00 |



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "pharmacy-immunization-service",
  "meta" : {
    "profile" : [
      "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-healthcareservice"
    ]
  },
  "extension" : [
    {
      "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-public",
      "valueBoolean" : true
    },
    {
      "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-waitlisted",
      "valueBoolean" : true
    },
    {
      "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-rescheduling-allowed",
      "valueBoolean" : true
    },
    {
      "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-cancellation-allowed",
      "valueBoolean" : false
    },
    {
      "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/default-duration",
      "valueInteger" : 15
    }
  ],
  "identifier" : [
    {
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/healthcare-service/id",
      "value" : "hs-12345"
    },
    {
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/healthcare-service/activity-id",
      "value" : "activity-67890"
    },
    {
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/healthcare-service/url-param",
      "value" : "covid-flu-vaccination"
    }
  ],
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/example-pharmacy-organization"
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "https://snomed.info/sct",
          "code" : "430193006",
          "display" : "Medication Review"
        },
        {
          "system" : "https://snomed.info/sct",
          "code" : "430193007",
          "display" : "Medication Reconciliation"
        }
      ],
      "text" : "Medication management services"
    },
    {
      "coding" : [
        {
          "system" : "https://snomed.info/sct",
          "code" : "310080006",
          "display" : "Pharmacy service"
        }
      ],
      "text" : "Preventive care services"
    }
  ],
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://terminology.hl7.org/fhir/service-type",
          "code" : "64"
        },
        {
          "system" : "https://snomed.info/sct",
          "code" : "33879002",
          "display" : "Administration of vaccine to produce active immunity"
        },
        {
          "system" : "https://snomed.info/sct",
          "code" : "430193006",
          "display" : "Medication Review"
        }
      ]
    }
  ],
  "location" : [
    {
      "reference" : "Location/example-pharmacy-location"
    }
  ],
  "name" : "COVID-19 and Flu Vaccination Service",
  "comment" : "Comprehensive vaccination service for COVID-19 and seasonal flu vaccines",
  "extraDetails" : "**Walk-ins welcome** during business hours. Please bring your health card and vaccination history.",
  "characteristic" : [
    {
      "coding" : [
        {
          "system" : "https://terminology.hl7.org/fhir/service-mode",
          "code" : "in-person",
          "display" : "In-person"
        },
        {
          "system" : "https://terminology.hl7.org/fhir/service-mode",
          "code" : "virtual",
          "display" : "Virtual"
        }
      ]
    }
  ],
  "appointmentRequired" : false,
  "availableTime" : [
    {
      "daysOfWeek" : ["fri"],
      "availableStartTime" : "09:00:00",
      "availableEndTime" : "17:00:00"
    }
  ]
}

```
