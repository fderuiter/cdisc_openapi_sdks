# OpenapiClient::SdtmClassVariable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **role** | **String** |  | [optional] |
| **role_description** | **String** |  | [optional] |
| **simple_datatype** | **String** |  | [optional] |
| **described_value_domain** | **String** |  | [optional] |
| **_links** | [**SdtmClassVariableLinks**](SdtmClassVariableLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmClassVariable.new(
  ordinal: 26,
  name: --DTC,
  label: Date/Time of Collection,
  description: Collection date and time of an observation.,
  role: Timing,
  role_description: Timing,
  simple_datatype: Char,
  described_value_domain: ISO 8601,
  _links: null
)
```

