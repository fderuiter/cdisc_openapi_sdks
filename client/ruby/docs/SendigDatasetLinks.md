# OpenapiClient::SendigDatasetLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SendigDatasetRef**](SendigDatasetRef.md) |  | [optional] |
| **model_dataset** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] |
| **parent_product** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] |
| **parent_class** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] |
| **prior_version** | [**SendigDatasetRef**](SendigDatasetRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SendigDatasetLinks.new(
  _self: null,
  model_dataset: null,
  parent_product: null,
  parent_class: null,
  prior_version: null
)
```

