# Example Pharmacy Schedule - MedMe Pharmacy Services Implementation Guide v0.9.25

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Pharmacy Schedule**

## Example Schedule: Example Pharmacy Schedule

Profile: [MedMe Pharmacy Schedule](StructureDefinition-medme-pharmacy-schedule.md)

**identifier**: `https://fhir.medmehealth.com/pharmacy-services/systems/entity/schedule/id`/12345, `https://fhir.medmehealth.com/pharmacy-services/systems/entity/schedule/name`/Test Calendar

**active**: true

**actor**: 

* [HealthcareService COVID-19 and Flu Vaccination Service](HealthcareService-pharmacy-immunization-service.md)
* [Location MedMe Pharmacy - Downtown](Location-example-pharmacy-location.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "example-pharmacy-schedule",
  "meta" : {
    "profile" : [
      "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-schedule"
    ]
  },
  "identifier" : [
    {
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/schedule/id",
      "value" : "12345"
    },
    {
      "system" : "https://fhir.medmehealth.com/pharmacy-services/systems/entity/schedule/name",
      "value" : "Test Calendar"
    }
  ],
  "active" : true,
  "actor" : [
    {
      "reference" : "HealthcareService/pharmacy-immunization-service"
    },
    {
      "reference" : "Location/example-pharmacy-location"
    }
  ]
}

```
