# Example Pharmacy Organization - MedMe Pharmacy Services Implementation Guide v0.9.25

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Pharmacy Organization**

## Example Organization: Example Pharmacy Organization

Profile: [MedMe Pharmacy Organization](StructureDefinition-medme-pharmacy-organization.md)

**identifier**: `https://fhir.medmehealth.com/pharmacy-services/systems/entity/organization/id`/org-12345, `https://fhir.medmehealth.com/pharmacy-services/systems/entity/organization/enterprise-code`/MEDME-PHARM

**active**: true

**type**: Healthcare Provider

**name**: MedMe Pharmacy

**telecom**: [+1-555-123-4567](tel:+1-555-123-4567), [contact@medmepharmacy.com](mailto:contact@medmepharmacy.com)

**address**: 123 Main Street Toronto ON M5V 3A8 CA 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "example-pharmacy-organization",
  "meta" : {
    "profile" : [
      "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-organization"
    ]
  },
  "identifier" : [
    {
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/organization/id",
      "value" : "org-12345"
    },
    {
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/organization/enterprise-code",
      "value" : "MEDME-PHARM"
    }
  ],
  "active" : true,
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }
      ]
    }
  ],
  "name" : "MedMe Pharmacy",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+1-555-123-4567"
    },
    {
      "system" : "email",
      "value" : "contact@medmepharmacy.com"
    }
  ],
  "address" : [
    {
      "line" : ["123 Main Street"],
      "city" : "Toronto",
      "state" : "ON",
      "postalCode" : "M5V 3A8",
      "country" : "CA"
    }
  ]
}

```
