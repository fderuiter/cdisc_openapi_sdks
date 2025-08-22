# OpenapiClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mdr_adam_product_datastructures_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_get) | **GET** /mdr/adam/{product}/datastructures |  |
| [**mdr_adam_product_datastructures_structure_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_get) | **GET** /mdr/adam/{product}/datastructures/{structure} |  |
| [**mdr_adam_product_datastructures_structure_variables_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_variables_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables |  |
| [**mdr_adam_product_datastructures_structure_variables_var_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_variables_var_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} |  |
| [**mdr_adam_product_datastructures_structure_varsets_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_varsets_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets |  |
| [**mdr_adam_product_datastructures_structure_varsets_varset_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_varsets_varset_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} |  |
| [**mdr_adam_product_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_get) | **GET** /mdr/adam/{product} |  |


## mdr_adam_product_datastructures_get

> <AdamProductDatastructures> mdr_adam_product_datastructures_get(product)



Get ADaM Data Structure List

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

api_instance = OpenapiClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new
product = 'adamig-1-1' # String | CDISC Library Product

begin
  
  result = api_instance.mdr_adam_product_datastructures_get(product)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_get: #{e}"
end
```

#### Using the mdr_adam_product_datastructures_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdamProductDatastructures>, Integer, Hash)> mdr_adam_product_datastructures_get_with_http_info(product)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_adam_product_datastructures_get_with_http_info(product)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdamProductDatastructures>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | CDISC Library Product |  |

### Return type

[**AdamProductDatastructures**](AdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv


## mdr_adam_product_datastructures_structure_get

> <AdamDatastructure> mdr_adam_product_datastructures_structure_get(product, structure)



Get ADaM Data Structure

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

api_instance = OpenapiClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new
product = 'adamig-1-1' # String | CDISC Library Product
structure = 'ADSL' # String | Data structure Identifier

begin
  
  result = api_instance.mdr_adam_product_datastructures_structure_get(product, structure)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_get: #{e}"
end
```

#### Using the mdr_adam_product_datastructures_structure_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdamDatastructure>, Integer, Hash)> mdr_adam_product_datastructures_structure_get_with_http_info(product, structure)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_adam_product_datastructures_structure_get_with_http_info(product, structure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdamDatastructure>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | CDISC Library Product |  |
| **structure** | **String** | Data structure Identifier |  |

### Return type

[**AdamDatastructure**](AdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_adam_product_datastructures_structure_variables_get

> <AdamDatastructureVariables> mdr_adam_product_datastructures_structure_variables_get(product, structure)



Get ADaM Variable List

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

api_instance = OpenapiClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new
product = 'adamig-1-1' # String | CDISC Library Product
structure = 'ADSL' # String | ADaM Data Structure Identifier

begin
  
  result = api_instance.mdr_adam_product_datastructures_structure_variables_get(product, structure)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_variables_get: #{e}"
end
```

#### Using the mdr_adam_product_datastructures_structure_variables_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdamDatastructureVariables>, Integer, Hash)> mdr_adam_product_datastructures_structure_variables_get_with_http_info(product, structure)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_adam_product_datastructures_structure_variables_get_with_http_info(product, structure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdamDatastructureVariables>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_variables_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | CDISC Library Product |  |
| **structure** | **String** | ADaM Data Structure Identifier |  |

### Return type

[**AdamDatastructureVariables**](AdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_adam_product_datastructures_structure_variables_var_get

> <AdamVariable> mdr_adam_product_datastructures_structure_variables_var_get(product, structure, var)



Get ADaM Variable

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

api_instance = OpenapiClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new
product = 'adamig-1-1' # String | CDISC Library Product
structure = 'ADSL' # String | ADaM Data Structure Identifier
var = 'SITEGRy' # String | ADaM Variable Identifier

begin
  
  result = api_instance.mdr_adam_product_datastructures_structure_variables_var_get(product, structure, var)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_variables_var_get: #{e}"
end
```

#### Using the mdr_adam_product_datastructures_structure_variables_var_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdamVariable>, Integer, Hash)> mdr_adam_product_datastructures_structure_variables_var_get_with_http_info(product, structure, var)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_adam_product_datastructures_structure_variables_var_get_with_http_info(product, structure, var)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdamVariable>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_variables_var_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | CDISC Library Product |  |
| **structure** | **String** | ADaM Data Structure Identifier |  |
| **var** | **String** | ADaM Variable Identifier |  |

### Return type

[**AdamVariable**](AdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_adam_product_datastructures_structure_varsets_get

> <AdamDatastructureVarsets> mdr_adam_product_datastructures_structure_varsets_get(product, structure)



Get ADaM Variable Set List

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

api_instance = OpenapiClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new
product = 'adamig-1-1' # String | CDISC Library Product
structure = 'ADSL' # String | ADaM Data Structure Identifier

begin
  
  result = api_instance.mdr_adam_product_datastructures_structure_varsets_get(product, structure)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_varsets_get: #{e}"
end
```

#### Using the mdr_adam_product_datastructures_structure_varsets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdamDatastructureVarsets>, Integer, Hash)> mdr_adam_product_datastructures_structure_varsets_get_with_http_info(product, structure)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_adam_product_datastructures_structure_varsets_get_with_http_info(product, structure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdamDatastructureVarsets>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_varsets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | CDISC Library Product |  |
| **structure** | **String** | ADaM Data Structure Identifier |  |

### Return type

[**AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_adam_product_datastructures_structure_varsets_varset_get

> <AdamVarset> mdr_adam_product_datastructures_structure_varsets_varset_get(product, structure, varset)



Get ADaM Variable Set

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

api_instance = OpenapiClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new
product = 'adamig-1-1' # String | CDISC Library Product
structure = 'ADSL' # String | ADaM Data Structure Identifier
varset = 'Identifier' # String | ADaM Variable Set Identifier

begin
  
  result = api_instance.mdr_adam_product_datastructures_structure_varsets_varset_get(product, structure, varset)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_varsets_varset_get: #{e}"
end
```

#### Using the mdr_adam_product_datastructures_structure_varsets_varset_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdamVarset>, Integer, Hash)> mdr_adam_product_datastructures_structure_varsets_varset_get_with_http_info(product, structure, varset)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_adam_product_datastructures_structure_varsets_varset_get_with_http_info(product, structure, varset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdamVarset>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_varsets_varset_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | CDISC Library Product |  |
| **structure** | **String** | ADaM Data Structure Identifier |  |
| **varset** | **String** | ADaM Variable Set Identifier |  |

### Return type

[**AdamVarset**](AdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_adam_product_get

> <AdamProduct> mdr_adam_product_get(product)



Get ADaM Product

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

api_instance = OpenapiClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new
product = 'adamig-1-1' # String | CDISC Library Product

begin
  
  result = api_instance.mdr_adam_product_get(product)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_get: #{e}"
end
```

#### Using the mdr_adam_product_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdamProduct>, Integer, Hash)> mdr_adam_product_get_with_http_info(product)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_adam_product_get_with_http_info(product)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdamProduct>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | CDISC Library Product |  |

### Return type

[**AdamProduct**](AdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

