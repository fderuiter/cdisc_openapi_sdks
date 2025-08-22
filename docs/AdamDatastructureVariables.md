# OpenapiClient::AdamDatastructureVariables

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **_class** | **String** |  | [optional] |
| **_links** | [**AdamDatastructureVariablesLinks**](AdamDatastructureVariablesLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdamDatastructureVariables.new(
  ordinal: 1,
  name: ADSL,
  label: Subject-Level Analysis Dataset Structure,
  description: One record per subject.,
  _class: ADSL,
  _links: null
)
```

