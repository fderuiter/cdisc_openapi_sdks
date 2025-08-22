# OpenapiClient::SdtmigClassLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] |
| **model_class** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] |
| **parent_product** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] |
| **parent_class** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] |
| **subclasses** | [**Array&lt;SdtmigClassRefSubclass&gt;**](SdtmigClassRefSubclass.md) |  | [optional] |
| **prior_version** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmigClassLinks.new(
  _self: null,
  model_class: null,
  parent_product: null,
  parent_class: null,
  subclasses: null,
  prior_version: null
)
```

