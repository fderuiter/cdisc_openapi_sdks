# OpenapiClient::QrsItemLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **qrs_item_test** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] |
| **qrs_item_testcd** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] |
| **qrs_item_eval** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] |
| **qrs_item_scat** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] |
| **responsegroup** | [**QrsResponsegroup**](QrsResponsegroup.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::QrsItemLinks.new(
  qrs_item_test: null,
  qrs_item_testcd: null,
  qrs_item_eval: null,
  qrs_item_scat: null,
  responsegroup: null
)
```

