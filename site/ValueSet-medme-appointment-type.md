# MedMe Appointment Type - MedMe Pharmacy Services Implementation Guide v0.9.22

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedMe Appointment Type**

## ValueSet: MedMe Appointment Type 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/ValueSet/medme-appointment-type | *Version*:0.9.22 |
| Draft as of 2025-11-25 | *Computable Name*:MedMeAppointmentType |

 
Supported appointment types for MedMe pharmacy services (WALKIN and ROUTINE only) 

 **References** 

* [MedMe Pharmacy Appointment](StructureDefinition-medme-pharmacy-appointment.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "medme-appointment-type",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/ValueSet/medme-appointment-type",
  "version" : "0.9.22",
  "name" : "MedMeAppointmentType",
  "title" : "MedMe Appointment Type",
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
  "description" : "Supported appointment types for MedMe pharmacy services (WALKIN and ROUTINE only)",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://terminology.hl7.org/CodeSystem/v2-0276",
        "concept" : [
          {
            "code" : "WALKIN",
            "display" : "Walk-in"
          },
          {
            "code" : "ROUTINE",
            "display" : "Routine"
          }
        ]
      }
    ]
  }
}

```
