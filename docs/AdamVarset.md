# OpenapiClient::AdamVarset

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **_links** | [**AdamVarsetLinks**](AdamVarsetLinks.md) |  | [optional] |
| **analysis_variables** | [**Array&lt;AdamVariable&gt;**](AdamVariable.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdamVarset.new(
  ordinal: 1,
  name: ADSL,
  label: Subject-Level Analysis Dataset Structure,
  description: One record per subject.,
  _links: null,
  analysis_variables: null
)
```

