# OpenapiClient::CDASHImplementationGuideCDASHIGApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mdr_cdashig_version_classes_class_domains_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_classes_class_domains_get) | **GET** /mdr/cdashig/{version}/classes/{class}/domains |  |
| [**mdr_cdashig_version_classes_class_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_classes_class_get) | **GET** /mdr/cdashig/{version}/classes/{class} |  |
| [**mdr_cdashig_version_classes_class_scenarios_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_classes_class_scenarios_get) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios |  |
| [**mdr_cdashig_version_classes_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_classes_get) | **GET** /mdr/cdashig/{version}/classes |  |
| [**mdr_cdashig_version_domains_domain_fields_field_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_domains_domain_fields_field_get) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} |  |
| [**mdr_cdashig_version_domains_domain_fields_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_domains_domain_fields_get) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields |  |
| [**mdr_cdashig_version_domains_domain_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_domains_domain_get) | **GET** /mdr/cdashig/{version}/domains/{domain} |  |
| [**mdr_cdashig_version_domains_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_domains_get) | **GET** /mdr/cdashig/{version}/domains |  |
| [**mdr_cdashig_version_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_get) | **GET** /mdr/cdashig/{version} |  |
| [**mdr_cdashig_version_scenarios_domain_scenario_fields_field_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_scenarios_domain_scenario_fields_field_get) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} |  |
| [**mdr_cdashig_version_scenarios_domain_scenario_fields_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_scenarios_domain_scenario_fields_get) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields |  |
| [**mdr_cdashig_version_scenarios_domain_scenario_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_scenarios_domain_scenario_get) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} |  |
| [**mdr_cdashig_version_scenarios_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_scenarios_get) | **GET** /mdr/cdashig/{version}/scenarios |  |
| [**mdr_root_cdashig_domains_domain_fields_field_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_root_cdashig_domains_domain_fields_field_get) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} |  |
| [**mdr_root_cdashig_scenarios_domain_scenario_fields_field_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_root_cdashig_scenarios_domain_scenario_fields_field_get) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} |  |


## mdr_cdashig_version_classes_class_domains_get

> <CdashigClassDomains> mdr_cdashig_version_classes_class_domains_get(version, _class)



Get CDASHIG Class Domain List

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version
_class = 'Findings' # String | CDASHIG Class Identifier

begin
  
  result = api_instance.mdr_cdashig_version_classes_class_domains_get(version, _class)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_domains_get: #{e}"
end
```

#### Using the mdr_cdashig_version_classes_class_domains_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigClassDomains>, Integer, Hash)> mdr_cdashig_version_classes_class_domains_get_with_http_info(version, _class)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_classes_class_domains_get_with_http_info(version, _class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigClassDomains>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_domains_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | CDASHIG Class Identifier |  |

### Return type

[**CdashigClassDomains**](CdashigClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdashig_version_classes_class_get

> <CdashigClass> mdr_cdashig_version_classes_class_get(version, _class)



Get CDASHIG Class

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version
_class = 'Findings' # String | CDASHIG Class Identifier

begin
  
  result = api_instance.mdr_cdashig_version_classes_class_get(version, _class)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_get: #{e}"
end
```

#### Using the mdr_cdashig_version_classes_class_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigClass>, Integer, Hash)> mdr_cdashig_version_classes_class_get_with_http_info(version, _class)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_classes_class_get_with_http_info(version, _class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigClass>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | CDASHIG Class Identifier |  |

### Return type

[**CdashigClass**](CdashigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdashig_version_classes_class_scenarios_get

> <CdashigClassScenarios> mdr_cdashig_version_classes_class_scenarios_get(version, _class)



Get CDASHIG Class Scenario List

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version
_class = 'Findings' # String | CDASHIG Class Identifier

begin
  
  result = api_instance.mdr_cdashig_version_classes_class_scenarios_get(version, _class)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_scenarios_get: #{e}"
end
```

#### Using the mdr_cdashig_version_classes_class_scenarios_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigClassScenarios>, Integer, Hash)> mdr_cdashig_version_classes_class_scenarios_get_with_http_info(version, _class)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_classes_class_scenarios_get_with_http_info(version, _class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigClassScenarios>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_scenarios_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **_class** | **String** | CDASHIG Class Identifier |  |

### Return type

[**CdashigClassScenarios**](CdashigClassScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdashig_version_classes_get

> <CdashigProductClasses> mdr_cdashig_version_classes_get(version)



Get CDASHIG Class List

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_cdashig_version_classes_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_get: #{e}"
end
```

#### Using the mdr_cdashig_version_classes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigProductClasses>, Integer, Hash)> mdr_cdashig_version_classes_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_classes_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigProductClasses>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**CdashigProductClasses**](CdashigProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdashig_version_domains_domain_fields_field_get

> <CdashigDomainField> mdr_cdashig_version_domains_domain_fields_field_get(version, domain, field)



Get CDASHIG Domain Field

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version
domain = 'VS' # String | CDASHIG Domain Identifier
field = 'VSDAT' # String | CDASHIG Field Identifier

begin
  
  result = api_instance.mdr_cdashig_version_domains_domain_fields_field_get(version, domain, field)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_fields_field_get: #{e}"
end
```

#### Using the mdr_cdashig_version_domains_domain_fields_field_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigDomainField>, Integer, Hash)> mdr_cdashig_version_domains_domain_fields_field_get_with_http_info(version, domain, field)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_domains_domain_fields_field_get_with_http_info(version, domain, field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigDomainField>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_fields_field_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **domain** | **String** | CDASHIG Domain Identifier |  |
| **field** | **String** | CDASHIG Field Identifier |  |

### Return type

[**CdashigDomainField**](CdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdashig_version_domains_domain_fields_get

> <CdashigDomainFields> mdr_cdashig_version_domains_domain_fields_get(version, domain)



Get CDASHIG Domain Field List

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version
domain = 'VS' # String | CDASHIG Domain Identifier

begin
  
  result = api_instance.mdr_cdashig_version_domains_domain_fields_get(version, domain)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_fields_get: #{e}"
end
```

#### Using the mdr_cdashig_version_domains_domain_fields_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigDomainFields>, Integer, Hash)> mdr_cdashig_version_domains_domain_fields_get_with_http_info(version, domain)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_domains_domain_fields_get_with_http_info(version, domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigDomainFields>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_fields_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **domain** | **String** | CDASHIG Domain Identifier |  |

### Return type

[**CdashigDomainFields**](CdashigDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdashig_version_domains_domain_get

> <CdashigDomain> mdr_cdashig_version_domains_domain_get(version, domain)



Get CDASHIG Domain

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version
domain = 'VS' # String | CDASHIG Domain Identifier

begin
  
  result = api_instance.mdr_cdashig_version_domains_domain_get(version, domain)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_get: #{e}"
end
```

#### Using the mdr_cdashig_version_domains_domain_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigDomain>, Integer, Hash)> mdr_cdashig_version_domains_domain_get_with_http_info(version, domain)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_domains_domain_get_with_http_info(version, domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigDomain>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **domain** | **String** | CDASHIG Domain Identifier |  |

### Return type

[**CdashigDomain**](CdashigDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdashig_version_domains_get

> <CdashigProductDomains> mdr_cdashig_version_domains_get(version)



Get CDASHIG Domain List

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_cdashig_version_domains_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_get: #{e}"
end
```

#### Using the mdr_cdashig_version_domains_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigProductDomains>, Integer, Hash)> mdr_cdashig_version_domains_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_domains_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigProductDomains>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**CdashigProductDomains**](CdashigProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdashig_version_get

> <CdashigProduct> mdr_cdashig_version_get(version)



Get CDASHIG Product

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_cdashig_version_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_get: #{e}"
end
```

#### Using the mdr_cdashig_version_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigProduct>, Integer, Hash)> mdr_cdashig_version_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigProduct>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**CdashigProduct**](CdashigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet


## mdr_cdashig_version_scenarios_domain_scenario_fields_field_get

> <CdashigScenarioField> mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(version, domain, scenario, field)



Get CDASHIG Scenario Field

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version
domain = 'VS' # String | CDASHIG Domain Identifier
scenario = 'Generic' # String | CDASHIG Scenario Identifier
field = 'VSDAT' # String | CDASHIG Field Identifier

begin
  
  result = api_instance.mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(version, domain, scenario, field)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_fields_field_get: #{e}"
end
```

#### Using the mdr_cdashig_version_scenarios_domain_scenario_fields_field_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigScenarioField>, Integer, Hash)> mdr_cdashig_version_scenarios_domain_scenario_fields_field_get_with_http_info(version, domain, scenario, field)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_scenarios_domain_scenario_fields_field_get_with_http_info(version, domain, scenario, field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigScenarioField>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_fields_field_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **domain** | **String** | CDASHIG Domain Identifier |  |
| **scenario** | **String** | CDASHIG Scenario Identifier |  |
| **field** | **String** | CDASHIG Field Identifier |  |

### Return type

[**CdashigScenarioField**](CdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdashig_version_scenarios_domain_scenario_fields_get

> <CdashigScenarioFields> mdr_cdashig_version_scenarios_domain_scenario_fields_get(version, domain, scenario)



Get CDASHIG Scenario Field List

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version
domain = 'VS' # String | CDASHIG Domain Identifier
scenario = 'HorizontalGeneric' # String | CDASHIG Scenario Identifier

begin
  
  result = api_instance.mdr_cdashig_version_scenarios_domain_scenario_fields_get(version, domain, scenario)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_fields_get: #{e}"
end
```

#### Using the mdr_cdashig_version_scenarios_domain_scenario_fields_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigScenarioFields>, Integer, Hash)> mdr_cdashig_version_scenarios_domain_scenario_fields_get_with_http_info(version, domain, scenario)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_scenarios_domain_scenario_fields_get_with_http_info(version, domain, scenario)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigScenarioFields>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_fields_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **domain** | **String** | CDASHIG Domain Identifier |  |
| **scenario** | **String** | CDASHIG Scenario Identifier |  |

### Return type

[**CdashigScenarioFields**](CdashigScenarioFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdashig_version_scenarios_domain_scenario_get

> <CdashigScenario> mdr_cdashig_version_scenarios_domain_scenario_get(version, domain, scenario)



Get CDASHIG Scenario

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version
domain = 'VS' # String | CDASHIG Domain Identifier
scenario = 'HorizontalGeneric' # String | CDASHIG Scenario Identifier

begin
  
  result = api_instance.mdr_cdashig_version_scenarios_domain_scenario_get(version, domain, scenario)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_get: #{e}"
end
```

#### Using the mdr_cdashig_version_scenarios_domain_scenario_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigScenario>, Integer, Hash)> mdr_cdashig_version_scenarios_domain_scenario_get_with_http_info(version, domain, scenario)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_scenarios_domain_scenario_get_with_http_info(version, domain, scenario)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigScenario>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |
| **domain** | **String** | CDASHIG Domain Identifier |  |
| **scenario** | **String** | CDASHIG Scenario Identifier |  |

### Return type

[**CdashigScenario**](CdashigScenario.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_cdashig_version_scenarios_get

> <CdashigProductScenarios> mdr_cdashig_version_scenarios_get(version)



Get CDASHIG Scenario List

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
version = '2-1' # String | CDISC Library Product Version

begin
  
  result = api_instance.mdr_cdashig_version_scenarios_get(version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_get: #{e}"
end
```

#### Using the mdr_cdashig_version_scenarios_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdashigProductScenarios>, Integer, Hash)> mdr_cdashig_version_scenarios_get_with_http_info(version)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_cdashig_version_scenarios_get_with_http_info(version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdashigProductScenarios>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | CDISC Library Product Version |  |

### Return type

[**CdashigProductScenarios**](CdashigProductScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_root_cdashig_domains_domain_fields_field_get

> <RootCdashigDomainField> mdr_root_cdashig_domains_domain_fields_field_get(domain, field)



Get Root CDASHIG Domain Field

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
domain = 'VS' # String | CDASHIG Domain Identifier
field = 'VSDAT' # String | CDASHIG Field Identifier

begin
  
  result = api_instance.mdr_root_cdashig_domains_domain_fields_field_get(domain, field)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_root_cdashig_domains_domain_fields_field_get: #{e}"
end
```

#### Using the mdr_root_cdashig_domains_domain_fields_field_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RootCdashigDomainField>, Integer, Hash)> mdr_root_cdashig_domains_domain_fields_field_get_with_http_info(domain, field)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_root_cdashig_domains_domain_fields_field_get_with_http_info(domain, field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RootCdashigDomainField>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_root_cdashig_domains_domain_fields_field_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | CDASHIG Domain Identifier |  |
| **field** | **String** | CDASHIG Field Identifier |  |

### Return type

[**RootCdashigDomainField**](RootCdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdr_root_cdashig_scenarios_domain_scenario_fields_field_get

> <RootCdashigScenarioField> mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(domain, scenario, field)



Get Root CDASHIG Scenario Field

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

api_instance = OpenapiClient::CDASHImplementationGuideCDASHIGApi.new
domain = 'VS' # String | CDASHIG Domain Identifier
scenario = 'Generic' # String | CDASHIG Scenario Identifier
field = 'VSDAT' # String | CDASHIG Field Identifier

begin
  
  result = api_instance.mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(domain, scenario, field)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_root_cdashig_scenarios_domain_scenario_fields_field_get: #{e}"
end
```

#### Using the mdr_root_cdashig_scenarios_domain_scenario_fields_field_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RootCdashigScenarioField>, Integer, Hash)> mdr_root_cdashig_scenarios_domain_scenario_fields_field_get_with_http_info(domain, scenario, field)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_root_cdashig_scenarios_domain_scenario_fields_field_get_with_http_info(domain, scenario, field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RootCdashigScenarioField>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CDASHImplementationGuideCDASHIGApi->mdr_root_cdashig_scenarios_domain_scenario_fields_field_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | CDASHIG Domain Identifier |  |
| **scenario** | **String** | CDASHIG Scenario Identifier |  |
| **field** | **String** | CDASHIG Field Identifier |  |

### Return type

[**RootCdashigScenarioField**](RootCdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

