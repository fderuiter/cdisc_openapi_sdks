# OpenapiClient::CtCodelistTermsLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**CtCodelistTermsRef**](CtCodelistTermsRef.md) |  | [optional] |
| **parent_package** | [**CtPackageRef**](CtPackageRef.md) |  | [optional] |
| **root_item** | [**RootCtCodelistRef**](RootCtCodelistRef.md) |  | [optional] |
| **prior_version** | [**CtCodelistTermsRef**](CtCodelistTermsRef.md) |  | [optional] |
| **terms** | [**Array&lt;CtTermRefElement&gt;**](CtTermRefElement.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CtCodelistTermsLinks.new(
  _self: null,
  parent_package: null,
  root_item: null,
  prior_version: null,
  terms: null
)
```

