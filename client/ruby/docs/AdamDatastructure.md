# OpenapiClient::AdamDatastructure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **_class** | **String** |  | [optional] |
| **_links** | [**AdamDatastructureLinks**](AdamDatastructureLinks.md) |  | [optional] |
| **analysis_variable_sets** | [**Array&lt;AdamVarset&gt;**](AdamVarset.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdamDatastructure.new(
  ordinal: 1,
  name: ADSL,
  label: Subject-Level Analysis Dataset Structure,
  description: One record per subject.,
  _class: ADSL,
  _links: null,
  analysis_variable_sets: null
)
```

