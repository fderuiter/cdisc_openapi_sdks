# OpenapiClient::CdashigDomainField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **definition** | **String** |  | [optional] |
| **question_text** | **String** |  | [optional] |
| **prompt** | **String** |  | [optional] |
| **completion_instructions** | **String** |  | [optional] |
| **implementation_notes** | **String** |  | [optional] |
| **simple_datatype** | **String** |  | [optional] |
| **mapping_instructions** | **String** |  | [optional] |
| **core** | **String** |  | [optional] |
| **_links** | [**CdashigDomainFieldLinks**](CdashigDomainFieldLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashigDomainField.new(
  ordinal: 7,
  name: VSDAT,
  label: Vital Signs Date,
  definition: The date of the vital signs measurement, represented in an unambiguous date format (e.g., DD-MON-YYYY).,
  question_text: What was the date of the vital signs measurement?,
  prompt: Date,
  completion_instructions: Record date of measurements using this format (DD-MON-YYYY).,
  implementation_notes: The date of measurement can be determined from a collected date of visit (VISDAT) and in such cases a separate measurement date field is not required.,
  simple_datatype: Char,
  mapping_instructions: This does not map directly to an SDTMIG variable. For the SDTM submission dataset, concatenate all collected CDASH DATE and TIME components and populate the SDTMIG variable VSDTC in ISO 8601 format.,
  core: R/C,
  _links: null
)
```

