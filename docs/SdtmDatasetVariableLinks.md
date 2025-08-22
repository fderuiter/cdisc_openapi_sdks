# OpenapiClient::SdtmDatasetVariableLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**SdtmDatasetVariableRef**](SdtmDatasetVariableRef.md) |  | [optional] |
| **parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] |
| **parent_dataset** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] |
| **root_item** | [**RootSdtmDatasetVariableRef**](RootSdtmDatasetVariableRef.md) |  | [optional] |
| **prior_version** | [**SdtmDatasetVariableRef**](SdtmDatasetVariableRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmDatasetVariableLinks.new(
  _self: null,
  parent_product: null,
  parent_dataset: null,
  root_item: null,
  prior_version: null
)
```

