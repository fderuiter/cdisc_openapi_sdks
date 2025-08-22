# OpenapiClient::CdashClassFieldLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**CdashClassFieldRef**](CdashClassFieldRef.md) |  | [optional] |
| **codelist** | [**Array&lt;RootCtCodelistRefElement&gt;**](RootCtCodelistRefElement.md) |  | [optional] |
| **parent_product** | [**CdashProductRef**](CdashProductRef.md) |  | [optional] |
| **parent_class** | [**CdashClassRef**](CdashClassRef.md) |  | [optional] |
| **root_item** | [**RootCdashClassFieldRef**](RootCdashClassFieldRef.md) |  | [optional] |
| **prior_version** | [**CdashClassFieldRef**](CdashClassFieldRef.md) |  | [optional] |
| **sdtm_class_mapping_targets** | [**Array&lt;SdtmClassVariableRefTarget&gt;**](SdtmClassVariableRefTarget.md) |  | [optional] |
| **sdtm_dataset_mapping_targets** | [**Array&lt;SdtmDatasetVariableRefTarget&gt;**](SdtmDatasetVariableRefTarget.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashClassFieldLinks.new(
  _self: null,
  codelist: null,
  parent_product: null,
  parent_class: null,
  root_item: null,
  prior_version: null,
  sdtm_class_mapping_targets: null,
  sdtm_dataset_mapping_targets: null
)
```

