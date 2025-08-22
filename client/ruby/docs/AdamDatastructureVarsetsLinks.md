# OpenapiClient::AdamDatastructureVarsetsLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**AdamDatastructureVarsetsRef**](AdamDatastructureVarsetsRef.md) |  | [optional] |
| **parent_product** | [**AdamProductRef**](AdamProductRef.md) |  | [optional] |
| **prior_version** | [**AdamDatastructureVarsetsRef**](AdamDatastructureVarsetsRef.md) |  | [optional] |
| **analysis_variable_sets** | [**Array&lt;AdamVarsetRefElement&gt;**](AdamVarsetRefElement.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdamDatastructureVarsetsLinks.new(
  _self: null,
  parent_product: null,
  prior_version: null,
  analysis_variable_sets: null
)
```

