<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile HealthcareServiceCACore
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:HealthcareService</sch:title>
    <sch:rule context="f:HealthcareService">
      <sch:assert test="count(f:id) &gt;= 1">id: minimum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &gt;= 1">meta: minimum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-public']) &gt;= 1">extension with URL = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-public': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-public']) &lt;= 1">extension with URL = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-public': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-waitlisted']) &gt;= 1">extension with URL = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-waitlisted': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-waitlisted']) &lt;= 1">extension with URL = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-waitlisted': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-rescheduling-allowed']) &gt;= 1">extension with URL = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-rescheduling-allowed': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-rescheduling-allowed']) &lt;= 1">extension with URL = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-rescheduling-allowed': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-cancellation-allowed']) &gt;= 1">extension with URL = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-cancellation-allowed': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-cancellation-allowed']) &lt;= 1">extension with URL = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/is-cancellation-allowed': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/default-duration']) &gt;= 1">extension with URL = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/default-duration': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/default-duration']) &lt;= 1">extension with URL = 'https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/default-duration': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:active) &gt;= 1">active: minimum cardinality of 'active' is 1</sch:assert>
      <sch:assert test="count(f:providedBy) &gt;= 1">providedBy: minimum cardinality of 'providedBy' is 1</sch:assert>
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:location) &gt;= 1">location: minimum cardinality of 'location' is 1</sch:assert>
      <sch:assert test="count(f:location) &lt;= 1">location: maximum cardinality of 'location' is 1</sch:assert>
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:characteristic) &gt;= 1">characteristic: minimum cardinality of 'characteristic' is 1</sch:assert>
      <sch:assert test="count(f:appointmentRequired) &gt;= 1">appointmentRequired: minimum cardinality of 'appointmentRequired' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:HealthcareService/f:category</sch:title>
    <sch:rule context="f:HealthcareService/f:category">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:HealthcareService/f:category/f:coding</sch:title>
    <sch:rule context="f:HealthcareService/f:category/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:HealthcareService/f:characteristic</sch:title>
    <sch:rule context="f:HealthcareService/f:characteristic">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:HealthcareService/f:characteristic/f:coding</sch:title>
    <sch:rule context="f:HealthcareService/f:characteristic/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
