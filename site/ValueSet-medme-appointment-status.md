# MedMe Appointment Status - MedMe Pharmacy Services Implementation Guide v0.9.21

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedMe Appointment Status**

## ValueSet: MedMe Appointment Status 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.medmehealth.com/pharmacy-services/ValueSet/medme-appointment-status | *Version*:0.9.21 |
| Draft as of 2025-11-25 | *Computable Name*:MedMeAppointmentStatus |

 
Supported appointment statuses for MedMe pharmacy services 

 **References** 

* [MedMe Pharmacy Appointment](StructureDefinition-medme-pharmacy-appointment.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "medme-appointment-status",
  "url" : "https://fhir.medmehealth.com/pharmacy-services/ValueSet/medme-appointment-status",
  "version" : "0.9.21",
  "name" : "MedMeAppointmentStatus",
  "title" : "MedMe Appointment Status",
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
  "description" : "Supported appointment statuses for MedMe pharmacy services",
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
        "system" : "http://hl7.org/fhir/appointmentstatus",
        "concept" : [
          {
            "code" : "pending",
            "display" : "Pending"
          },
          {
            "code" : "booked",
            "display" : "Booked"
          },
          {
            "code" : "cancelled",
            "display" : "Cancelled"
          },
          {
            "code" : "fulfilled",
            "display" : "Fulfilled"
          },
          {
            "code" : "entered-in-error",
            "display" : "Entered in Error"
          }
        ]
      }
    ]
  }
}

```
