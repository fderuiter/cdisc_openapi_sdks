# OpenapiClient::AdamVariableLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**AdamVariableRef**](AdamVariableRef.md) |  | [optional] |
| **codelist** | [**RootCtCodelistRef**](RootCtCodelistRef.md) |  | [optional] |
| **parent_product** | [**AdamProductRef**](AdamProductRef.md) |  | [optional] |
| **parent_datastructure** | [**AdamDatastructureRef**](AdamDatastructureRef.md) |  | [optional] |
| **parent_variable_set** | [**AdamVarsetRef**](AdamVarsetRef.md) |  | [optional] |
| **prior_version** | [**AdamVariableRef**](AdamVariableRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdamVariableLinks.new(
  _self: null,
  codelist: null,
  parent_product: null,
  parent_datastructure: null,
  parent_variable_set: null,
  prior_version: null
)
```

