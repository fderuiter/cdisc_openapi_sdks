# OpenapiClient::CdashigClassLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**CdashigClassRef**](CdashigClassRef.md) |  | [optional] |
| **model_class** | [**CdashClassRef**](CdashClassRef.md) |  | [optional] |
| **parent_product** | [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] |
| **parent_class** | [**CdashigClassRef**](CdashigClassRef.md) |  | [optional] |
| **subclasses** | [**Array&lt;CdashigClassRefSubclass&gt;**](CdashigClassRefSubclass.md) |  | [optional] |
| **prior_version** | [**CdashigClassRef**](CdashigClassRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashigClassLinks.new(
  _self: null,
  model_class: null,
  parent_product: null,
  parent_class: null,
  subclasses: null,
  prior_version: null
)
```

