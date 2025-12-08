# Multilingual Support - MedMe Pharmacy Services Implementation Guide v0.9.24

* [**Table of Contents**](toc.md)
* **Multilingual Support**

## Multilingual Support

# Multilingual Support Guide

## Overview

This guide explains how to implement multilingual support in MedMe Pharmacy Services using FHIR primitive extensions. While the profiles don't enforce these extensions, they are recommended for better user experience in bilingual Canadian environments.

## How Primitive Extensions Work

FHIR allows you to add extensions to primitive types (like `string`, `markdown`) by prefixing the field name with an underscore (`_`). This creates a parallel structure that can hold extensions.

### Basic Structure

```
{
  "fieldName": "English content",
  "_fieldName": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          {
            "url": "lang",
            "valueCode": "fr"
          },
          {
            "url": "content",
            "valueString": "French content"
          }
        ]
      }
    ]
  }
}

```

## Supported Fields

### HealthcareService Resource

The following fields support multilingual content:

| | | | |
| :--- | :--- | :--- | :--- |
| `name` | string | Service name | `_name` |
| `comment` | string | Service description | `_comment` |
| `extraDetails` | markdown | Additional details | `_extraDetails` |

### Example: Complete HealthcareService with Translations

```
{
  "resourceType": "HealthcareService",
  "meta": {
    "profile": [
      "https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-healthcareservice"
    ]
  },
  "identifier": [
    {
      "system": "https://fhir.medmehealth.com/pharmacy-services/systems/entity/healthcare-service/id",
      "value": "vaccination-service-001"
    }
  ],
  "name": "COVID-19 Vaccination Service",
  "_name": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          {
            "url": "lang",
            "valueCode": "fr"
          },
          {
            "url": "content",
            "valueString": "Service de vaccination COVID-19"
          }
        ]
      }
    ]
  },
  "comment": "Professional vaccination service for COVID-19",
  "_comment": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          {
            "url": "lang",
            "valueCode": "fr"
          },
          {
            "url": "content",
            "valueString": "Service professionnel de vaccination contre la COVID-19"
          }
        ]
      }
    ]
  },
  "extraDetails": "Please bring your health card and wear a mask.",
  "_extraDetails": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          {
            "url": "lang",
            "valueCode": "fr"
          },
          {
            "url": "content",
            "valueMarkdown": "Veuillez apporter votre carte d'assurance-maladie et porter un masque."
          }
        ]
      }
    ]
  }
}

```

## Implementation Guidelines

### 1. Always Provide Primary Language Content

The main field should always contain content in the primary language (English):

```
{
  "name": "English content here",
  "_name": { /* French translation */ }
}

```

### 2. Use Correct Content Types

* **String fields** (`name`, `comment`): Use `valueString`
* **Markdown fields** (`extraDetails`): Use `valueMarkdown`

### 3. Language Codes

* **English**: Use `en` (though this is usually the primary content)
* **French**: Use `fr`

### 4. Translation Extension Structure

Always use the standard HL7 translation extension:

```
{
  "url": "http://hl7.org/fhir/StructureDefinition/translation",
  "extension": [
    {
      "url": "lang",
      "valueCode": "fr"
    },
    {
      "url": "content",
      "valueString": "French content"
    }
  ]
}

```

## Best Practices

### 1. Consistency

* Always provide translations for all user-facing text
* Use consistent terminology across translations
* Maintain the same level of detail in both languages

### 2. Validation

* Validate that translations are complete and accurate
* Test with native French speakers when possible
* Ensure markdown formatting works in both languages

### 3. Fallback Strategy

* Applications should fall back to English if translations are missing
* Consider using a language preference setting
* Display both languages when space permits

### 4. Performance

* Primitive extensions don't significantly impact performance
* Consider caching translations for frequently accessed content
* Use appropriate HTTP headers for language negotiation

## Testing

When testing multilingual support:

1. **Create test resources**with both English and French content
1. **Validate**that both languages display correctly
1. **Test fallback**behavior when translations are missing
1. **Verify**that markdown rendering works in both languages
1. **Check**that language switching works properly in your UI

## Troubleshooting

### Common Issues

1. **Translation not displaying**: Check that the extension structure is correct
1. **Markdown not rendering**: Ensure you're using`valueMarkdown`for markdown fields
1. **Language code issues**: Verify you're using`fr`for French
1. **Missing translations**: Implement fallback to English content

### Validation

Use FHIR validation tools to ensure your resources conform to the profiles:

```
# Example validation command
fhir validate --profile https://fhir.medmehealth.com/pharmacy-services/StructureDefinition/medme-pharmacy-healthcareservice resource.json

```

## References

* [FHIR Primitive Extensions](https://www.hl7.org/fhir/extensibility.html#primitive)
* [HL7 Translation Extension](https://www.hl7.org/fhir/extension-translation.html)
* [Canadian Core FHIR Profiles](https://fhir.infoway-inforoute.ca/cacore)

