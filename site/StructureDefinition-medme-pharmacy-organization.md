# MedMe Pharmacy Organization - MedMe Pharmacy Services Implementation Guide v0.9.22

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedMe Pharmacy Organization**

## Resource Profile: MedMe Pharmacy Organization 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-organization | *Version*:0.9.22 |
| Draft as of 2025-11-25 | *Computable Name*:MedMePharmacyOrganization |

 
A profile of Organization for MedMe pharmacy services, based on Canadian Core. 

**Usages:**

* Refer to this Profile: [MedMe Pharmacy HealthcareService](StructureDefinition-medme-pharmacy-healthcareservice.md), [MedMe Pharmacy Location](StructureDefinition-medme-pharmacy-location.md) and [MedMe Pharmacy Patient](StructureDefinition-medme-pharmacy-patient.md)
* Examples for this Profile: [MedMe Pharmacy](Organization-example-pharmacy-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/medme-pharmacy-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-medme-pharmacy-organization.csv), [Excel](StructureDefinition-medme-pharmacy-organization.xlsx), [Schematron](StructureDefinition-medme-pharmacy-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "medme-pharmacy-organization",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-organization",
  "version" : "0.9.22",
  "name" : "MedMePharmacyOrganization",
  "title" : "MedMe Pharmacy Organization",
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
  "description" : "A profile of Organization for MedMe pharmacy services, based on Canadian Core.",
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
      "identity" : "pCHDCF",
      "name" : "Pan-Canadian Health Data Content Framework"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://fhir.infoway-inforoute.ca/cacore/StructureDefinition/organization-ca-core",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.id",
        "path" : "Organization.id",
        "short" : "Unique identifier for the organization",
        "min" : 1
      },
      {
        "id" : "Organization.meta",
        "path" : "Organization.meta",
        "short" : "Metadata including profile version",
        "min" : 1
      },
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
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
        "short" : "MedMe organization identifiers",
        "min" : 1,
        "max" : "2"
      },
      {
        "id" : "Organization.identifier:organizationId",
        "path" : "Organization.identifier",
        "sliceName" : "organizationId",
        "short" : "MedMe pharmacy ID",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Organization.identifier:organizationId.system",
        "path" : "Organization.identifier.system",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/organization/id"
      },
      {
        "id" : "Organization.identifier:organizationCode",
        "path" : "Organization.identifier",
        "sliceName" : "organizationCode",
        "short" : "Code of the MedMe tenant the pharmacy organization is part of",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Organization.identifier:organizationCode.system",
        "path" : "Organization.identifier.system",
        "fixedUri" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/organization/enterprise-code"
      },
      {
        "id" : "Organization.active",
        "path" : "Organization.active",
        "short" : "Whether the organization is active",
        "min" : 1
      },
      {
        "id" : "Organization.type",
        "path" : "Organization.type",
        "short" : "Type of healthcare organization",
        "min" : 1
      },
      {
        "id" : "Organization.type.coding.system",
        "path" : "Organization.type.coding.system",
        "fixedUri" : "https://terminology.hl7.org/CodeSystem/organization-type"
      },
      {
        "id" : "Organization.type.coding.code",
        "path" : "Organization.type.coding.code",
        "patternCode" : "prov"
      },
      {
        "id" : "Organization.type.coding.display",
        "path" : "Organization.type.coding.display",
        "patternString" : "Healthcare Provider"
      },
      {
        "id" : "Organization.name",
        "path" : "Organization.name",
        "short" : "Name of the pharmacy organization"
      }
    ]
  }
}

```
