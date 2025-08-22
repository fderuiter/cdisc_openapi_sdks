# OpenapiClient::DefaultApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mdr_about_get**](DefaultApi.md#mdr_about_get) | **GET** /mdr/about |  |
| [**mdr_lastupdated_get**](DefaultApi.md#mdr_lastupdated_get) | **GET** /mdr/lastupdated |  |
| [**mdr_products_data_analysis_get**](DefaultApi.md#mdr_products_data_analysis_get) | **GET** /mdr/products/DataAnalysis |  |
| [**mdr_products_data_collection_get**](DefaultApi.md#mdr_products_data_collection_get) | **GET** /mdr/products/DataCollection |  |
| [**mdr_products_data_tabulation_get**](DefaultApi.md#mdr_products_data_tabulation_get) | **GET** /mdr/products/DataTabulation |  |
| [**mdr_products_get**](DefaultApi.md#mdr_products_get) | **GET** /mdr/products |  |
| [**mdr_products_measures_get**](DefaultApi.md#mdr_products_measures_get) | **GET** /mdr/products/Measures |  |
| [**mdr_products_terminology_get**](DefaultApi.md#mdr_products_terminology_get) | **GET** /mdr/products/Terminology |  |


## mdr_about_get

> <About> mdr_about_get



Get Information About CDISC Library

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

api_instance = OpenapiClient::DefaultApi.new

begin
  
  result = api_instance.mdr_about_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_about_get: #{e}"
end
```

#### Using the mdr_about_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<About>, Integer, Hash)> mdr_about_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_about_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <About>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_about_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**About**](About.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_lastupdated_get

> <Lastupdated> mdr_lastupdated_get



Get CDISC Library Last Updated

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

api_instance = OpenapiClient::DefaultApi.new

begin
  
  result = api_instance.mdr_lastupdated_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_lastupdated_get: #{e}"
end
```

#### Using the mdr_lastupdated_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lastupdated>, Integer, Hash)> mdr_lastupdated_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_lastupdated_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lastupdated>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_lastupdated_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Lastupdated**](Lastupdated.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_products_data_analysis_get

> <ProductgroupDataAnalysis> mdr_products_data_analysis_get



Get CDISC Library Product Group Data Analysis

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

api_instance = OpenapiClient::DefaultApi.new

begin
  
  result = api_instance.mdr_products_data_analysis_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_products_data_analysis_get: #{e}"
end
```

#### Using the mdr_products_data_analysis_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductgroupDataAnalysis>, Integer, Hash)> mdr_products_data_analysis_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_products_data_analysis_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductgroupDataAnalysis>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_products_data_analysis_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupDataAnalysis**](ProductgroupDataAnalysis.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_products_data_collection_get

> <ProductgroupDataCollection> mdr_products_data_collection_get



Get CDISC Library Product Group Data Collection

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

api_instance = OpenapiClient::DefaultApi.new

begin
  
  result = api_instance.mdr_products_data_collection_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_products_data_collection_get: #{e}"
end
```

#### Using the mdr_products_data_collection_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductgroupDataCollection>, Integer, Hash)> mdr_products_data_collection_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_products_data_collection_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductgroupDataCollection>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_products_data_collection_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupDataCollection**](ProductgroupDataCollection.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_products_data_tabulation_get

> <ProductgroupDataTabulation> mdr_products_data_tabulation_get



Get CDISC Library Product Group Data Tabulation

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

api_instance = OpenapiClient::DefaultApi.new

begin
  
  result = api_instance.mdr_products_data_tabulation_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_products_data_tabulation_get: #{e}"
end
```

#### Using the mdr_products_data_tabulation_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductgroupDataTabulation>, Integer, Hash)> mdr_products_data_tabulation_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_products_data_tabulation_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductgroupDataTabulation>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_products_data_tabulation_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupDataTabulation**](ProductgroupDataTabulation.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_products_get

> <Products> mdr_products_get



Get CDISC Library Products

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

api_instance = OpenapiClient::DefaultApi.new

begin
  
  result = api_instance.mdr_products_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_products_get: #{e}"
end
```

#### Using the mdr_products_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Products>, Integer, Hash)> mdr_products_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_products_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Products>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_products_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Products**](Products.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_products_measures_get

> <ProductgroupQrs> mdr_products_measures_get



Get CDISC Library Product Group QRS

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

api_instance = OpenapiClient::DefaultApi.new

begin
  
  result = api_instance.mdr_products_measures_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_products_measures_get: #{e}"
end
```

#### Using the mdr_products_measures_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductgroupQrs>, Integer, Hash)> mdr_products_measures_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_products_measures_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductgroupQrs>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_products_measures_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupQrs**](ProductgroupQrs.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mdr_products_terminology_get

> <ProductgroupTerminology> mdr_products_terminology_get



Get CDISC Library Product Group Terminology

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

api_instance = OpenapiClient::DefaultApi.new

begin
  
  result = api_instance.mdr_products_terminology_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_products_terminology_get: #{e}"
end
```

#### Using the mdr_products_terminology_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductgroupTerminology>, Integer, Hash)> mdr_products_terminology_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_products_terminology_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductgroupTerminology>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->mdr_products_terminology_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupTerminology**](ProductgroupTerminology.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

