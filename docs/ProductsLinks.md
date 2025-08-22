# OpenapiClient::ProductsLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**ProductsRef**](ProductsRef.md) |  | [optional] |
| **data_collection** | [**ProductgroupDataCollection**](ProductgroupDataCollection.md) |  | [optional] |
| **data_tabulation** | [**ProductgroupDataTabulation**](ProductgroupDataTabulation.md) |  | [optional] |
| **data_analysis** | [**ProductgroupDataAnalysis**](ProductgroupDataAnalysis.md) |  | [optional] |
| **terminology** | [**ProductgroupTerminology**](ProductgroupTerminology.md) |  | [optional] |
| **measure** | [**ProductgroupQrs**](ProductgroupQrs.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ProductsLinks.new(
  _self: null,
  data_collection: null,
  data_tabulation: null,
  data_analysis: null,
  terminology: null,
  measure: null
)
```

