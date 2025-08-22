# OpenapiClient::CdashigClassScenarios

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **_links** | [**CdashigClassScenariosLinks**](CdashigClassScenariosLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashigClassScenarios.new(
  ordinal: 4,
  name: Findings,
  label: Findings,
  description: The Findings class includes CDASH domains that define collection standards for results from evaluations such as physical examinations, laboratory tests, electrocardiogram (ECG) testing, and responses to questionnaires. (Source: CDASHIG v2.1, Section 8.3),
  _links: null
)
```

