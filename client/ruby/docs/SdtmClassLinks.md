# OpenapiClient::SdtmClassLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] |
| **parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] |
| **parent_class** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] |
| **subclasses** | [**Array&lt;SdtmClassRefSubclass&gt;**](SdtmClassRefSubclass.md) |  | [optional] |
| **prior_version** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmClassLinks.new(
  _self: null,
  parent_product: null,
  parent_class: null,
  subclasses: null,
  prior_version: null
)
```

