# OpenapiClient::Health

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **healthy** | **Boolean** |  | [optional] |
| **ldap_authentication_healthy** | **Boolean** |  | [optional] |
| **ldap_authorization_healthy** | **Boolean** |  | [optional] |
| **database_healthy** | **Boolean** |  | [optional] |
| **es_healthy** | **Boolean** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Health.new(
  healthy: null,
  ldap_authentication_healthy: null,
  ldap_authorization_healthy: null,
  database_healthy: null,
  es_healthy: null
)
```

