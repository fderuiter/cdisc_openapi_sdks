# OpenapiClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mdr_cdash_version_classes_class_domains_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_classes_class_domains_get) | **GET** /mdr/cdash/{version}/classes/{class}/domains |  |
| [**mdr_cdash_version_classes_class_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_classes_class_fields_field_get) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} |  |
| [**mdr_cdash_version_classes_class_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_classes_class_get) | **GET** /mdr/cdash/{version}/classes/{class} |  |
| [**mdr_cdash_version_classes_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_classes_get) | **GET** /mdr/cdash/{version}/classes |  |
| [**mdr_cdash_version_domains_domain_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_domains_domain_fields_field_get) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} |  |
| [**mdr_cdash_version_domains_domain_fields_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_domains_domain_fields_get) | **GET** /mdr/cdash/{version}/domains/{domain}/fields |  |
| [**mdr_cdash_version_domains_domain_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_domains_domain_get) | **GET** /mdr/cdash/{version}/domains/{domain} |  |
| [**mdr_cdash_version_domains_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_domains_get) | **GET** /mdr/cdash/{version}/domains |  |
| [**mdr_cdash_version_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_get) | **GET** /mdr/cdash/{version} |  |
| [**mdr_root_cdash_classes_class_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_root_cdash_classes_class_fields_field_get) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} |  |
| [**mdr_root_cdash_domains_domain_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_root_cdash_domains_domain_fields_field_get) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} |  |


## mdr_cdash_version_classes_class_domains_get

> <CdashClassDomains> mdr_cdash_version_classes_class_domains_get(version, _class)



Get CDASH Class Domain List

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

api_instance = OpenapiClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new
version = '1-1' # String | CDISC Library Product Version
_class = 'SpecialPurpose' # String | CDASH Class Identifier

begin
  
  result = api_instance.mdr_cdash_version_classes_class_domains_get(version, _class)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_domains_get: #{e}"
end
```

#### Using the mdr_cdash_version_classes_class_domains_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashClassDomains>, Integer, Hash)> mdr_cdash_version_classes_class_domains_get_with_http_info(version, _class)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdash_version_classes_class_domains_get_with_http_info(version, _class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashClassDomains>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_domains_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | CDASH Class Identifier |  |

### Return type

[**CdashClassDomains**](CdashClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdash_version_classes_class_fields_field_get

> <CdashClassField> mdr_cdash_version_classes_class_fields_field_get(version, _class, field)



Get CDASH Class Field

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

api_instance = OpenapiClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new
version = '1-1' # String | CDISC Library Product Version
_class = 'Timing' # String | CDASH Class Identifier
field = '--DAT' # String | CDASH Field Identifier

begin
  
  result = api_instance.mdr_cdash_version_classes_class_fields_field_get(version, _class, field)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_fields_field_get: #{e}"
end
```

#### Using the mdr_cdash_version_classes_class_fields_field_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashClassField>, Integer, Hash)> mdr_cdash_version_classes_class_fields_field_get_with_http_info(version, _class, field)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdash_version_classes_class_fields_field_get_with_http_info(version, _class, field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashClassField>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_fields_field_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | CDASH Class Identifier |  |
| **field** | **String** | CDASH Field Identifier |  |

### Return type

[**CdashClassField**](CdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdash_version_classes_class_get

> <CdashClass> mdr_cdash_version_classes_class_get(version, _class)



Get CDASH Class

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

api_instance = OpenapiClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new
version = '1-1' # String | CDISC Library Product Version
_class = 'Timing' # String | CDASH Class Identifier

begin
  
  result = api_instance.mdr_cdash_version_classes_class_get(version, _class)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_get: #{e}"
end
```

#### Using the mdr_cdash_version_classes_class_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashClass>, Integer, Hash)> mdr_cdash_version_classes_class_get_with_http_info(version, _class)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdash_version_classes_class_get_with_http_info(version, _class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashClass>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | CDASH Class Identifier |  |

### Return type

[**CdashClass**](CdashClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdash_version_classes_get

> <CdashProductClasses> mdr_cdash_version_classes_get(version)



Get CDASH Class List

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

api_instance = OpenapiClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new
version = '1-1' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_cdash_version_classes_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_get: #{e}"
end
```

#### Using the mdr_cdash_version_classes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashProductClasses>, Integer, Hash)> mdr_cdash_version_classes_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdash_version_classes_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashProductClasses>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**CdashProductClasses**](CdashProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdash_version_domains_domain_fields_field_get

> <CdashDomainField> mdr_cdash_version_domains_domain_fields_field_get(version, domain, field)



Get CDASH Domain Field

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

api_instance = OpenapiClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new
version = '1-1' # String | CDISC Library Product Version
domain = 'DM' # String | CDASH Domain Identifier
field = 'AGE' # String | CDASH Field Identifier

begin
  
  result = api_instance.mdr_cdash_version_domains_domain_fields_field_get(version, domain, field)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_fields_field_get: #{e}"
end
```

#### Using the mdr_cdash_version_domains_domain_fields_field_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashDomainField>, Integer, Hash)> mdr_cdash_version_domains_domain_fields_field_get_with_http_info(version, domain, field)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdash_version_domains_domain_fields_field_get_with_http_info(version, domain, field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashDomainField>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_fields_field_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **domain** | **String** | CDASH Domain Identifier |  |
| **field** | **String** | CDASH Field Identifier |  |

### Return type

[**CdashDomainField**](CdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdash_version_domains_domain_fields_get

> <CdashDomainFields> mdr_cdash_version_domains_domain_fields_get(version, domain)



Get CDASH Domain Field List

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

api_instance = OpenapiClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new
version = '1-1' # String | CDISC Library Product Version
domain = 'DM' # String | CDASH Domain Identifier

begin
  
  result = api_instance.mdr_cdash_version_domains_domain_fields_get(version, domain)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_fields_get: #{e}"
end
```

#### Using the mdr_cdash_version_domains_domain_fields_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashDomainFields>, Integer, Hash)> mdr_cdash_version_domains_domain_fields_get_with_http_info(version, domain)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdash_version_domains_domain_fields_get_with_http_info(version, domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashDomainFields>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_fields_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **domain** | **String** | CDASH Domain Identifier |  |

### Return type

[**CdashDomainFields**](CdashDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdash_version_domains_domain_get

> <CdashDomain> mdr_cdash_version_domains_domain_get(version, domain)



Get CDASH Domain

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

api_instance = OpenapiClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new
version = '1-1' # String | CDISC Library Product Version
domain = 'DM' # String | CDASH Domain Identifier

begin
  
  result = api_instance.mdr_cdash_version_domains_domain_get(version, domain)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_get: #{e}"
end
```

#### Using the mdr_cdash_version_domains_domain_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashDomain>, Integer, Hash)> mdr_cdash_version_domains_domain_get_with_http_info(version, domain)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdash_version_domains_domain_get_with_http_info(version, domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashDomain>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **domain** | **String** | CDASH Domain Identifier |  |

### Return type

[**CdashDomain**](CdashDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdash_version_domains_get

> <CdashProductDomains> mdr_cdash_version_domains_get(version)



Get CDASH Domain List

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

api_instance = OpenapiClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new
version = '1-1' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_cdash_version_domains_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_get: #{e}"
end
```

#### Using the mdr_cdash_version_domains_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashProductDomains>, Integer, Hash)> mdr_cdash_version_domains_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdash_version_domains_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashProductDomains>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**CdashProductDomains**](CdashProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdash_version_get

> <CdashProduct> mdr_cdash_version_get(version)



Get CDASH Product

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

api_instance = OpenapiClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new
version = '1-1' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_cdash_version_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_get: #{e}"
end
```

#### Using the mdr_cdash_version_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashProduct>, Integer, Hash)> mdr_cdash_version_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdash_version_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashProduct>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**CdashProduct**](CdashProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet


## mdr_root_cdash_classes_class_fields_field_get

> <RootCdashClassField> mdr_root_cdash_classes_class_fields_field_get(_class, field)



Get Root CDASH Class Field

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

api_instance = OpenapiClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new
_class = 'Timing' # String | CDASH Class Identifier
field = '--DAT' # String | CDASH Field Identifier

begin
  
  result = api_instance.mdr_root_cdash_classes_class_fields_field_get(_class, field)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_root_cdash_classes_class_fields_field_get: #{e}"
end
```

#### Using the mdr_root_cdash_classes_class_fields_field_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RootCdashClassField>, Integer, Hash)> mdr_root_cdash_classes_class_fields_field_get_with_http_info(_class, field)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_root_cdash_classes_class_fields_field_get_with_http_info(_class, field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RootCdashClassField>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_root_cdash_classes_class_fields_field_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | CDASH Class Identifier |  |
| **field** | **String** | CDASH Field Identifier |  |

### Return type

[**RootCdashClassField**](RootCdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_root_cdash_domains_domain_fields_field_get

> <RootCdashDomainField> mdr_root_cdash_domains_domain_fields_field_get(domain, field)



Get Root CDASH Domain Field

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

api_instance = OpenapiClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new
domain = 'DM' # String | CDASH Domain Identifier
field = 'AGE' # String | CDASH Field Identifier

begin
  
  result = api_instance.mdr_root_cdash_domains_domain_fields_field_get(domain, field)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_root_cdash_domains_domain_fields_field_get: #{e}"
end
```

#### Using the mdr_root_cdash_domains_domain_fields_field_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RootCdashDomainField>, Integer, Hash)> mdr_root_cdash_domains_domain_fields_field_get_with_http_info(domain, field)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_root_cdash_domains_domain_fields_field_get_with_http_info(domain, field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RootCdashDomainField>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_root_cdash_domains_domain_fields_field_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | CDASH Domain Identifier |  |
| **field** | **String** | CDASH Field Identifier |  |

### Return type

[**RootCdashDomainField**](RootCdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

