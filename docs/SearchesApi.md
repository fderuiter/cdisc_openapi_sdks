# OpenapiClient::SearchesApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mdr_search_get**](SearchesApi.md#mdr_search_get) | **GET** /mdr/search |  |
| [**mdr_search_scopes_get**](SearchesApi.md#mdr_search_scopes_get) | **GET** /mdr/search/scopes |  |
| [**mdr_search_scopes_scope_get**](SearchesApi.md#mdr_search_scopes_scope_get) | **GET** /mdr/search/scopes/{scope} |  |


## mdr_search_get

> <DefaultSearchResponse> mdr_search_get(q, opts)



Get Search Results Across CDISC Library

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

api_instance = OpenapiClient::SearchesApi.new
q = 'q_example' # String | Search Term Expression
opts = {
  highlight: 'highlight_example', # String | Search Highlight Expression
  start: 8.14, # Float | Initial Search Result Index
  page_size: 8.14, # Float | Number of Search Results to Return
  _class: '_class_example', # String | Limit Search by Setting Scope to Class
  codelist: 'codelist_example', # String | Limit Search by Setting Scope to Codelist
  concept_id: 'concept_id_example', # String | Limit Search by Setting Scope to Concept ID
  core: 'core_example', # String | Limit Search by Setting Scope to Core
  data_structure: 'data_structure_example', # String | Limit Search by Setting Scope to Data Structure
  dataset_structure: 'dataset_structure_example', # String | Limit Search by Setting Scope to Dataset Structure
  definition: 'definition_example', # String | Limit Search by Setting Scope to Definition
  description: 'description_example', # String | Limit Search by Setting Scope to Description
  domain: 'domain_example', # String | Limit Search by Setting Scope to Domain
  effective_date: 'effective_date_example', # String | Limit Search by Setting Scope to Effective Date
  extensible: 'extensible_example', # String | Limit Search by Setting Scope to Extensible
  href: 'href_example', # String | Limit Search by Setting Scope to Href
  label: 'label_example', # String | Limit Search by Setting Scope to Label
  measure_type: 'measure_type_example', # String | SLimit Search by Setting Scope to Measure Type
  name: 'name_example', # String | Limit Search by Setting Scope to Name
  preferred_term: 'preferred_term_example', # String | Limit Search by Setting Scope to Preferred Term
  product: 'product_example', # String | Limit Search by Setting Scope to Product
  product_group: 'product_group_example', # String | Limit Search by Setting Scope to Product Group
  registration_status: 'registration_status_example', # String | Limit Search by Setting Scope to Registration Status
  role_description: 'role_description_example', # String | Limit Search by Setting Scope to Role Description
  sdtm_target: 'sdtm_target_example', # String | Limit Search by Setting Scope to SDTM Target
  simple_datatype: 'simple_datatype_example', # String | Limit Search by Setting Scope to Simple Datatype
  submission_value: 'submission_value_example', # String | Limit Search by Setting Scope to Submission Value
  synonyms: 'synonyms_example', # String | Limit Search by Setting Scope to Synonyms
  type: 'type_example', # String | Limit Search by Setting Scope to Type
  ui_href: 'ui_href_example', # String | Limit Search by Setting Scope to UI Href
  value_domain: 'value_domain_example', # String | Limit Search by Setting Scope to Value Domain
  variable_set: 'variable_set_example', # String | Limit Search by Setting Scope to Variable Set
  version: 'version_example' # String | Limit Search by Setting Scope to Version
}

begin
  
  result = api_instance.mdr_search_get(q, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SearchesApi->mdr_search_get: #{e}"
end
```

#### Using the mdr_search_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DefaultSearchResponse>, Integer, Hash)> mdr_search_get_with_http_info(q, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_search_get_with_http_info(q, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DefaultSearchResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SearchesApi->mdr_search_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | Search Term Expression |  |
| **highlight** | **String** | Search Highlight Expression | [optional] |
| **start** | **Float** | Initial Search Result Index | [optional][default to 0] |
| **page_size** | **Float** | Number of Search Results to Return | [optional][default to 100] |
| **_class** | **String** | Limit Search by Setting Scope to Class | [optional] |
| **codelist** | **String** | Limit Search by Setting Scope to Codelist | [optional] |
| **concept_id** | **String** | Limit Search by Setting Scope to Concept ID | [optional] |
| **core** | **String** | Limit Search by Setting Scope to Core | [optional] |
| **data_structure** | **String** | Limit Search by Setting Scope to Data Structure | [optional] |
| **dataset_structure** | **String** | Limit Search by Setting Scope to Dataset Structure | [optional] |
| **definition** | **String** | Limit Search by Setting Scope to Definition | [optional] |
| **description** | **String** | Limit Search by Setting Scope to Description | [optional] |
| **domain** | **String** | Limit Search by Setting Scope to Domain | [optional] |
| **effective_date** | **String** | Limit Search by Setting Scope to Effective Date | [optional] |
| **extensible** | **String** | Limit Search by Setting Scope to Extensible | [optional] |
| **href** | **String** | Limit Search by Setting Scope to Href | [optional] |
| **label** | **String** | Limit Search by Setting Scope to Label | [optional] |
| **measure_type** | **String** | SLimit Search by Setting Scope to Measure Type | [optional] |
| **name** | **String** | Limit Search by Setting Scope to Name | [optional] |
| **preferred_term** | **String** | Limit Search by Setting Scope to Preferred Term | [optional] |
| **product** | **String** | Limit Search by Setting Scope to Product | [optional] |
| **product_group** | **String** | Limit Search by Setting Scope to Product Group | [optional] |
| **registration_status** | **String** | Limit Search by Setting Scope to Registration Status | [optional] |
| **role_description** | **String** | Limit Search by Setting Scope to Role Description | [optional] |
| **sdtm_target** | **String** | Limit Search by Setting Scope to SDTM Target | [optional] |
| **simple_datatype** | **String** | Limit Search by Setting Scope to Simple Datatype | [optional] |
| **submission_value** | **String** | Limit Search by Setting Scope to Submission Value | [optional] |
| **synonyms** | **String** | Limit Search by Setting Scope to Synonyms | [optional] |
| **type** | **String** | Limit Search by Setting Scope to Type | [optional] |
| **ui_href** | **String** | Limit Search by Setting Scope to UI Href | [optional] |
| **value_domain** | **String** | Limit Search by Setting Scope to Value Domain | [optional] |
| **variable_set** | **String** | Limit Search by Setting Scope to Variable Set | [optional] |
| **version** | **String** | Limit Search by Setting Scope to Version | [optional] |

### Return type

[**DefaultSearchResponse**](DefaultSearchResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mdr_search_scopes_get

> <MdrSearchScopesGet200Response> mdr_search_scopes_get



Get Search Results Across CDISC Library

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

api_instance = OpenapiClient::SearchesApi.new

begin
  
  result = api_instance.mdr_search_scopes_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SearchesApi->mdr_search_scopes_get: #{e}"
end
```

#### Using the mdr_search_scopes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MdrSearchScopesGet200Response>, Integer, Hash)> mdr_search_scopes_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_search_scopes_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MdrSearchScopesGet200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SearchesApi->mdr_search_scopes_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MdrSearchScopesGet200Response**](MdrSearchScopesGet200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mdr_search_scopes_scope_get

> <ScopeValues> mdr_search_scopes_scope_get(scope)



Get Search Results Limited to Scope

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

api_instance = OpenapiClient::SearchesApi.new
scope = OpenapiClient::DefaultSearchScopes::CLASS # DefaultSearchScopes | Search Scope

begin
  
  result = api_instance.mdr_search_scopes_scope_get(scope)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SearchesApi->mdr_search_scopes_scope_get: #{e}"
end
```

#### Using the mdr_search_scopes_scope_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScopeValues>, Integer, Hash)> mdr_search_scopes_scope_get_with_http_info(scope)

```ruby
begin
  
  data, status_code, headers = api_instance.mdr_search_scopes_scope_get_with_http_info(scope)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScopeValues>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SearchesApi->mdr_search_scopes_scope_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | [**DefaultSearchScopes**](.md) | Search Scope |  |

### Return type

[**ScopeValues**](ScopeValues.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

