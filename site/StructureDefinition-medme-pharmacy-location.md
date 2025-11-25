# MedMe Pharmacy Location - MedMe Pharmacy Services Implementation Guide v0.9.21

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedMe Pharmacy Location**

## Resource Profile: MedMe Pharmacy Location 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-location | *Version*:0.9.21 |
| Draft as of 2025-11-25 | *Computable Name*:MedMePharmacyLocation |

 
A profile of Location for MedMe pharmacy services, based on Canadian Core. 

**Usages:**

* Refer to this Profile: [MedMe Pharmacy Appointment](StructureDefinition-medme-pharmacy-appointment.md), [MedMe Pharmacy HealthcareService](StructureDefinition-medme-pharmacy-healthcareservice.md) and [MedMe Pharmacy Schedule](StructureDefinition-medme-pharmacy-schedule.md)
* Examples for this Profile: [MedMe Pharmacy - Downtown](Location-example-pharmacy-location.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/medme-pharmacy-location)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-medme-pharmacy-location.csv), [Excel](StructureDefinition-medme-pharmacy-location.xlsx), [Schematron](StructureDefinition-medme-pharmacy-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "medme-pharmacy-location",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-location",
  "version" : "0.9.21",
  "name" : "MedMePharmacyLocation",
  "title" : "MedMe Pharmacy Location",
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
  "description" : "A profile of Location for MedMe pharmacy services, based on Canadian Core.",
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
  "type" : "Location",
  "baseDefinition" : "http://fhir.infoway-inforoute.ca/cacore/StructureDefinition/location-ca-core",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location",
        "path" : "Location"
      },
      {
        "id" : "Location.id",
        "path" : "Location.id",
        "short" : "Unique identifier for the location",
        "min" : 1
      },
      {
        "id" : "Location.meta",
        "path" : "Location.meta",
        "short" : "Metadata including profile version",
        "min" : 1
      },
      {
        "id" : "Location.identifier",
        "path" : "Location.identifier",
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
        "short" : "MedMe location identifiers",
        "min" : 2,
        "max" : "2"
      },
      {
        "id" : "Location.identifier:locationId",
        "path" : "Location.identifier",
        "sliceName" : "locationId",
        "short" : "MedMe location ID",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Location.identifier:locationId.system",
        "path" : "Location.identifier.system",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/location/id"
      },
      {
        "id" : "Location.identifier:locationId.value",
        "path" : "Location.identifier.value",
        "min" : 1
      },
      {
        "id" : "Location.identifier:storeNumber",
        "path" : "Location.identifier",
        "sliceName" : "storeNumber",
        "short" : "MedMe store number",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Location.identifier:storeNumber.system",
        "path" : "Location.identifier.system",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/location/store-number"
      },
      {
        "id" : "Location.identifier:storeNumber.value",
        "path" : "Location.identifier.value",
        "min" : 1
      },
      {
        "id" : "Location.status",
        "path" : "Location.status",
        "short" : "Whether the location is active",
        "min" : 1
      },
      {
        "id" : "Location.name",
        "path" : "Location.name",
        "short" : "Name of the pharmacy location",
        "min" : 1
      },
      {
        "id" : "Location.type",
        "path" : "Location.type",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "description" : "Slice based on the type coding system",
          "rules" : "open"
        },
        "short" : "Type of pharmacy location",
        "min" : 1
      },
      {
        "id" : "Location.type:outpatientPharmacy",
        "path" : "Location.type",
        "sliceName" : "outpatientPharmacy",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Location.type:outpatientPharmacy.coding.system",
        "path" : "Location.type.coding.system",
        "min" : 1,
        "fixedUri" : "https://terminology.hl7.org/CodeSystem/v3-RoleCode"
      },
      {
        "id" : "Location.type:outpatientPharmacy.coding.code",
        "path" : "Location.type.coding.code",
        "patternCode" : "PHARM"
      },
      {
        "id" : "Location.type:outpatientPharmacy.coding.display",
        "path" : "Location.type.coding.display",
        "patternString" : "Pharmacy"
      },
      {
        "id" : "Location.telecom",
        "path" : "Location.telecom",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "description" : "Slice based on the telecom system",
          "rules" : "open"
        },
        "short" : "Contact information for the location",
        "min" : 1
      },
      {
        "id" : "Location.telecom:phone",
        "path" : "Location.telecom",
        "sliceName" : "phone",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Location.telecom:phone.system",
        "path" : "Location.telecom.system",
        "min" : 1,
        "patternCode" : "phone"
      },
      {
        "id" : "Location.telecom:phone.use",
        "path" : "Location.telecom.use",
        "patternCode" : "work"
      },
      {
        "id" : "Location.telecom:fax",
        "path" : "Location.telecom",
        "sliceName" : "fax",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Location.telecom:fax.system",
        "path" : "Location.telecom.system",
        "min" : 1,
        "patternCode" : "fax"
      },
      {
        "id" : "Location.telecom:fax.use",
        "path" : "Location.telecom.use",
        "patternCode" : "work"
      },
      {
        "id" : "Location.telecom:email",
        "path" : "Location.telecom",
        "sliceName" : "email",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Location.telecom:email.system",
        "path" : "Location.telecom.system",
        "min" : 1,
        "patternCode" : "email"
      },
      {
        "id" : "Location.telecom:email.use",
        "path" : "Location.telecom.use",
        "patternCode" : "work"
      },
      {
        "id" : "Location.address",
        "path" : "Location.address",
        "short" : "Physical address of the location",
        "min" : 1
      },
      {
        "id" : "Location.address.state",
        "path" : "Location.address.state",
        "min" : 1
      },
      {
        "id" : "Location.address.country",
        "path" : "Location.address.country",
        "min" : 1
      },
      {
        "id" : "Location.position",
        "path" : "Location.position",
        "short" : "GPS coordinates of the location",
        "min" : 1
      },
      {
        "id" : "Location.managingOrganization",
        "path" : "Location.managingOrganization",
        "short" : "Organization that manages this location",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-organization"
            ]
          }
        ]
      }
    ]
  }
}

```
