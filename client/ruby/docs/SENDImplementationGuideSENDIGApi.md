# OpenapiClient::SENDImplementationGuideSENDIGApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mdr_root_sendig_datasets_dataset_variables_var_get**](SENDImplementationGuideSENDIGApi.md#mdr_root_sendig_datasets_dataset_variables_var_get) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} |  |
| [**mdr_sendig_version_classes_class_datasets_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_classes_class_datasets_get) | **GET** /mdr/sendig/{version}/classes/{class}/datasets |  |
| [**mdr_sendig_version_classes_class_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_classes_class_get) | **GET** /mdr/sendig/{version}/classes/{class} |  |
| [**mdr_sendig_version_classes_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_classes_get) | **GET** /mdr/sendig/{version}/classes |  |
| [**mdr_sendig_version_datasets_dataset_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_datasets_dataset_get) | **GET** /mdr/sendig/{version}/datasets/{dataset} |  |
| [**mdr_sendig_version_datasets_dataset_variables_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_datasets_dataset_variables_get) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables |  |
| [**mdr_sendig_version_datasets_dataset_variables_var_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_datasets_dataset_variables_var_get) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} |  |
| [**mdr_sendig_version_datasets_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_datasets_get) | **GET** /mdr/sendig/{version}/datasets |  |
| [**mdr_sendig_version_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_get) | **GET** /mdr/sendig/{version} |  |


## mdr_root_sendig_datasets_dataset_variables_var_get

> <RootSendigDatasetVariable> mdr_root_sendig_datasets_dataset_variables_var_get(dataset, var)



Get Root SENDIG Dataset Variable

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

api_instance = OpenapiClient::SENDImplementationGuideSENDIGApi.new
dataset = 'VS' # String | SENDIG Dataset Identifier
var = 'VSTEST' # String | SENDIG Variable Identifier

begin
  
  result = api_instance.mdr_root_sendig_datasets_dataset_variables_var_get(dataset, var)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_root_sendig_datasets_dataset_variables_var_get: #{e}"
end
```

#### Using the mdr_root_sendig_datasets_dataset_variables_var_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RootSendigDatasetVariable>, Integer, Hash)> mdr_root_sendig_datasets_dataset_variables_var_get_with_http_info(dataset, var)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_root_sendig_datasets_dataset_variables_var_get_with_http_info(dataset, var)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RootSendigDatasetVariable>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_root_sendig_datasets_dataset_variables_var_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dataset** | **String** | SENDIG Dataset Identifier |  |
| **var** | **String** | SENDIG Variable Identifier |  |

### Return type

[**RootSendigDatasetVariable**](RootSendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sendig_version_classes_class_datasets_get

> <SendigClassDatasets> mdr_sendig_version_classes_class_datasets_get(version, _class)



Get SENDIG Class Dataset List

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

api_instance = OpenapiClient::SENDImplementationGuideSENDIGApi.new
version = '3-1' # String | CDISC Library Product Version
_class = 'Findings' # String | SENDIG Class Identifier

begin
  
  result = api_instance.mdr_sendig_version_classes_class_datasets_get(version, _class)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_class_datasets_get: #{e}"
end
```

#### Using the mdr_sendig_version_classes_class_datasets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendigClassDatasets>, Integer, Hash)> mdr_sendig_version_classes_class_datasets_get_with_http_info(version, _class)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sendig_version_classes_class_datasets_get_with_http_info(version, _class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendigClassDatasets>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_class_datasets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | SENDIG Class Identifier |  |

### Return type

[**SendigClassDatasets**](SendigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sendig_version_classes_class_get

> <SendigClass> mdr_sendig_version_classes_class_get(version, _class)



Get SENDIG Class

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

api_instance = OpenapiClient::SENDImplementationGuideSENDIGApi.new
version = '3-1' # String | CDISC Library Product Version
_class = 'Findings' # String | SENDIG Class Identifier

begin
  
  result = api_instance.mdr_sendig_version_classes_class_get(version, _class)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_class_get: #{e}"
end
```

#### Using the mdr_sendig_version_classes_class_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendigClass>, Integer, Hash)> mdr_sendig_version_classes_class_get_with_http_info(version, _class)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sendig_version_classes_class_get_with_http_info(version, _class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendigClass>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_class_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | SENDIG Class Identifier |  |

### Return type

[**SendigClass**](SendigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sendig_version_classes_get

> <SendigClasses> mdr_sendig_version_classes_get(version)



Get SENDIG Class List

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

api_instance = OpenapiClient::SENDImplementationGuideSENDIGApi.new
version = '3-1' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_sendig_version_classes_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_get: #{e}"
end
```

#### Using the mdr_sendig_version_classes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendigClasses>, Integer, Hash)> mdr_sendig_version_classes_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sendig_version_classes_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendigClasses>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**SendigClasses**](SendigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sendig_version_datasets_dataset_get

> <SendigDataset> mdr_sendig_version_datasets_dataset_get(version, dataset)



Get SENDIG Dataset

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

api_instance = OpenapiClient::SENDImplementationGuideSENDIGApi.new
version = '3-1' # String | CDISC Library Product Version
dataset = 'VS' # String | SENDIG Class Identifier

begin
  
  result = api_instance.mdr_sendig_version_datasets_dataset_get(version, dataset)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_get: #{e}"
end
```

#### Using the mdr_sendig_version_datasets_dataset_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendigDataset>, Integer, Hash)> mdr_sendig_version_datasets_dataset_get_with_http_info(version, dataset)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sendig_version_datasets_dataset_get_with_http_info(version, dataset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendigDataset>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **dataset** | **String** | SENDIG Class Identifier |  |

### Return type

[**SendigDataset**](SendigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sendig_version_datasets_dataset_variables_get

> <SendigDatasetVariables> mdr_sendig_version_datasets_dataset_variables_get(version, dataset)



Get SENDIG Dataset Variable List

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

api_instance = OpenapiClient::SENDImplementationGuideSENDIGApi.new
version = '3-1' # String | CDISC Library Product Version
dataset = 'VS' # String | SENDIG Class Identifier

begin
  
  result = api_instance.mdr_sendig_version_datasets_dataset_variables_get(version, dataset)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_variables_get: #{e}"
end
```

#### Using the mdr_sendig_version_datasets_dataset_variables_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendigDatasetVariables>, Integer, Hash)> mdr_sendig_version_datasets_dataset_variables_get_with_http_info(version, dataset)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sendig_version_datasets_dataset_variables_get_with_http_info(version, dataset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendigDatasetVariables>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_variables_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **dataset** | **String** | SENDIG Class Identifier |  |

### Return type

[**SendigDatasetVariables**](SendigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sendig_version_datasets_dataset_variables_var_get

> <SendigDatasetVariable> mdr_sendig_version_datasets_dataset_variables_var_get(version, dataset, var)



Get SENDIG Dataset Variable

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

api_instance = OpenapiClient::SENDImplementationGuideSENDIGApi.new
version = '3-1' # String | CDISC Library Product Version
dataset = 'VS' # String | SENDIG Class Identifier
var = 'VSTEST' # String | SENDIG Variable Identifier

begin
  
  result = api_instance.mdr_sendig_version_datasets_dataset_variables_var_get(version, dataset, var)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_variables_var_get: #{e}"
end
```

#### Using the mdr_sendig_version_datasets_dataset_variables_var_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendigDatasetVariable>, Integer, Hash)> mdr_sendig_version_datasets_dataset_variables_var_get_with_http_info(version, dataset, var)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sendig_version_datasets_dataset_variables_var_get_with_http_info(version, dataset, var)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendigDatasetVariable>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_variables_var_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **dataset** | **String** | SENDIG Class Identifier |  |
| **var** | **String** | SENDIG Variable Identifier |  |

### Return type

[**SendigDatasetVariable**](SendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sendig_version_datasets_get

> <SendigDatasets> mdr_sendig_version_datasets_get(version)



Get SENDIG Dataset List

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

api_instance = OpenapiClient::SENDImplementationGuideSENDIGApi.new
version = '3-1' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_sendig_version_datasets_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_get: #{e}"
end
```

#### Using the mdr_sendig_version_datasets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendigDatasets>, Integer, Hash)> mdr_sendig_version_datasets_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sendig_version_datasets_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendigDatasets>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**SendigDatasets**](SendigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv


## mdr_sendig_version_get

> <SendigProduct> mdr_sendig_version_get(version)



Get SENDIG product

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

api_instance = OpenapiClient::SENDImplementationGuideSENDIGApi.new
version = '3-1' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_sendig_version_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_get: #{e}"
end
```

#### Using the mdr_sendig_version_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendigProduct>, Integer, Hash)> mdr_sendig_version_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sendig_version_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendigProduct>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**SendigProduct**](SendigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

