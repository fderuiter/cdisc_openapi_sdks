# OpenapiClient::SendigClassLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] |
| **model_class** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] |
| **parent_product** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] |
| **parent_class** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] |
| **subclasses** | [**Array&lt;SendigClassRefSubclass&gt;**](SendigClassRefSubclass.md) |  | [optional] |
| **prior_version** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SendigClassLinks.new(
  _self: null,
  model_class: null,
  parent_product: null,
  parent_class: null,
  subclasses: null,
  prior_version: null
)
```

