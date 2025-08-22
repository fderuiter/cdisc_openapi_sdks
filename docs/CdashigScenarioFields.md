# OpenapiClient::CdashigScenarioFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **domain** | **String** |  | [optional] |
| **scenario** | **String** |  | [optional] |
| **_links** | [**CdashigScenarioFieldsLinks**](CdashigScenarioFieldsLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashigScenarioFields.new(
  ordinal: 19,
  domain: Vital Signs,
  scenario: VS - Implementation Options: HorizontalGeneric,
  _links: null
)
```

