# OpenapiClient::SdtmClassDatasetsLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmClassDatasetsRef**](SdtmClassDatasetsRef.md) |  | [optional] |
| **parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] |
| **prior_version** | [**SdtmClassDatasetsRef**](SdtmClassDatasetsRef.md) |  | [optional] |
| **datasets** | [**Array&lt;SdtmDatasetRefElement&gt;**](SdtmDatasetRefElement.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmClassDatasetsLinks.new(
  _self: null,
  parent_product: null,
  prior_version: null,
  datasets: null
)
```

