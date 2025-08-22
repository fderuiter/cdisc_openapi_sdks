# OpenapiClient::SdtmClassVariableLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] |
| **parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] |
| **parent_class** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] |
| **qualifies_variables** | [**Array&lt;SdtmClassVariableRefQualifies&gt;**](SdtmClassVariableRefQualifies.md) |  | [optional] |
| **root_item** | [**RootSdtmClassVariableRef**](RootSdtmClassVariableRef.md) |  | [optional] |
| **prior_version** | [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmClassVariableLinks.new(
  _self: null,
  parent_product: null,
  parent_class: null,
  qualifies_variables: null,
  root_item: null,
  prior_version: null
)
```

