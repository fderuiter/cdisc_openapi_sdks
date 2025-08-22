# OpenapiClient::DefaultErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status_code** | **String** | HTTP Status Code | [optional] |
| **reason_phrase** | **String** | HTTP Reason Phrase | [optional] |
| **user_message** | **String** | User Error Message | [optional] |
| **admin_message** | **String** | Admin Error Message | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DefaultErrorResponse.new(
  status_code: null,
  reason_phrase: null,
  user_message: null,
  admin_message: null
)
```

