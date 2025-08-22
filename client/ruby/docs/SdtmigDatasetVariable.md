# OpenapiClient::SdtmigDatasetVariable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **role** | **String** |  | [optional] |
| **simple_datatype** | **String** |  | [optional] |
| **core** | **String** |  | [optional] |
| **described_value_domain** | **String** |  | [optional] |
| **value_list** | **Array&lt;String&gt;** |  | [optional] |
| **_links** | [**SdtmigDatasetVariableLinks**](SdtmigDatasetVariableLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmigDatasetVariable.new(
  ordinal: 42,
  name: LBDTC,
  label: Date/Time of Specimen Collection,
  description: Date/time of specimen collection represented in ISO 8601 character format.,
  role: Timing,
  simple_datatype: Char,
  core: Exp,
  described_value_domain: ISO 8601,
  value_list: TODO,
  _links: null
)
```

