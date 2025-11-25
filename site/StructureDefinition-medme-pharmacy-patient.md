# MedMe Pharmacy Patient - MedMe Pharmacy Services Implementation Guide v0.9.21

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedMe Pharmacy Patient**

## Resource Profile: MedMe Pharmacy Patient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-patient | *Version*:0.9.21 |
| Draft as of 2025-11-25 | *Computable Name*:MedMePharmacyPatient |

 
A profile of Patient for MedMe pharmacy services, based on Canadian Core patient profile, with essential fields for pharmacy patient management. 

**Usages:**

* Refer to this Profile: [MedMe Pharmacy Appointment](StructureDefinition-medme-pharmacy-appointment.md)
* Examples for this Profile: [Patient/66ccb0fd-199d-4321-95b0-4defae497b72](Patient-66ccb0fd-199d-4321-95b0-4defae497b72.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/medme.fhir.pharmacy.services|current/StructureDefinition/medme-pharmacy-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-medme-pharmacy-patient.csv), [Excel](StructureDefinition-medme-pharmacy-patient.xlsx), [Schematron](StructureDefinition-medme-pharmacy-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "medme-pharmacy-patient",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-patient",
  "version" : "0.9.21",
  "name" : "MedMePharmacyPatient",
  "title" : "MedMe Pharmacy Patient",
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
  "description" : "A profile of Patient for MedMe pharmacy services, based on Canadian Core patient profile, with essential fields for pharmacy patient management.",
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
      "identity" : "pCHDCF-CACDI",
      "name" : "Pan-Canadian Health Data Content Framework - CACDI"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://fhir.infoway-inforoute.ca/cacore/StructureDefinition/patient-ca-core",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.id",
        "path" : "Patient.id",
        "short" : "Unique identifier for the patient"
      },
      {
        "id" : "Patient.meta",
        "path" : "Patient.meta",
        "short" : "Metadata including profile version",
        "min" : 1
      },
      {
        "id" : "Patient.meta.source",
        "path" : "Patient.meta.source",
        "short" : "URI identifying the source system of the resource",
        "min" : 1
      },
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "min" : 1
      },
      {
        "id" : "Patient.extension:locationId",
        "path" : "Patient.extension",
        "sliceName" : "locationId",
        "short" : "Reference to the location where the patient is registered",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/location-id"
            ]
          }
        ]
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "short" : "Patient identifiers including MedMe ID and optional JHN, PCID",
        "min" : 1,
        "constraint" : [
          {
            "key" : "medme-pcid-system-check",
            "severity" : "error",
            "human" : "If PCID system is present, type code must be PT",
            "expression" : "where(system = 'https://fhir.medmehealth.com/pharmacy-services/systems/entity/patient/pc-id').all(type.coding.where(system='https://terminology.hl7.org/CodeSystem/v2-0203' and code='PT').exists())",
            "source" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-patient"
          },
          {
            "key" : "medme-pcid-count",
            "severity" : "error",
            "human" : "Maximum one PCID identifier allowed",
            "expression" : "where(system = 'https://fhir.medmehealth.com/pharmacy-services/systems/entity/patient/pc-id').count() <= 1",
            "source" : "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-patient"
          }
        ]
      },
      {
        "id" : "Patient.identifier:patientId",
        "path" : "Patient.identifier",
        "sliceName" : "patientId",
        "short" : "MedMe patient identifier",
        "min" : 1,
        "max" : "1",
        "constraint" : [
          {
            "key" : "medme-identifier-required",
            "severity" : "error",
            "human" : "At least one MedMe identifier is required",
            "expression" : "system.matches('https://fhir\\.medmehealth\\.com/pharmacy-services/systems/entity/(organization/[^/]+/)?patient/id')",
            "xpath" : "@value|f:*|h:div",
            "source" : "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ]
      },
      {
        "id" : "Patient.identifier:patientId.type",
        "path" : "Patient.identifier.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://terminology.hl7.org/CodeSystem/v2-0203",
              "code" : "MR"
            }
          ]
        }
      },
      {
        "id" : "Patient.identifier:jhn",
        "path" : "Patient.identifier",
        "sliceName" : "jhn",
        "short" : "Optional identifier representing Patient JHN (Quebec)",
        "min" : 0,
        "max" : "1",
        "constraint" : [
          {
            "key" : "jhn-extension-format",
            "severity" : "error",
            "human" : "Must provide JHN version code if extension is used",
            "expression" : "extension.where(url = 'https://build.fhir.org/ig/HL7-Canada/ca-baseline/StructureDefinition-ext-identifierversion.html').all(valueString.exists() and valueString.length() > 0)",
            "xpath" : "@value|f:*|h:div",
            "source" : "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ]
      },
      {
        "id" : "Patient.identifier:jhn.extension",
        "path" : "Patient.identifier.extension",
        "max" : "1"
      },
      {
        "id" : "Patient.identifier:jhn.type",
        "path" : "Patient.identifier.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://terminology.hl7.org/CodeSystem/v2-0203",
              "code" : "JHN"
            }
          ]
        }
      },
      {
        "id" : "Patient.active",
        "path" : "Patient.active",
        "short" : "Whether the patient is active",
        "min" : 1
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "short" : "Patient's name"
      },
      {
        "id" : "Patient.name.family",
        "path" : "Patient.name.family",
        "short" : "Family name",
        "min" : 1
      },
      {
        "id" : "Patient.name.given",
        "path" : "Patient.name.given",
        "short" : "Given names",
        "min" : 1
      },
      {
        "id" : "Patient.telecom.system",
        "path" : "Patient.telecom.system",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.org/fhir/ValueSet/contact-point-system"
        }
      },
      {
        "id" : "Patient.telecom.use",
        "path" : "Patient.telecom.use",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.org/fhir/ValueSet/contact-point-use"
        }
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "short" : "Administrative gender",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.org/fhir/ValueSet/administrative-gender"
        }
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "short" : "Addresses for the individual"
      },
      {
        "id" : "Patient.address.state",
        "path" : "Patient.address.state",
        "short" : "Sub-unit of country (abbreviations ok)"
      },
      {
        "id" : "Patient.address.country",
        "path" : "Patient.address.country",
        "short" : "Country (e.g. can be ISO 3166 2 or 3 letter code)"
      },
      {
        "id" : "Patient.contact.relationship.coding",
        "path" : "Patient.contact.relationship.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.contact.relationship.coding.system",
        "path" : "Patient.contact.relationship.coding.system",
        "fixedUri" : "https://hl7.org/fhir/ValueSet/patient-contactrelationship"
      },
      {
        "id" : "Patient.contact.relationship.coding.code",
        "path" : "Patient.contact.relationship.coding.code",
        "min" : 1
      },
      {
        "id" : "Patient.contact.name.family",
        "path" : "Patient.contact.name.family",
        "short" : "Family name"
      },
      {
        "id" : "Patient.contact.name.given",
        "path" : "Patient.contact.name.given",
        "short" : "Given names"
      },
      {
        "id" : "Patient.contact.telecom",
        "path" : "Patient.contact.telecom",
        "short" : "Contact details"
      },
      {
        "id" : "Patient.contact.telecom.system",
        "path" : "Patient.contact.telecom.system",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.org/fhir/ValueSet/contact-point-system"
        }
      },
      {
        "id" : "Patient.contact.telecom.value",
        "path" : "Patient.contact.telecom.value",
        "min" : 1
      },
      {
        "id" : "Patient.communication",
        "path" : "Patient.communication",
        "short" : "Languages which may be used to communicate with the patient"
      },
      {
        "id" : "Patient.communication.language.coding",
        "path" : "Patient.communication.language.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.communication.language.coding.system",
        "path" : "Patient.communication.language.coding.system",
        "fixedUri" : "https://terminology.hl7.org/CodeSystem/language"
      },
      {
        "id" : "Patient.communication.language.coding.code",
        "path" : "Patient.communication.language.coding.code",
        "min" : 1
      },
      {
        "id" : "Patient.managingOrganization",
        "path" : "Patient.managingOrganization",
        "short" : "Organization that manages the care of this patient",
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
