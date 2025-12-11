# Artifacts Summary - MedMe Pharmacy Services Implementation Guide v0.9.25

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MedMe Pharmacy Appointment](StructureDefinition-medme-pharmacy-appointment.md) | A profile of Appointment for MedMe pharmacy services, based on FHIR R4, with essential fields for pharmacy appointment management. |
| [MedMe Pharmacy HealthcareService](StructureDefinition-medme-pharmacy-healthcareservice.md) | A profile of HealthcareService for MedMe pharmacy services, based on Canadian Core, with additional extensions for pharmacy-specific needs. |
| [MedMe Pharmacy Location](StructureDefinition-medme-pharmacy-location.md) | A profile of Location for MedMe pharmacy services, based on Canadian Core. |
| [MedMe Pharmacy Organization](StructureDefinition-medme-pharmacy-organization.md) | A profile of Organization for MedMe pharmacy services, based on Canadian Core. |
| [MedMe Pharmacy Patient](StructureDefinition-medme-pharmacy-patient.md) | A profile of Patient for MedMe pharmacy services, based on Canadian Core patient profile, with essential fields for pharmacy patient management. |
| [MedMe Pharmacy Schedule](StructureDefinition-medme-pharmacy-schedule.md) | A profile of Schedule for MedMe pharmacy services. |
| [MedMe Pharmacy Slot](StructureDefinition-medme-pharmacy-slot.md) | A profile of Slot for MedMe pharmacy services. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Appointment Mode](StructureDefinition-appointment-mode.md) | The mode of service delivery for the appointment (e.g., in-person, virtual, phone). |
| [Artifact Contact](StructureDefinition-artifact-contact.md) | Contact details for communications related to this appointment (may be different from the patient). |
| [Communication Language](StructureDefinition-communication-language.md) | Preferred language for communications related to this appointment. |
| [Default Duration](StructureDefinition-default-duration.md) | The default duration in minutes for appointments of this healthcare service type. |
| [Group Size](StructureDefinition-group-size.md) | The maximum number of people that can be booked in this slot. |
| [Invalidated At](StructureDefinition-invalidated-at.md) | The timestamp when this slot was/will be invalidated. |
| [Is Cancellation Allowed](StructureDefinition-is-cancellation-allowed.md) | Indicates whether patients can cancel their appointments for this healthcare service. |
| [Is Public](StructureDefinition-is-public.md) | Indicates whether the healthcare service is available to the general public or restricted to specific populations. |
| [Is Rescheduling Allowed](StructureDefinition-is-rescheduling-allowed.md) | Indicates whether patients can reschedule their appointments for this healthcare service. |
| [Is Waitlisted](StructureDefinition-is-waitlisted.md) | Indicates whether the healthcare service currently has a waiting list for new patients or appointments. |
| [Location ID](StructureDefinition-location-id.md) | Reference to the location where the patient is registered or primarily receives care. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MedMe Appointment Type](ValueSet-medme-appointment-type.md) | Supported appointment types for MedMe pharmacy services (WALKIN and ROUTINE only) |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example Pharmacy Appointment](Appointment-test-appointment-id.md) | An example pharmacy appointment for a routine immunization service |
| [Example Pharmacy Immunization Service](HealthcareService-pharmacy-immunization-service.md) | An example of a pharmacy immunization service with all required extensions |
| [Example Pharmacy Location](Location-example-pharmacy-location.md) | An example pharmacy location for MedMe services |
| [Example Pharmacy Organization](Organization-example-pharmacy-organization.md) | An example pharmacy organization for MedMe services |
| [Example Pharmacy Schedule](Schedule-example-pharmacy-schedule.md) | An example pharmacy schedule |
| [Example Pharmacy Slot](Slot-slot-123.md) | An example pharmacy appointment slot |
| [Jane Doe - Patient with MedMe ID and JHN](Patient-66ccb0fd-199d-4321-95b0-4defae497b72.md) | Example patient with MedMe identifier, JHN, and complete contact information |

