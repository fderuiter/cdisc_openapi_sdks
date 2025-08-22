# OpenapiClient::QrsProductLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**QrsProductRef**](QrsProductRef.md) |  | [optional] |
| **prior_version** | [**QrsProductRef**](QrsProductRef.md) |  | [optional] |
| **qrs_term_cat** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] |
| **qrs_items** | [**QrsItemsRef**](QrsItemsRef.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::QrsProductLinks.new(
  _self: null,
  prior_version: null,
  qrs_term_cat: null,
  qrs_items: null
)
```

