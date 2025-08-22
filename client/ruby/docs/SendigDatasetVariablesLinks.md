# OpenapiClient::SendigDatasetVariablesLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SendigDatasetVariablesRef**](SendigDatasetVariablesRef.md) |  | [optional] |
| **model_dataset** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] |
| **parent_product** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] |
| **parent_class** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] |
| **prior_version** | [**SendigDatasetVariablesRef**](SendigDatasetVariablesRef.md) |  | [optional] |
| **dataset_variables** | [**Array&lt;SendigDatasetVariableRefElement&gt;**](SendigDatasetVariableRefElement.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SendigDatasetVariablesLinks.new(
  _self: null,
  model_dataset: null,
  parent_product: null,
  parent_class: null,
  prior_version: null,
  dataset_variables: null
)
```

