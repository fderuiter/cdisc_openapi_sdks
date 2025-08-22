# OpenapiClient::CdashigScenario

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **domain** | **String** |  | [optional] |
| **scenario** | **String** |  | [optional] |
| **_links** | [**CdashigScenarioLinks**](CdashigScenarioLinks.md) |  | [optional] |
| **fields** | [**Array&lt;CdashigScenarioField&gt;**](CdashigScenarioField.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashigScenario.new(
  ordinal: 19,
  domain: Vital Signs,
  scenario: VS - Implementation Options: HorizontalGeneric,
  _links: null,
  fields: null
)
```

