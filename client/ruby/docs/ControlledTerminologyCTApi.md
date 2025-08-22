# OpenapiClient::ControlledTerminologyCTApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mdr_ct_packages_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_get) | **GET** /mdr/ct/packages |  |
| [**mdr_ct_packages_package_codelists_codelist_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_package_codelists_codelist_get) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} |  |
| [**mdr_ct_packages_package_codelists_codelist_terms_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_package_codelists_codelist_terms_get) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms |  |
| [**mdr_ct_packages_package_codelists_codelist_terms_term_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_package_codelists_codelist_terms_term_get) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} |  |
| [**mdr_ct_packages_package_codelists_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_package_codelists_get) | **GET** /mdr/ct/packages/{package}/codelists |  |
| [**mdr_ct_packages_product_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_product_get) | **GET** /mdr/ct/packages/{product} |  |
| [**mdr_root_ct_product_group_codelists_codelist_get**](ControlledTerminologyCTApi.md#mdr_root_ct_product_group_codelists_codelist_get) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} |  |
| [**mdr_root_ct_product_group_codelists_codelist_terms_term_get**](ControlledTerminologyCTApi.md#mdr_root_ct_product_group_codelists_codelist_terms_term_get) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} |  |


## mdr_ct_packages_get

> <CtPackages> mdr_ct_packages_get



Get CDISC Library CT Package List

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

api_instance = OpenapiClient::ControlledTerminologyCTApi.new

begin
  
  result = api_instance.mdr_ct_packages_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_ct_packages_get: #{e}"
end
```

#### Using the mdr_ct_packages_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CtPackages>, Integer, Hash)> mdr_ct_packages_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_ct_packages_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CtPackages>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_ct_packages_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CtPackages**](CtPackages.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_ct_packages_package_codelists_codelist_get

> <CtCodelist> mdr_ct_packages_package_codelists_codelist_get(package, codelist)



Get CDISC Library CT Package Codelist

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

api_instance = OpenapiClient::ControlledTerminologyCTApi.new
package = 'sdtmct-2019-12-20' # String | CT Package Identifier
codelist = 'C67154' # String | CT Codelist Identifier

begin
  
  result = api_instance.mdr_ct_packages_package_codelists_codelist_get(package, codelist)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_get: #{e}"
end
```

#### Using the mdr_ct_packages_package_codelists_codelist_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CtCodelist>, Integer, Hash)> mdr_ct_packages_package_codelists_codelist_get_with_http_info(package, codelist)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_ct_packages_package_codelists_codelist_get_with_http_info(package, codelist)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CtCodelist>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package** | **String** | CT Package Identifier |  |
| **codelist** | **String** | CT Codelist Identifier |  |

### Return type

[**CtCodelist**](CtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_ct_packages_package_codelists_codelist_terms_get

> <CtCodelistTerms> mdr_ct_packages_package_codelists_codelist_terms_get(package, codelist)



Get CDISC Library CT Package Codelist Term List

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

api_instance = OpenapiClient::ControlledTerminologyCTApi.new
package = 'sdtmct-2019-12-20' # String | CT Package Identifier
codelist = 'C67154' # String | CT Codelist Identifier

begin
  
  result = api_instance.mdr_ct_packages_package_codelists_codelist_terms_get(package, codelist)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_terms_get: #{e}"
end
```

#### Using the mdr_ct_packages_package_codelists_codelist_terms_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CtCodelistTerms>, Integer, Hash)> mdr_ct_packages_package_codelists_codelist_terms_get_with_http_info(package, codelist)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_ct_packages_package_codelists_codelist_terms_get_with_http_info(package, codelist)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CtCodelistTerms>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_terms_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package** | **String** | CT Package Identifier |  |
| **codelist** | **String** | CT Codelist Identifier |  |

### Return type

[**CtCodelistTerms**](CtCodelistTerms.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_ct_packages_package_codelists_codelist_terms_term_get

> <CtTerm> mdr_ct_packages_package_codelists_codelist_terms_term_get(package, codelist, term)



Get CDISC Library CT Package Codelist Term

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

api_instance = OpenapiClient::ControlledTerminologyCTApi.new
package = 'sdtmct-2019-12-20' # String | CT Package Product Identifier
codelist = 'C67154' # String | CT Codelist Identifier
term = 'C64796' # String | CT Codelist Term Identifier

begin
  
  result = api_instance.mdr_ct_packages_package_codelists_codelist_terms_term_get(package, codelist, term)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_terms_term_get: #{e}"
end
```

#### Using the mdr_ct_packages_package_codelists_codelist_terms_term_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CtTerm>, Integer, Hash)> mdr_ct_packages_package_codelists_codelist_terms_term_get_with_http_info(package, codelist, term)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_ct_packages_package_codelists_codelist_terms_term_get_with_http_info(package, codelist, term)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CtTerm>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_terms_term_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package** | **String** | CT Package Product Identifier |  |
| **codelist** | **String** | CT Codelist Identifier |  |
| **term** | **String** | CT Codelist Term Identifier |  |

### Return type

[**CtTerm**](CtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_ct_packages_package_codelists_get

> <CtPackageCodelists> mdr_ct_packages_package_codelists_get(package)



Get CDISC Library CT Package Codelist List

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

api_instance = OpenapiClient::ControlledTerminologyCTApi.new
package = 'sdtmct-2019-12-20' # String | CT Package Identifier

begin
  
  result = api_instance.mdr_ct_packages_package_codelists_get(package)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_get: #{e}"
end
```

#### Using the mdr_ct_packages_package_codelists_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CtPackageCodelists>, Integer, Hash)> mdr_ct_packages_package_codelists_get_with_http_info(package)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_ct_packages_package_codelists_get_with_http_info(package)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CtPackageCodelists>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package** | **String** | CT Package Identifier |  |

### Return type

[**CtPackageCodelists**](CtPackageCodelists.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_ct_packages_product_get

> <CtPackage> mdr_ct_packages_product_get(product)



Get CDISC Library CT Package

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

api_instance = OpenapiClient::ControlledTerminologyCTApi.new
product = 'sdtmct-2019-12-20' # String | CT Package Product Identifier

begin
  
  result = api_instance.mdr_ct_packages_product_get(product)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_ct_packages_product_get: #{e}"
end
```

#### Using the mdr_ct_packages_product_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CtPackage>, Integer, Hash)> mdr_ct_packages_product_get_with_http_info(product)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_ct_packages_product_get_with_http_info(product)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CtPackage>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_ct_packages_product_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | CT Package Product Identifier |  |

### Return type

[**CtPackage**](CtPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet


## mdr_root_ct_product_group_codelists_codelist_get

> <RootCtCodelist> mdr_root_ct_product_group_codelists_codelist_get(product_group, codelist)



Get CDISC Library Root CT Codelist

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

api_instance = OpenapiClient::ControlledTerminologyCTApi.new
product_group = 'sdtmct' # String | CT Product Group Identifier
codelist = 'C67154' # String | CT Codelist Identifier

begin
  
  result = api_instance.mdr_root_ct_product_group_codelists_codelist_get(product_group, codelist)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_root_ct_product_group_codelists_codelist_get: #{e}"
end
```

#### Using the mdr_root_ct_product_group_codelists_codelist_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RootCtCodelist>, Integer, Hash)> mdr_root_ct_product_group_codelists_codelist_get_with_http_info(product_group, codelist)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_root_ct_product_group_codelists_codelist_get_with_http_info(product_group, codelist)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RootCtCodelist>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_root_ct_product_group_codelists_codelist_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_group** | **String** | CT Product Group Identifier |  |
| **codelist** | **String** | CT Codelist Identifier |  |

### Return type

[**RootCtCodelist**](RootCtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_root_ct_product_group_codelists_codelist_terms_term_get

> <RootCtTerm> mdr_root_ct_product_group_codelists_codelist_terms_term_get(product_group, codelist, term)



Get CDISC Library Root CT Term

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

api_instance = OpenapiClient::ControlledTerminologyCTApi.new
product_group = 'sdtmct' # String | CT Product Group Identifier
codelist = 'C67154' # String | CT Codelist Identifier
term = 'C64796' # String | CT Codelist Term Identifier

begin
  
  result = api_instance.mdr_root_ct_product_group_codelists_codelist_terms_term_get(product_group, codelist, term)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_root_ct_product_group_codelists_codelist_terms_term_get: #{e}"
end
```

#### Using the mdr_root_ct_product_group_codelists_codelist_terms_term_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RootCtTerm>, Integer, Hash)> mdr_root_ct_product_group_codelists_codelist_terms_term_get_with_http_info(product_group, codelist, term)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_root_ct_product_group_codelists_codelist_terms_term_get_with_http_info(product_group, codelist, term)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RootCtTerm>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ControlledTerminologyCTApi->mdr_root_ct_product_group_codelists_codelist_terms_term_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_group** | **String** | CT Product Group Identifier |  |
| **codelist** | **String** | CT Codelist Identifier |  |
| **term** | **String** | CT Codelist Term Identifier |  |

### Return type

[**RootCtTerm**](RootCtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

