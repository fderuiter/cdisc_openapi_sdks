# OpenapiClient::SdtmigDatasetVariableLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmigDatasetVariableRef**](SdtmigDatasetVariableRef.md) |  | [optional] |
| **codelist** | [**Array&lt;RootCtCodelistRefElement&gt;**](RootCtCodelistRefElement.md) |  | [optional] |
| **model_class_variable** | [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] |
| **model_dataset_variable** | [**SdtmDatasetVariableRef**](SdtmDatasetVariableRef.md) |  | [optional] |
| **parent_product** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] |
| **parent_dataset** | [**SdtmigDatasetRef**](SdtmigDatasetRef.md) |  | [optional] |
| **root_item** | [**RootSdtmigDatasetVariableRef**](RootSdtmigDatasetVariableRef.md) |  | [optional] |
| **prior_version** | [**SdtmigDatasetVariableRef**](SdtmigDatasetVariableRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmigDatasetVariableLinks.new(
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

