# Jane Doe - Patient with MedMe ID and JHN - MedMe Pharmacy Services Implementation Guide v0.9.25

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Jane Doe - Patient with MedMe ID and JHN**

## Example Patient: Jane Doe - Patient with MedMe ID and JHN

Information Source: [https://fhir.medmehealth.com](https://simplifier.net/resolve?scope=ca.infoway.io.core@1.0.1-dft-preballot&canonical=https://fhir.medmehealth.com)

Profile: [MedMe Pharmacy Patient](StructureDefinition-medme-pharmacy-patient.md)

Jane Doe Female, DoB: 1990-01-13 ( Medical record number)

-------

| | |
| :--- | :--- |
| Active: | true |
| Other Ids: | * Jurisdictional health number/9998887777
* Patient external identifier/6e03e880-bbf1-4df4-9e35-e71ee5d74e86
 |
| Contact Detail | * ph: 7780009999(Mobile)
* ph: 7780009998(Home)
* [jane.doe@example.com](mailto:jane.doe@example.com)
* 123 Main St Montreal CA-QC T0C 2C0 CAN 
 |
| Language: | English (Canada)(preferred) |
| Emergency Contact: | * Mommy Doe 
* ph: 1231231234
 |
| Links: | * Managing Organization: [Organization MedMe Pharmacy](Organization-example-pharmacy-organization.md)
 |
| [Location ID](StructureDefinition-location-id.md) | Location/5ce61e53-6c0e-47c0-975c-6e76dcdfaaf5 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "66ccb0fd-199d-4321-95b0-4defae497b72",
  "meta" : {
    "source" : "https://fhir.medmehealth.com",
    "profile" : [
      "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-patient"
    ]
  },
  "extension" : [
    {
      "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/location-id",
      "valueString" : "Location/5ce61e53-6c0e-47c0-975c-6e76dcdfaaf5"
    }
  ],
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MR"
          }
        ]
      },
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/organization/org-12345/patient/id",
      "value" : "66ccb0fd-199d-4321-95b0-4defae497b72"
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-identifierversion",
          "valueString" : "BB"
        }
      ],
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "JHN"
          }
        ]
      },
      "system" : "https://fhir.infoway-inforoute.ca/NamingSystem/ca-qc-patient-healthcare-id",
      "value" : "9998887777"
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PT"
          }
        ]
      },
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/patient/pc-id",
      "value" : "6e03e880-bbf1-4df4-9e35-e71ee5d74e86"
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Doe",
      "given" : ["Jane"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "7780009999",
      "use" : "mobile"
    },
    {
      "system" : "phone",
      "value" : "7780009998",
      "use" : "home"
    },
    {
      "system" : "email",
      "value" : "jane.doe@example.com"
    }
  ],
  "gender" : "female",
  "birthDate" : "1990-01-13",
  "address" : [
    {
      "line" : ["123 Main St"],
      "city" : "Montreal",
      "state" : "CA-QC",
      "postalCode" : "T0C 2C0",
      "country" : "CAN"
    }
  ],
  "contact" : [
    {
      "relationship" : [
        {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/ValueSet/patient-contactrelationship",
              "code" : "EP",
              "display" : "Emergency Contact"
            }
          ]
        }
      ],
      "name" : {
        "family" : "Doe",
        "given" : ["Mommy"]
      },
      "telecom" : [
        {
          "system" : "phone",
          "value" : "1231231234"
        }
      ]
    }
  ],
  "communication" : [
    {
      "language" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/language",
            "code" : "en-CA",
            "display" : "English (Canada)"
          }
        ]
      },
      "preferred" : true
    }
  ],
  "managingOrganization" : {
    "reference" : "Organization/example-pharmacy-organization"
  }
}

```
