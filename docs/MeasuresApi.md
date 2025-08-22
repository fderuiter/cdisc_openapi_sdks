# OpenapiClient::MeasuresApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mdr_qrs_measure_version_get**](MeasuresApi.md#mdr_qrs_measure_version_get) | **GET** /mdr/qrs/{measure}/{version} |  |
| [**mdr_qrs_measure_version_items_get**](MeasuresApi.md#mdr_qrs_measure_version_items_get) | **GET** /mdr/qrs/{measure}/{version}/items |  |
| [**mdr_qrs_measure_version_items_item_get**](MeasuresApi.md#mdr_qrs_measure_version_items_item_get) | **GET** /mdr/qrs/{measure}/{version}/items/{item} |  |
| [**mdr_qrs_measure_version_responsegroups_get**](MeasuresApi.md#mdr_qrs_measure_version_responsegroups_get) | **GET** /mdr/qrs/{measure}/{version}/responsegroups |  |
| [**mdr_qrs_measure_version_responsegroups_responsegroup_get**](MeasuresApi.md#mdr_qrs_measure_version_responsegroups_responsegroup_get) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} |  |


## mdr_qrs_measure_version_get

> <QrsProduct> mdr_qrs_measure_version_get(measure, version)



Get QRS Product

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

api_instance = OpenapiClient::MeasuresApi.new
measure = 'AIMS1' # String | QRS Measure Identifier
version = '1-0' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_qrs_measure_version_get(measure, version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MeasuresApi->mdr_qrs_measure_version_get: #{e}"
end
```

#### Using the mdr_qrs_measure_version_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QrsProduct>, Integer, Hash)> mdr_qrs_measure_version_get_with_http_info(measure, version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_qrs_measure_version_get_with_http_info(measure, version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QrsProduct>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MeasuresApi->mdr_qrs_measure_version_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **measure** | **String** | QRS Measure Identifier |  |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**QrsProduct**](QrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel


## mdr_qrs_measure_version_items_get

> <QrsItems> mdr_qrs_measure_version_items_get(measure, version)



Get QRS Item List

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

api_instance = OpenapiClient::MeasuresApi.new
measure = 'AIMS1' # String | QRS Measure Identifier
version = '1-0' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_qrs_measure_version_items_get(measure, version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MeasuresApi->mdr_qrs_measure_version_items_get: #{e}"
end
```

#### Using the mdr_qrs_measure_version_items_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QrsItems>, Integer, Hash)> mdr_qrs_measure_version_items_get_with_http_info(measure, version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_qrs_measure_version_items_get_with_http_info(measure, version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QrsItems>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MeasuresApi->mdr_qrs_measure_version_items_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **measure** | **String** | QRS Measure Identifier |  |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**QrsItems**](QrsItems.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_qrs_measure_version_items_item_get

> <QrsItem> mdr_qrs_measure_version_items_item_get(measure, version, item)



Get QRS Item

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

api_instance = OpenapiClient::MeasuresApi.new
measure = 'AIMS1' # String | QRS Measure Identifier
version = '1-0' # String | CDISC Library Product Version
item = 'AIMS01.001' # String | QRS Measure Item Identifier

begin
  
  result = api_instance.mdr_qrs_measure_version_items_item_get(measure, version, item)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MeasuresApi->mdr_qrs_measure_version_items_item_get: #{e}"
end
```

#### Using the mdr_qrs_measure_version_items_item_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QrsItem>, Integer, Hash)> mdr_qrs_measure_version_items_item_get_with_http_info(measure, version, item)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_qrs_measure_version_items_item_get_with_http_info(measure, version, item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QrsItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MeasuresApi->mdr_qrs_measure_version_items_item_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **measure** | **String** | QRS Measure Identifier |  |
| **version** | **String** | CDISC Library Product Version |  |
| **item** | **String** | QRS Measure Item Identifier |  |

### Return type

[**QrsItem**](QrsItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_qrs_measure_version_responsegroups_get

> <QrsResponsegroups> mdr_qrs_measure_version_responsegroups_get(measure, version)



Get QRS Response Group List

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

api_instance = OpenapiClient::MeasuresApi.new
measure = 'AIMS1' # String | QRS Measure Identifier
version = '1-0' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_qrs_measure_version_responsegroups_get(measure, version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MeasuresApi->mdr_qrs_measure_version_responsegroups_get: #{e}"
end
```

#### Using the mdr_qrs_measure_version_responsegroups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QrsResponsegroups>, Integer, Hash)> mdr_qrs_measure_version_responsegroups_get_with_http_info(measure, version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_qrs_measure_version_responsegroups_get_with_http_info(measure, version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QrsResponsegroups>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MeasuresApi->mdr_qrs_measure_version_responsegroups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **measure** | **String** | QRS Measure Identifier |  |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**QrsResponsegroups**](QrsResponsegroups.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_qrs_measure_version_responsegroups_responsegroup_get

> <QrsResponsegroup> mdr_qrs_measure_version_responsegroups_responsegroup_get(measure, version, responsegroup)



Get QRS Response Group

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

api_instance = OpenapiClient::MeasuresApi.new
measure = 'AIMS1' # String | QRS Measure Identifier
version = '1-0' # String | CDISC Library Product Version
responsegroup = 'AIMS1.11to12' # String | QRS Measure's Response Group Identifier

begin
  
  result = api_instance.mdr_qrs_measure_version_responsegroups_responsegroup_get(measure, version, responsegroup)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MeasuresApi->mdr_qrs_measure_version_responsegroups_responsegroup_get: #{e}"
end
```

#### Using the mdr_qrs_measure_version_responsegroups_responsegroup_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QrsResponsegroup>, Integer, Hash)> mdr_qrs_measure_version_responsegroups_responsegroup_get_with_http_info(measure, version, responsegroup)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_qrs_measure_version_responsegroups_responsegroup_get_with_http_info(measure, version, responsegroup)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QrsResponsegroup>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MeasuresApi->mdr_qrs_measure_version_responsegroups_responsegroup_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **measure** | **String** | QRS Measure Identifier |  |
| **version** | **String** | CDISC Library Product Version |  |
| **responsegroup** | **String** | QRS Measure&#39;s Response Group Identifier |  |

### Return type

[**QrsResponsegroup**](QrsResponsegroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

