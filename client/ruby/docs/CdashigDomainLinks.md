# OpenapiClient::CdashigDomainLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**CdashigDomainRef**](CdashigDomainRef.md) |  | [optional] |
| **parent_product** | [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] |
| **parent_class** | [**CdashigClassRef**](CdashigClassRef.md) |  | [optional] |
| **prior_version** | [**CdashigDomainRef**](CdashigDomainRef.md) |  | [optional] |
| **scenarios** | [**Array&lt;CdashigScenarioRefElement&gt;**](CdashigScenarioRefElement.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashigDomainLinks.new(
  _self: null,
  parent_product: null,
  parent_class: null,
  prior_version: null,
  scenarios: null
)
```

