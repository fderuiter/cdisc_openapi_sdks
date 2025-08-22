# OpenapiClient::SdtmigDatasetLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmigDatasetRef**](SdtmigDatasetRef.md) |  | [optional] |
| **model_dataset** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] |
| **parent_product** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] |
| **parent_class** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] |
| **prior_version** | [**SdtmigDatasetRef**](SdtmigDatasetRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmigDatasetLinks.new(
  _self: null,
  model_dataset: null,
  parent_product: null,
  parent_class: null,
  prior_version: null
)
```

