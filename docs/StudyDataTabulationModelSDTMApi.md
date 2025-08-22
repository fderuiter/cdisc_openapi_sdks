# OpenapiClient::StudyDataTabulationModelSDTMApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mdr_root_sdtm_classes_class_variables_var_get**](StudyDataTabulationModelSDTMApi.md#mdr_root_sdtm_classes_class_variables_var_get) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} |  |
| [**mdr_root_sdtm_datasets_dataset_variables_var_get**](StudyDataTabulationModelSDTMApi.md#mdr_root_sdtm_datasets_dataset_variables_var_get) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} |  |
| [**mdr_sdtm_version_classes_class_datasets_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_class_datasets_get) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets |  |
| [**mdr_sdtm_version_classes_class_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_class_get) | **GET** /mdr/sdtm/{version}/classes/{class} |  |
| [**mdr_sdtm_version_classes_class_variables_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_class_variables_get) | **GET** /mdr/sdtm/{version}/classes/{class}/variables |  |
| [**mdr_sdtm_version_classes_class_variables_var_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_class_variables_var_get) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} |  |
| [**mdr_sdtm_version_classes_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_get) | **GET** /mdr/sdtm/{version}/classes |  |
| [**mdr_sdtm_version_datasets_dataset_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_datasets_dataset_get) | **GET** /mdr/sdtm/{version}/datasets/{dataset} |  |
| [**mdr_sdtm_version_datasets_dataset_variables_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_datasets_dataset_variables_get) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables |  |
| [**mdr_sdtm_version_datasets_dataset_variables_var_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_datasets_dataset_variables_var_get) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} |  |
| [**mdr_sdtm_version_datasets_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_datasets_get) | **GET** /mdr/sdtm/{version}/datasets |  |
| [**mdr_sdtm_version_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_get) | **GET** /mdr/sdtm/{version} |  |


## mdr_root_sdtm_classes_class_variables_var_get

> <RootSdtmClassVariable> mdr_root_sdtm_classes_class_variables_var_get(_class, var)



Get Root of SDTM Class Variable

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

api_instance = OpenapiClient::StudyDataTabulationModelSDTMApi.new
_class = 'GeneralObservations' # String | SDTM Class Identifier
var = '--DTC' # String | SDTM Variable Identifier

begin
  
  result = api_instance.mdr_root_sdtm_classes_class_variables_var_get(_class, var)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_root_sdtm_classes_class_variables_var_get: #{e}"
end
```

#### Using the mdr_root_sdtm_classes_class_variables_var_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RootSdtmClassVariable>, Integer, Hash)> mdr_root_sdtm_classes_class_variables_var_get_with_http_info(_class, var)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_root_sdtm_classes_class_variables_var_get_with_http_info(_class, var)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RootSdtmClassVariable>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_root_sdtm_classes_class_variables_var_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | SDTM Class Identifier |  |
| **var** | **String** | SDTM Variable Identifier |  |

### Return type

[**RootSdtmClassVariable**](RootSdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_root_sdtm_datasets_dataset_variables_var_get

> <RootSdtmDatasetVariable> mdr_root_sdtm_datasets_dataset_variables_var_get(dataset, var)



Get Root SDTM Dataset Variable

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

api_instance = OpenapiClient::StudyDataTabulationModelSDTMApi.new
dataset = 'DM' # String | SDTM Dataset Identifier
var = 'SUBJID' # String | SDTM Variable Identifier

begin
  
  result = api_instance.mdr_root_sdtm_datasets_dataset_variables_var_get(dataset, var)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_root_sdtm_datasets_dataset_variables_var_get: #{e}"
end
```

#### Using the mdr_root_sdtm_datasets_dataset_variables_var_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RootSdtmDatasetVariable>, Integer, Hash)> mdr_root_sdtm_datasets_dataset_variables_var_get_with_http_info(dataset, var)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_root_sdtm_datasets_dataset_variables_var_get_with_http_info(dataset, var)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RootSdtmDatasetVariable>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_root_sdtm_datasets_dataset_variables_var_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dataset** | **String** | SDTM Dataset Identifier |  |
| **var** | **String** | SDTM Variable Identifier |  |

### Return type

[**RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtm_version_classes_class_datasets_get

> <SdtmClassDatasets> mdr_sdtm_version_classes_class_datasets_get(version, _class)



Get SDTM Class Dataset List

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

api_instance = OpenapiClient::StudyDataTabulationModelSDTMApi.new
version = '1-8' # String | CDISC Library Product Version
_class = 'SpecialPurpose' # String | SDTM Class Identifier

begin
  
  result = api_instance.mdr_sdtm_version_classes_class_datasets_get(version, _class)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_datasets_get: #{e}"
end
```

#### Using the mdr_sdtm_version_classes_class_datasets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmClassDatasets>, Integer, Hash)> mdr_sdtm_version_classes_class_datasets_get_with_http_info(version, _class)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtm_version_classes_class_datasets_get_with_http_info(version, _class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmClassDatasets>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_datasets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | SDTM Class Identifier |  |

### Return type

[**SdtmClassDatasets**](SdtmClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtm_version_classes_class_get

> <SdtmClass> mdr_sdtm_version_classes_class_get(version, _class)



Get SDTM Class

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

api_instance = OpenapiClient::StudyDataTabulationModelSDTMApi.new
version = '1-8' # String | CDISC Library Product Version
_class = 'Findings' # String | SDTM Class Identifier

begin
  
  result = api_instance.mdr_sdtm_version_classes_class_get(version, _class)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_get: #{e}"
end
```

#### Using the mdr_sdtm_version_classes_class_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmClass>, Integer, Hash)> mdr_sdtm_version_classes_class_get_with_http_info(version, _class)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtm_version_classes_class_get_with_http_info(version, _class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmClass>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | SDTM Class Identifier |  |

### Return type

[**SdtmClass**](SdtmClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtm_version_classes_class_variables_get

> <SdtmClassVariables> mdr_sdtm_version_classes_class_variables_get(version, _class)



Get SDTM Class Variable List

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

api_instance = OpenapiClient::StudyDataTabulationModelSDTMApi.new
version = '1-8' # String | CDISC Library Product Version
_class = 'GeneralObservations' # String | SDTM Class Identifier

begin
  
  result = api_instance.mdr_sdtm_version_classes_class_variables_get(version, _class)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_variables_get: #{e}"
end
```

#### Using the mdr_sdtm_version_classes_class_variables_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmClassVariables>, Integer, Hash)> mdr_sdtm_version_classes_class_variables_get_with_http_info(version, _class)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtm_version_classes_class_variables_get_with_http_info(version, _class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmClassVariables>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_variables_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | SDTM Class Identifier |  |

### Return type

[**SdtmClassVariables**](SdtmClassVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtm_version_classes_class_variables_var_get

> <SdtmClassVariable> mdr_sdtm_version_classes_class_variables_var_get(version, _class, var)



Get SDTM Class Variable

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

api_instance = OpenapiClient::StudyDataTabulationModelSDTMApi.new
version = '1-8' # String | CDISC Library Product Version
_class = 'GeneralObservations' # String | SDTM Class Identifier
var = '--DTC' # String | SDTM Variable Identifier

begin
  
  result = api_instance.mdr_sdtm_version_classes_class_variables_var_get(version, _class, var)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_variables_var_get: #{e}"
end
```

#### Using the mdr_sdtm_version_classes_class_variables_var_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmClassVariable>, Integer, Hash)> mdr_sdtm_version_classes_class_variables_var_get_with_http_info(version, _class, var)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtm_version_classes_class_variables_var_get_with_http_info(version, _class, var)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmClassVariable>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_variables_var_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | SDTM Class Identifier |  |
| **var** | **String** | SDTM Variable Identifier |  |

### Return type

[**SdtmClassVariable**](SdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtm_version_classes_get

> <SdtmClasses> mdr_sdtm_version_classes_get(version)



Get SDTM Class List

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

api_instance = OpenapiClient::StudyDataTabulationModelSDTMApi.new
version = '1-8' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_sdtm_version_classes_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_get: #{e}"
end
```

#### Using the mdr_sdtm_version_classes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmClasses>, Integer, Hash)> mdr_sdtm_version_classes_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtm_version_classes_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmClasses>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**SdtmClasses**](SdtmClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtm_version_datasets_dataset_get

> <SdtmDataset> mdr_sdtm_version_datasets_dataset_get(version, dataset)



Get SDTM Dataset

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

api_instance = OpenapiClient::StudyDataTabulationModelSDTMApi.new
version = '1-8' # String | CDISC Library Product Version
dataset = 'DM' # String | SDTM Dataset Identifier

begin
  
  result = api_instance.mdr_sdtm_version_datasets_dataset_get(version, dataset)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_get: #{e}"
end
```

#### Using the mdr_sdtm_version_datasets_dataset_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmDataset>, Integer, Hash)> mdr_sdtm_version_datasets_dataset_get_with_http_info(version, dataset)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtm_version_datasets_dataset_get_with_http_info(version, dataset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmDataset>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **dataset** | **String** | SDTM Dataset Identifier |  |

### Return type

[**SdtmDataset**](SdtmDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtm_version_datasets_dataset_variables_get

> <SdtmDatasetVariables> mdr_sdtm_version_datasets_dataset_variables_get(version, dataset)



Get SDTM Dataset Variable List

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

api_instance = OpenapiClient::StudyDataTabulationModelSDTMApi.new
version = '1-8' # String | CDISC Library Product Version
dataset = 'DM' # String | SDTM Dataset Identifier

begin
  
  result = api_instance.mdr_sdtm_version_datasets_dataset_variables_get(version, dataset)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_variables_get: #{e}"
end
```

#### Using the mdr_sdtm_version_datasets_dataset_variables_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmDatasetVariables>, Integer, Hash)> mdr_sdtm_version_datasets_dataset_variables_get_with_http_info(version, dataset)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtm_version_datasets_dataset_variables_get_with_http_info(version, dataset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmDatasetVariables>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_variables_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **dataset** | **String** | SDTM Dataset Identifier |  |

### Return type

[**SdtmDatasetVariables**](SdtmDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtm_version_datasets_dataset_variables_var_get

> <SdtmDatasetVariable> mdr_sdtm_version_datasets_dataset_variables_var_get(version, dataset, var)



Get SDTM Dataset Variable

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

api_instance = OpenapiClient::StudyDataTabulationModelSDTMApi.new
version = '1-8' # String | CDISC Library Product Version
dataset = 'DM' # String | SDTM Dataset Identifier
var = 'SUBJID' # String | SDTM Variable Identifier

begin
  
  result = api_instance.mdr_sdtm_version_datasets_dataset_variables_var_get(version, dataset, var)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_variables_var_get: #{e}"
end
```

#### Using the mdr_sdtm_version_datasets_dataset_variables_var_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmDatasetVariable>, Integer, Hash)> mdr_sdtm_version_datasets_dataset_variables_var_get_with_http_info(version, dataset, var)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtm_version_datasets_dataset_variables_var_get_with_http_info(version, dataset, var)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmDatasetVariable>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_variables_var_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **dataset** | **String** | SDTM Dataset Identifier |  |
| **var** | **String** | SDTM Variable Identifier |  |

### Return type

[**SdtmDatasetVariable**](SdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_sdtm_version_datasets_get

> <SdtmDatasets> mdr_sdtm_version_datasets_get(version)



Get SDTM Dataset List

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

api_instance = OpenapiClient::StudyDataTabulationModelSDTMApi.new
version = '1-8' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_sdtm_version_datasets_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_get: #{e}"
end
```

#### Using the mdr_sdtm_version_datasets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmDatasets>, Integer, Hash)> mdr_sdtm_version_datasets_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtm_version_datasets_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmDatasets>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**SdtmDatasets**](SdtmDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv


## mdr_sdtm_version_get

> <SdtmProduct> mdr_sdtm_version_get(version)



Get SDTM product

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

api_instance = OpenapiClient::StudyDataTabulationModelSDTMApi.new
version = '1-8' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_sdtm_version_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_get: #{e}"
end
```

#### Using the mdr_sdtm_version_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdtmProduct>, Integer, Hash)> mdr_sdtm_version_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_sdtm_version_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdtmProduct>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**SdtmProduct**](SdtmProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

