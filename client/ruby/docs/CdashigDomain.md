# OpenapiClient::CdashigDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **_links** | [**CdashigDomainLinks**](CdashigDomainLinks.md) |  | [optional] |
| **fields** | [**Array&lt;CdashigDomainField&gt;**](CdashigDomainField.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashigDomain.new(
  ordinal: 31,
  name: VS,
  label: Vital Signs,
  _links: null,
  fields: null
)
```

