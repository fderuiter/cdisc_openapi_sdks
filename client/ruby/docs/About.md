# OpenapiClient::About

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**AboutLinks**](AboutLinks.md) |  | [optional] |
| **release_notes** | **String** |  | [optional] |
| **api_documentation** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::About.new(
  _links: null,
  release_notes: https://wiki.cdisc.org/display/LIBSUPRT/Release+Notes,
  api_documentation: https://www.cdisc.org/cdisc-library/api-documentation
)
```

