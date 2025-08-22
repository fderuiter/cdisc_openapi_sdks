# OpenapiClient::CdashigDomainFieldLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**CdashigDomainFieldRef**](CdashigDomainFieldRef.md) |  | [optional] |
| **codelist** | [**Array&lt;RootCtCodelistRefElement&gt;**](RootCtCodelistRefElement.md) |  | [optional] |
| **parent_product** | [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] |
| **parent_domain** | [**CdashigDomainRef**](CdashigDomainRef.md) |  | [optional] |
| **root_item** | [**RootCdashigDomainFieldRef**](RootCdashigDomainFieldRef.md) |  | [optional] |
| **prior_version** | [**CdashigDomainFieldRef**](CdashigDomainFieldRef.md) |  | [optional] |
| **sdtm_class_mapping_targets** | [**Array&lt;SdtmClassVariableRefTarget&gt;**](SdtmClassVariableRefTarget.md) |  | [optional] |
| **sdtmig_dataset_mapping_targets** | [**Array&lt;SdtmigDatasetVariableRefTarget&gt;**](SdtmigDatasetVariableRefTarget.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashigDomainFieldLinks.new(
  _self: null,
  codelist: null,
  parent_product: null,
  parent_domain: null,
  root_item: null,
  prior_version: null,
  sdtm_class_mapping_targets: null,
  sdtmig_dataset_mapping_targets: null
)
```

