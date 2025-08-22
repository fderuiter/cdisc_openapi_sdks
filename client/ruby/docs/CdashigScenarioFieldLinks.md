# OpenapiClient::CdashigScenarioFieldLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**CdashigScenarioFieldRef**](CdashigScenarioFieldRef.md) |  | [optional] |
| **codelist** | [**Array&lt;RootCtCodelistRefElement&gt;**](RootCtCodelistRefElement.md) |  | [optional] |
| **parent_product** | [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] |
| **parent_domain** | [**CdashigDomainRef**](CdashigDomainRef.md) |  | [optional] |
| **parent_scenario** | [**CdashigScenarioRef**](CdashigScenarioRef.md) |  | [optional] |
| **root_item** | [**RootCdashigScenarioFieldRef**](RootCdashigScenarioFieldRef.md) |  | [optional] |
| **prior_version** | [**CdashigScenarioFieldRef**](CdashigScenarioFieldRef.md) |  | [optional] |
| **sdtmig_dataset_mapping_targets** | [**Array&lt;SdtmigDatasetVariableRefTarget&gt;**](SdtmigDatasetVariableRefTarget.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashigScenarioFieldLinks.new(
  _self: null,
  codelist: null,
  parent_product: null,
  parent_domain: null,
  parent_scenario: null,
  root_item: null,
  prior_version: null,
  sdtmig_dataset_mapping_targets: null
)
```

