# OpenapiClient::SdtmigDatasetVariablesLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmigDatasetVariablesRef**](SdtmigDatasetVariablesRef.md) |  | [optional] |
| **model_dataset** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] |
| **parent_product** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] |
| **parent_class** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] |
| **prior_version** | [**SdtmigDatasetVariablesRef**](SdtmigDatasetVariablesRef.md) |  | [optional] |
| **dataset_variables** | [**Array&lt;SdtmigDatasetVariableRefElement&gt;**](SdtmigDatasetVariableRefElement.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmigDatasetVariablesLinks.new(
  _self: null,
  model_dataset: null,
  parent_product: null,
  parent_class: null,
  prior_version: null,
  dataset_variables: null
)
```

