# OpenapiClient::SdtmigDatasetsLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmigDatasetsRef**](SdtmigDatasetsRef.md) |  | [optional] |
| **parent_product** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] |
| **prior_version** | [**SdtmigDatasetsRef**](SdtmigDatasetsRef.md) |  | [optional] |
| **datasets** | [**Array&lt;SdtmigDatasetRefElement&gt;**](SdtmigDatasetRefElement.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmigDatasetsLinks.new(
  _self: null,
  parent_product: null,
  prior_version: null,
  datasets: null
)
```

