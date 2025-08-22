# OpenapiClient::CdashDomainFieldLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**CdashDomainFieldRef**](CdashDomainFieldRef.md) |  | [optional] |
| **codelist** | [**Array&lt;RootCtCodelistRefElement&gt;**](RootCtCodelistRefElement.md) |  | [optional] |
| **parent_product** | [**CdashProductRef**](CdashProductRef.md) |  | [optional] |
| **parent_class** | [**CdashClassRef**](CdashClassRef.md) |  | [optional] |
| **parent_domain** | [**CdashDomainRef**](CdashDomainRef.md) |  | [optional] |
| **root_item** | [**RootCdashDomainFieldRef**](RootCdashDomainFieldRef.md) |  | [optional] |
| **prior_version** | [**CdashDomainFieldRef**](CdashDomainFieldRef.md) |  | [optional] |
| **sdtm_dataset_mapping_targets** | [**Array&lt;SdtmDatasetVariableRefTarget&gt;**](SdtmDatasetVariableRefTarget.md) |  | [optional] |
| **sdtmig_dataset_mapping_targets** | [**Array&lt;SdtmigDatasetVariableRefTarget&gt;**](SdtmigDatasetVariableRefTarget.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashDomainFieldLinks.new(
  _self: null,
  codelist: null,
  parent_product: null,
  parent_class: null,
  parent_domain: null,
  root_item: null,
  prior_version: null,
  sdtm_dataset_mapping_targets: null,
  sdtmig_dataset_mapping_targets: null
)
```

