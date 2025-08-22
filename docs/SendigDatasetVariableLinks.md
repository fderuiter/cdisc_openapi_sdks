# OpenapiClient::SendigDatasetVariableLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SendigDatasetVariableRef**](SendigDatasetVariableRef.md) |  | [optional] |
| **codelist** | [**Array&lt;RootCtCodelistRefElement&gt;**](RootCtCodelistRefElement.md) |  | [optional] |
| **model_class_variable** | [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] |
| **model_dataset_variable** | [**SdtmDatasetVariableRef**](SdtmDatasetVariableRef.md) |  | [optional] |
| **parent_product** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] |
| **parent_dataset** | [**SendigDatasetRef**](SendigDatasetRef.md) |  | [optional] |
| **root_item** | [**RootSendigDatasetVariableRef**](RootSendigDatasetVariableRef.md) |  | [optional] |
| **prior_version** | [**SendigDatasetVariableRef**](SendigDatasetVariableRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SendigDatasetVariableLinks.new(
  _self: null,
  codelist: null,
  model_class_variable: null,
  model_dataset_variable: null,
  parent_product: null,
  parent_dataset: null,
  root_item: null,
  prior_version: null
)
```

