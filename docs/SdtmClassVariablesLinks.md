# OpenapiClient::SdtmClassVariablesLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmClassVariablesRef**](SdtmClassVariablesRef.md) |  | [optional] |
| **parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] |
| **prior_version** | [**SdtmClassVariablesRef**](SdtmClassVariablesRef.md) |  | [optional] |
| **class_variables** | [**Array&lt;SdtmClassVariableRefElement&gt;**](SdtmClassVariableRefElement.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmClassVariablesLinks.new(
  _self: null,
  parent_product: null,
  prior_version: null,
  class_variables: null
)
```

