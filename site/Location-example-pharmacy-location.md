# Example Pharmacy Location - MedMe Pharmacy Services Implementation Guide v0.9.21

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Pharmacy Location**

## Example Location: Example Pharmacy Location

Profile: [MedMe Pharmacy Location](StructureDefinition-medme-pharmacy-location.md)

**identifier**: `https://fhir.medmehealth.com/pharmacy-services/systems/entity/location/id`/loc-67890, `https://fhir.medmehealth.com/pharmacy-services/systems/entity/location/store-number`/STORE-001

**status**: Active

**name**: MedMe Pharmacy - Downtown

**description**: Main downtown location for MedMe pharmacy services

**mode**: Instance

**type**: Pharmacy

**telecom**: [+1-555-987-6543](tel:+1-555-987-6543), fax: +1-555-987-6544(Work), [downtown@medme.com](mailto:downtown@medme.com)

**address**: 456 Queen Street West, Toronto, ON M5V 2B7

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | -79.3832 | 43.6532 |

**managingOrganization**: [Organization MedMe Pharmacy](Organization-example-pharmacy-organization.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "example-pharmacy-location",
  "meta" : {
    "profile" : [
      "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-location"
    ]
  },
  "identifier" : [
    {
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/location/id",
      "value" : "loc-67890"
    },
    {
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/location/store-number",
      "value" : "STORE-001"
    }
  ],
  "status" : "active",
  "name" : "MedMe Pharmacy - Downtown",
  "description" : "Main downtown location for MedMe pharmacy services",
  "mode" : "instance",
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "PHARM",
          "display" : "Pharmacy"
        }
      ]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+1-555-987-6543",
      "use" : "work"
    },
    {
      "system" : "fax",
      "value" : "+1-555-987-6544",
      "use" : "work"
    },
    {
      "system" : "email",
      "value" : "downtown@medme.com",
      "use" : "work"
    }
  ],
  "address" : {
    "text" : "456 Queen Street West, Toronto, ON M5V 2B7",
    "line" : ["456 Queen Street West"],
    "city" : "Toronto",
    "state" : "ON",
    "postalCode" : "M5V 2B7",
    "country" : "CA"
  },
  "position" : {
    "longitude" : -79.3832,
    "latitude" : 43.6532
  },
  "managingOrganization" : {
    "reference" : "Organization/example-pharmacy-organization"
  }
}

```
