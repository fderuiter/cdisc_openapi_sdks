# OpenapiClient::SdtmigClassDatasetsLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmigClassDatasetsRef**](SdtmigClassDatasetsRef.md) |  | [optional] |
| **parent_product** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] |
| **prior_version** | [**SdtmigClassDatasetsRef**](SdtmigClassDatasetsRef.md) |  | [optional] |
| **datasets** | [**Array&lt;SdtmigDatasetRefElement&gt;**](SdtmigDatasetRefElement.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmigClassDatasetsLinks.new(
  _self: null,
  parent_product: null,
  prior_version: null,
  datasets: null
)
```

