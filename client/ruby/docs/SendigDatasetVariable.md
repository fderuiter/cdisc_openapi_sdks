# OpenapiClient::SendigDatasetVariable

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
| **_links** | [**SendigDatasetVariableLinks**](SendigDatasetVariableLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SendigDatasetVariable.new(
  ordinal: 8,
  name: VSTEST,
  label: Vital Signs Test Name,
  description: Long name for VSTESTCD. The value in VSTEST cannot be longer than 40 characters.,
  role: Synonym Qualifier,
  simple_datatype: Char,
  core: Req,
  described_value_domain: Value domain example,
  value_list: [&quot;Value example 1&quot;,&quot;Value example 2&quot;],
  _links: null
)
```

