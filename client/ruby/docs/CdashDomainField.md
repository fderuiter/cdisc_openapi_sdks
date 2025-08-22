# OpenapiClient::CdashDomainField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **definition** | **String** |  | [optional] |
| **domain_specific** | **String** |  | [optional] |
| **question_text** | **String** |  | [optional] |
| **prompt** | **String** |  | [optional] |
| **simple_datatype** | **String** |  | [optional] |
| **implementation_notes** | **String** |  | [optional] |
| **mapping_instructions** | **String** |  | [optional] |
| **_links** | [**CdashDomainFieldLinks**](CdashDomainFieldLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashDomainField.new(
  ordinal: 18,
  name: AGE,
  label: Age,
  definition: The age of the subject expressed in AGEU.,
  domain_specific: ,
  question_text: What [is/was] the subject&#39;s age?,
  prompt: Age,
  simple_datatype: Num,
  implementation_notes: If Age is collected, it should be collected as a number and, to be correctly interpreted, the age value should be associated to a variable for the Age Unit. It may be necessary to know when the age was collected as an age may need to be recalculated for analysis, such as deriving age at a reference start time (RFSTDTC for SDTM). BRTHDTC may not be available in all cases (due to subject privacy concerns). If AGE is collected, then it is recommended that the date of collection also be recorded, either separately or by association to the date of the visit.,
  mapping_instructions: Maps directly to the SDTM variable listed in the column with the heading &quot;SDTM Target&quot;.,
  _links: null
)
```

