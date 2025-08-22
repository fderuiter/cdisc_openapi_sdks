# OpenapiClient::SDTMImplementationGuideSDTMIGApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mdr_root_sdtmig_datasets_dataset_variables_var_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_root_sdtmig_datasets_dataset_variables_var_get) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} |  |
| [**mdr_sdtmig_version_classes_class_datasets_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_classes_class_datasets_get) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets |  |
| [**mdr_sdtmig_version_classes_class_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_classes_class_get) | **GET** /mdr/sdtmig/{version}/classes/{class} |  |
| [**mdr_sdtmig_version_classes_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_classes_get) | **GET** /mdr/sdtmig/{version}/classes |  |
| [**mdr_sdtmig_version_datasets_dataset_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_datasets_dataset_get) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} |  |
| [**mdr_sdtmig_version_datasets_dataset_variables_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_datasets_dataset_variables_get) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables |  |
| [**mdr_sdtmig_version_datasets_dataset_variables_var_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_datasets_dataset_variables_var_get) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} |  |
| [**mdr_sdtmig_version_datasets_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_datasets_get) | **GET** /mdr/sdtmig/{version}/datasets |  |
| [**mdr_sdtmig_version_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_get) | **GET** /mdr/sdtmig/{version} |  |


## mdr_root_sdtmig_datasets_dataset_variables_var_get

> <RootSdtmigDatasetVariable> mdr_root_sdtmig_datasets_dataset_variables_var_get(dataset, var)



Get Root SDTMIG Dataset Variable

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

api_instance = OpenapiClient::SDTMImplementationGuideSDTMIGApi.new
dataset = 'DM' # String | SDTMIG Dataset Identifier
var = 'SUBJID' # String | SDTMIG Variable Identifier

begin
  
  result = api_instance.mdr_root_sdtmig_datasets_dataset_variables_var_get(dataset, var)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_root_sdtmig_datasets_dataset_variables_var_get: #{e}"
end
```

#### Using the mdr_root_sdtmig_datasets_dataset_variables_var_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RootSdtmigDatasetVariable>, Integer, Hash)> mdr_root_sdtmig_datasets_dataset_variables_var_get_with_http_info(dataset, var)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_root_sdtmig_datasets_dataset_variables_var_get_with_http_info(dataset, var)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RootSdtmigDatasetVariable>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_root_sdtmig_datasets_dataset_variables_var_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dataset** | **String** | SDTMIG Dataset Identifier |  |
| **var** | **String** | SDTMIG Variable Identifier |  |

### Return type

[**RootSdtmigDatasetVariable**](RootSdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtmig_version_classes_class_datasets_get

> <SdtmigClassDatasets> mdr_sdtmig_version_classes_class_datasets_get(version, _class)



Get SDTMIG Class Dataset List

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

api_instance = OpenapiClient::SDTMImplementationGuideSDTMIGApi.new
version = '3-3' # String | CDISC Library Product Version
_class = 'Findings' # String | SDTMIG Class Identifier

begin
  
  result = api_instance.mdr_sdtmig_version_classes_class_datasets_get(version, _class)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_class_datasets_get: #{e}"
end
```

#### Using the mdr_sdtmig_version_classes_class_datasets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmigClassDatasets>, Integer, Hash)> mdr_sdtmig_version_classes_class_datasets_get_with_http_info(version, _class)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtmig_version_classes_class_datasets_get_with_http_info(version, _class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmigClassDatasets>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_class_datasets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | SDTMIG Class Identifier |  |

### Return type

[**SdtmigClassDatasets**](SdtmigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtmig_version_classes_class_get

> <SdtmigClass> mdr_sdtmig_version_classes_class_get(version, _class)



Get SDTMIG Class

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

api_instance = OpenapiClient::SDTMImplementationGuideSDTMIGApi.new
version = '3-3' # String | CDISC Library Product Version
_class = 'Findings' # String | SDTMIG Class Identifier

begin
  
  result = api_instance.mdr_sdtmig_version_classes_class_get(version, _class)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_class_get: #{e}"
end
```

#### Using the mdr_sdtmig_version_classes_class_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmigClass>, Integer, Hash)> mdr_sdtmig_version_classes_class_get_with_http_info(version, _class)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtmig_version_classes_class_get_with_http_info(version, _class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmigClass>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_class_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | SDTMIG Class Identifier |  |

### Return type

[**SdtmigClass**](SdtmigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtmig_version_classes_get

> <SdtmigClasses> mdr_sdtmig_version_classes_get(version)



Get SDTMIG Class List

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

api_instance = OpenapiClient::SDTMImplementationGuideSDTMIGApi.new
version = '3-3' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_sdtmig_version_classes_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_get: #{e}"
end
```

#### Using the mdr_sdtmig_version_classes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmigClasses>, Integer, Hash)> mdr_sdtmig_version_classes_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtmig_version_classes_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmigClasses>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**SdtmigClasses**](SdtmigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtmig_version_datasets_dataset_get

> <SdtmigDataset> mdr_sdtmig_version_datasets_dataset_get(version, dataset)



Get SDTMIG Dataset

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

api_instance = OpenapiClient::SDTMImplementationGuideSDTMIGApi.new
version = '3-3' # String | CDISC Library Product Version
dataset = 'LB' # String | SDTMIG Dataset Identifier

begin
  
  result = api_instance.mdr_sdtmig_version_datasets_dataset_get(version, dataset)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_get: #{e}"
end
```

#### Using the mdr_sdtmig_version_datasets_dataset_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmigDataset>, Integer, Hash)> mdr_sdtmig_version_datasets_dataset_get_with_http_info(version, dataset)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtmig_version_datasets_dataset_get_with_http_info(version, dataset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmigDataset>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **dataset** | **String** | SDTMIG Dataset Identifier |  |

### Return type

[**SdtmigDataset**](SdtmigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtmig_version_datasets_dataset_variables_get

> <SdtmigDatasetVariables> mdr_sdtmig_version_datasets_dataset_variables_get(version, dataset)



Get SDTMIG Dataset Variable List

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

api_instance = OpenapiClient::SDTMImplementationGuideSDTMIGApi.new
version = '3-3' # String | CDISC Library Product Version
dataset = 'LB' # String | SDTMIG Dataset Identifier

begin
  
  result = api_instance.mdr_sdtmig_version_datasets_dataset_variables_get(version, dataset)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_variables_get: #{e}"
end
```

#### Using the mdr_sdtmig_version_datasets_dataset_variables_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmigDatasetVariables>, Integer, Hash)> mdr_sdtmig_version_datasets_dataset_variables_get_with_http_info(version, dataset)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtmig_version_datasets_dataset_variables_get_with_http_info(version, dataset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmigDatasetVariables>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_variables_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **dataset** | **String** | SDTMIG Dataset Identifier |  |

### Return type

[**SdtmigDatasetVariables**](SdtmigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtmig_version_datasets_dataset_variables_var_get

> <SdtmigDatasetVariable> mdr_sdtmig_version_datasets_dataset_variables_var_get(version, dataset, var)



Get SDTMIG Dataset Variable

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

api_instance = OpenapiClient::SDTMImplementationGuideSDTMIGApi.new
version = '3-3' # String | CDISC Library Product Version
dataset = 'LB' # String | SDTMIG Dataset Identifier
var = 'LBDTC' # String | SDTMIG Variable Identifier

begin
  
  result = api_instance.mdr_sdtmig_version_datasets_dataset_variables_var_get(version, dataset, var)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_variables_var_get: #{e}"
end
```

#### Using the mdr_sdtmig_version_datasets_dataset_variables_var_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmigDatasetVariable>, Integer, Hash)> mdr_sdtmig_version_datasets_dataset_variables_var_get_with_http_info(version, dataset, var)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtmig_version_datasets_dataset_variables_var_get_with_http_info(version, dataset, var)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmigDatasetVariable>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_variables_var_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **dataset** | **String** | SDTMIG Dataset Identifier |  |
| **var** | **String** | SDTMIG Variable Identifier |  |

### Return type

[**SdtmigDatasetVariable**](SdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtmig_version_datasets_get

> <SdtmigDatasets> mdr_sdtmig_version_datasets_get(version)



Get SDTMIG Dataset List

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

api_instance = OpenapiClient::SDTMImplementationGuideSDTMIGApi.new
version = '3-3' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_sdtmig_version_datasets_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_get: #{e}"
end
```

#### Using the mdr_sdtmig_version_datasets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmigDatasets>, Integer, Hash)> mdr_sdtmig_version_datasets_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtmig_version_datasets_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmigDatasets>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**SdtmigDatasets**](SdtmigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv


## mdr_sdtmig_version_get

> <SdtmigProduct> mdr_sdtmig_version_get(version)



Get SDTMIG product

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

api_instance = OpenapiClient::SDTMImplementationGuideSDTMIGApi.new
version = '3-3' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_sdtmig_version_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_get: #{e}"
end
```

#### Using the mdr_sdtmig_version_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmigProduct>, Integer, Hash)> mdr_sdtmig_version_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtmig_version_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmigProduct>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**SdtmigProduct**](SdtmigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

