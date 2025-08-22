# OpenapiClient::ExportSdtmWorkbook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **class_variables** | [**Array&lt;ExportSdtmClassVariablesRow&gt;**](ExportSdtmClassVariablesRow.md) |  | [optional] |
| **dataset_variables** | [**Array&lt;ExportSdtmDatasetVariablesRow&gt;**](ExportSdtmDatasetVariablesRow.md) |  | [optional] |
| **datasets** | [**Array&lt;ExportSdtmDatasetsRow&gt;**](ExportSdtmDatasetsRow.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExportSdtmWorkbook.new(
  class_variables: null,
  dataset_variables: null,
  datasets: null
)
```

