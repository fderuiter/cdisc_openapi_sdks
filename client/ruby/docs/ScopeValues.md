# OpenapiClient::ScopeValues

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Float** |  | [optional] |
| **has_more** | **Boolean** |  | [optional] |
| **values** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ScopeValues.new(
  total: 1,
  has_more: false,
  values: [&quot;Terminology&quot;]
)
```

