# OpenapiClient::SendigDatasetVariables

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **dataset_structure** | **String** |  | [optional] |
| **_links** | [**SendigDatasetVariablesLinks**](SendigDatasetVariablesLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SendigDatasetVariables.new(
  ordinal: 20,
  name: VS,
  label: Vital Signs,
  description: A findings domain that contains measurements including but not limited to blood pressure, temperature, respiration, body surface area, body mass index, height and weight. (Source: CDISC Controlled Terminology, SDOMAIN, C49622, 2018-06-29),
  dataset_structure: One record per measurement per observation time per subject,
  _links: null
)
```

