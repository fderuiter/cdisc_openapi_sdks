# OpenapiClient::CdashDomainFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **_links** | [**CdashDomainFieldsLinks**](CdashDomainFieldsLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashDomainFields.new(
  ordinal: 4,
  name: DM,
  label: Demographics,
  _links: null
)
```

