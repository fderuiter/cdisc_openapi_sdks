# OpenapiClient::SdtmDatasetLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] |
| **parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] |
| **parent_class** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] |
| **prior_version** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmDatasetLinks.new(
  _self: null,
  parent_product: null,
  parent_class: null,
  prior_version: null
)
```

