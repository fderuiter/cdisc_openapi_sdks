# OpenapiClient::CtTermLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**CtTermRef**](CtTermRef.md) |  | [optional] |
| **parent_package** | [**CtPackageRef**](CtPackageRef.md) |  | [optional] |
| **parent_codelist** | [**CtCodelistRef**](CtCodelistRef.md) |  | [optional] |
| **root_item** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] |
| **prior_version** | [**CtTermRef**](CtTermRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CtTermLinks.new(
  _self: null,
  parent_package: null,
  parent_codelist: null,
  root_item: null,
  prior_version: null
)
```

