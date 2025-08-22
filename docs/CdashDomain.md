# OpenapiClient::CdashDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **_links** | [**CdashDomainLinks**](CdashDomainLinks.md) |  | [optional] |
| **fields** | [**Array&lt;CdashDomainField&gt;**](CdashDomainField.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashDomain.new(
  ordinal: 4,
  name: DM,
  label: Demographics,
  _links: null,
  fields: null
)
```

