# OpenapiClient::SdtmDatasetsLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmDatasetsRef**](SdtmDatasetsRef.md) |  | [optional] |
| **parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] |
| **prior_version** | [**SdtmDatasetsRef**](SdtmDatasetsRef.md) |  | [optional] |
| **datasets** | [**Array&lt;SdtmDatasetRefElement&gt;**](SdtmDatasetRefElement.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmDatasetsLinks.new(
  _self: null,
  parent_product: null,
  prior_version: null,
  datasets: null
)
```

