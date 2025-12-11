# MedMe Pharmacy HealthcareService - MedMe Pharmacy Services Implementation Guide v0.9.25

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedMe Pharmacy HealthcareService**

## Resource Profile: MedMe Pharmacy HealthcareService 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-healthcareservice | *Version*:0.9.25 |
| Draft as of 2025-12-10 | *Computable Name*:MedMePharmacyHealthcareService |

 
A profile of HealthcareService for MedMe pharmacy services, based on Canadian Core, with additional extensions for pharmacy-specific needs. 

**Usages:**

* Refer to this Profile: [MedMe Pharmacy Appointment](StructureDefinition-medme-pharmacy-appointment.md) and [MedMe Pharmacy Schedule](StructureDefinition-medme-pharmacy-schedule.md)
* Examples for this Profile: [COVID-19 and Flu Vaccination Service](HealthcareService-pharmacy-immunization-service.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/medme-pharmacy-healthcareservice)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-medme-pharmacy-healthcareservice.csv), [Excel](StructureDefinition-medme-pharmacy-healthcareservice.xlsx), [Schematron](StructureDefinition-medme-pharmacy-healthcareservice.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "medme-pharmacy-healthcareservice",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-healthcareservice",
  "version" : "0.9.25",
  "name" : "MedMePharmacyHealthcareService",
  "title" : "MedMe Pharmacy HealthcareService",
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
  "description" : "A profile of HealthcareService for MedMe pharmacy services, based on Canadian Core, with additional extensions for pharmacy-specific needs.",
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
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "http://fhir.infoway-inforoute.ca/cacore/StructureDefinition/healthcareservice-ca-core",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HealthcareService",
        "path" : "HealthcareService"
      },
      {
        "id" : "HealthcareService.id",
        "path" : "HealthcareService.id",
        "short" : "Unique identifier for the healthcare service",
        "min" : 1
      },
      {
        "id" : "HealthcareService.meta",
        "path" : "HealthcareService.meta",
        "short" : "Metadata including profile version",
        "min" : 1
      },
      {
        "id" : "HealthcareService.extension",
        "path" : "HealthcareService.extension",
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
        "min" : 5
      },
      {
        "id" : "HealthcareService.extension:isPublic",
        "path" : "HealthcareService.extension",
        "sliceName" : "isPublic",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-public"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:isWaitlisted",
        "path" : "HealthcareService.extension",
        "sliceName" : "isWaitlisted",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-waitlisted"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:isReschedulingAllowed",
        "path" : "HealthcareService.extension",
        "sliceName" : "isReschedulingAllowed",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-rescheduling-allowed"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:isCancellationAllowed",
        "path" : "HealthcareService.extension",
        "sliceName" : "isCancellationAllowed",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-cancellation-allowed"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:defaultDuration",
        "path" : "HealthcareService.extension",
        "sliceName" : "defaultDuration",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/default-duration"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.identifier",
        "path" : "HealthcareService.identifier",
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
        "short" : "MedMe healthcare service identifiers",
        "min" : 1,
        "max" : "3"
      },
      {
        "id" : "HealthcareService.identifier:serviceId",
        "path" : "HealthcareService.identifier",
        "sliceName" : "serviceId",
        "short" : "MedMe healthcare service ID",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "HealthcareService.identifier:serviceId.system",
        "path" : "HealthcareService.identifier.system",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/healthcare-service/id"
      },
      {
        "id" : "HealthcareService.identifier:activityId",
        "path" : "HealthcareService.identifier",
        "sliceName" : "activityId",
        "short" : "MedMe healthcare service internal activity id",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "HealthcareService.identifier:activityId.system",
        "path" : "HealthcareService.identifier.system",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/healthcare-service/activity-id"
      },
      {
        "id" : "HealthcareService.identifier:urlParam",
        "path" : "HealthcareService.identifier",
        "sliceName" : "urlParam",
        "short" : "MedMe healthcare service URL parameter",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "HealthcareService.identifier:urlParam.system",
        "path" : "HealthcareService.identifier.system",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/healthcare-service/url-param"
      },
      {
        "id" : "HealthcareService.active",
        "path" : "HealthcareService.active",
        "short" : "Whether the service is active",
        "min" : 1
      },
      {
        "id" : "HealthcareService.providedBy",
        "path" : "HealthcareService.providedBy",
        "short" : "Organization that provides this pharmacy service",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-organization"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.category",
        "path" : "HealthcareService.category",
        "short" : "Type of pharmacy service provided",
        "min" : 1
      },
      {
        "id" : "HealthcareService.category.coding",
        "path" : "HealthcareService.category.coding",
        "min" : 1
      },
      {
        "id" : "HealthcareService.category.coding.system",
        "path" : "HealthcareService.category.coding.system",
        "fixedUri" : "http://snomed.info/sct"
      },
      {
        "id" : "HealthcareService.type",
        "path" : "HealthcareService.type",
        "short" : "Type of pharmacy service. Exactly 1 required to satisfy CA Core+ 1.0.1-dft-preballot."
      },
      {
        "id" : "HealthcareService.location",
        "path" : "HealthcareService.location",
        "short" : "Location where this pharmacy service is provided",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-location"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.name",
        "path" : "HealthcareService.name",
        "short" : "Name of the pharmacy service",
        "min" : 1
      },
      {
        "id" : "HealthcareService.comment",
        "path" : "HealthcareService.comment",
        "short" : "Service description from appointment type (plain text, no markdown)"
      },
      {
        "id" : "HealthcareService.extraDetails",
        "path" : "HealthcareService.extraDetails",
        "short" : "Additional service details from appointment type sub-description (supports markdown)"
      },
      {
        "id" : "HealthcareService.characteristic",
        "path" : "HealthcareService.characteristic",
        "short" : "Service delivery characteristics (e.g., in-person, virtual)",
        "min" : 1
      },
      {
        "id" : "HealthcareService.characteristic.coding",
        "path" : "HealthcareService.characteristic.coding",
        "min" : 1
      },
      {
        "id" : "HealthcareService.characteristic.coding.system",
        "path" : "HealthcareService.characteristic.coding.system",
        "fixedUri" : "http://terminology.hl7.org/fhir/service-mode"
      },
      {
        "id" : "HealthcareService.appointmentRequired",
        "path" : "HealthcareService.appointmentRequired",
        "short" : "Whether appointments are required for this service",
        "min" : 1
      }
    ]
  }
}

```
