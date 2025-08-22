# OpenapiClient::SdtmDatasetVariablesLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmDatasetVariablesRef**](SdtmDatasetVariablesRef.md) |  | [optional] |
| **parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] |
| **parent_class** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] |
| **prior_version** | [**SdtmDatasetVariablesRef**](SdtmDatasetVariablesRef.md) |  | [optional] |
| **dataset_variables** | [**Array&lt;SdtmDatasetVariableRefElement&gt;**](SdtmDatasetVariableRefElement.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmDatasetVariablesLinks.new(
  _self: null,
  parent_product: null,
  parent_class: null,
  prior_version: null,
  dataset_variables: null
)
```

