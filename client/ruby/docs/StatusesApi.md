# OpenapiClient::StatusesApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**health_get**](StatusesApi.md#health_get) | **GET** /health |  |
| [**mdr_maintenance_get**](StatusesApi.md#mdr_maintenance_get) | **GET** /mdr/maintenance |  |


## health_get

> <Health> health_get



Check health of system components

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::StatusesApi.new

begin
  
  result = api_instance.health_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusesApi->health_get: #{e}"
end
```

#### Using the health_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Health>, Integer, Hash)> health_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.health_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Health>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusesApi->health_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Health**](Health.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mdr_maintenance_get

> <MaintenanceBody> mdr_maintenance_get



Set maintenance mode and message

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::StatusesApi.new

begin
  
  result = api_instance.mdr_maintenance_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusesApi->mdr_maintenance_get: #{e}"
end
```

#### Using the mdr_maintenance_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MaintenanceBody>, Integer, Hash)> mdr_maintenance_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_maintenance_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MaintenanceBody>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusesApi->mdr_maintenance_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MaintenanceBody**](MaintenanceBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

