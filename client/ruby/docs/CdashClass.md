# OpenapiClient::CdashClass

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **_links** | [**CdashClassLinks**](CdashClassLinks.md) |  | [optional] |
| **cdash_model_fields** | [**Array&lt;CdashClassField&gt;**](CdashClassField.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashClass.new(
  ordinal: 5,
  name: Timing,
  label: Timing Class,
  description: Timing class variables,
  _links: null,
  cdash_model_fields: null
)
```

