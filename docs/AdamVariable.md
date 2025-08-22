# OpenapiClient::AdamVariable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **core** | **String** |  | [optional] |
| **simple_datatype** | **String** |  | [optional] |
| **described_value_domain** | **String** |  | [optional] |
| **value_list** | **Array&lt;String&gt;** |  | [optional] |
| **_links** | [**AdamVariableLinks**](AdamVariableLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdamVariable.new(
  ordinal: 5,
  name: SITEGRy,
  label: Pooled Site Group y,
  description: Character description of a grouping or pooling of clinical sites for analysis purposes. For example, SITEGR3 is the name of a variable containing site group (pooled site) names, where the grouping has been done according to the third site grouping algorithm, defined in variable metadata; SITEGR3 does not mean the third group of sites.,
  core: Perm,
  simple_datatype: Char,
  described_value_domain: Some codelist,
  value_list: TODO,
  _links: null
)
```

