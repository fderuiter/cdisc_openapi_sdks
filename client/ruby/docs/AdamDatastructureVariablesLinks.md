# OpenapiClient::AdamDatastructureVariablesLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**AdamDatastructureVariablesRef**](AdamDatastructureVariablesRef.md) |  | [optional] |
| **parent_product** | [**AdamProductRef**](AdamProductRef.md) |  | [optional] |
| **prior_version** | [**AdamDatastructureVariablesRef**](AdamDatastructureVariablesRef.md) |  | [optional] |
| **analysis_variables** | [**Array&lt;AdamVariableRefElement&gt;**](AdamVariableRefElement.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdamDatastructureVariablesLinks.new(
  _self: null,
  parent_product: null,
  prior_version: null,
  analysis_variables: null
)
```

