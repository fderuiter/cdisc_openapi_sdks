# openapi_client.SearchesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_search_get**](SearchesApi.md#mdr_search_get) | **GET** /mdr/search | 
[**mdr_search_scopes_get**](SearchesApi.md#mdr_search_scopes_get) | **GET** /mdr/search/scopes | 
[**mdr_search_scopes_scope_get**](SearchesApi.md#mdr_search_scopes_scope_get) | **GET** /mdr/search/scopes/{scope} | 


# **mdr_search_get**
> DefaultSearchResponse mdr_search_get(q, highlight=highlight, start=start, page_size=page_size, var_class=var_class, codelist=codelist, concept_id=concept_id, core=core, data_structure=data_structure, dataset_structure=dataset_structure, definition=definition, description=description, domain=domain, effective_date=effective_date, extensible=extensible, href=href, label=label, measure_type=measure_type, name=name, preferred_term=preferred_term, product=product, product_group=product_group, registration_status=registration_status, role_description=role_description, sdtm_target=sdtm_target, simple_datatype=simple_datatype, submission_value=submission_value, synonyms=synonyms, type=type, ui_href=ui_href, value_domain=value_domain, variable_set=variable_set, version=version)

Get Search Results Across CDISC Library

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.default_search_response import DefaultSearchResponse
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://library.cdisc.org/api
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://library.cdisc.org/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SearchesApi(api_client)
    q = 'q_example' # str | Search Term Expression
    highlight = 'highlight_example' # str | Search Highlight Expression (optional)
    start = 0 # float | Initial Search Result Index (optional) (default to 0)
    page_size = 100 # float | Number of Search Results to Return (optional) (default to 100)
    var_class = 'var_class_example' # str | Limit Search by Setting Scope to Class (optional)
    codelist = 'codelist_example' # str | Limit Search by Setting Scope to Codelist (optional)
    concept_id = 'concept_id_example' # str | Limit Search by Setting Scope to Concept ID (optional)
    core = 'core_example' # str | Limit Search by Setting Scope to Core (optional)
    data_structure = 'data_structure_example' # str | Limit Search by Setting Scope to Data Structure (optional)
    dataset_structure = 'dataset_structure_example' # str | Limit Search by Setting Scope to Dataset Structure (optional)
    definition = 'definition_example' # str | Limit Search by Setting Scope to Definition (optional)
    description = 'description_example' # str | Limit Search by Setting Scope to Description (optional)
    domain = 'domain_example' # str | Limit Search by Setting Scope to Domain (optional)
    effective_date = 'effective_date_example' # str | Limit Search by Setting Scope to Effective Date (optional)
    extensible = 'extensible_example' # str | Limit Search by Setting Scope to Extensible (optional)
    href = 'href_example' # str | Limit Search by Setting Scope to Href (optional)
    label = 'label_example' # str | Limit Search by Setting Scope to Label (optional)
    measure_type = 'measure_type_example' # str | SLimit Search by Setting Scope to Measure Type (optional)
    name = 'name_example' # str | Limit Search by Setting Scope to Name (optional)
    preferred_term = 'preferred_term_example' # str | Limit Search by Setting Scope to Preferred Term (optional)
    product = 'product_example' # str | Limit Search by Setting Scope to Product (optional)
    product_group = 'product_group_example' # str | Limit Search by Setting Scope to Product Group (optional)
    registration_status = 'registration_status_example' # str | Limit Search by Setting Scope to Registration Status (optional)
    role_description = 'role_description_example' # str | Limit Search by Setting Scope to Role Description (optional)
    sdtm_target = 'sdtm_target_example' # str | Limit Search by Setting Scope to SDTM Target (optional)
    simple_datatype = 'simple_datatype_example' # str | Limit Search by Setting Scope to Simple Datatype (optional)
    submission_value = 'submission_value_example' # str | Limit Search by Setting Scope to Submission Value (optional)
    synonyms = 'synonyms_example' # str | Limit Search by Setting Scope to Synonyms (optional)
    type = 'type_example' # str | Limit Search by Setting Scope to Type (optional)
    ui_href = 'ui_href_example' # str | Limit Search by Setting Scope to UI Href (optional)
    value_domain = 'value_domain_example' # str | Limit Search by Setting Scope to Value Domain (optional)
    variable_set = 'variable_set_example' # str | Limit Search by Setting Scope to Variable Set (optional)
    version = 'version_example' # str | Limit Search by Setting Scope to Version (optional)

    try:
        api_response = api_instance.mdr_search_get(q, highlight=highlight, start=start, page_size=page_size, var_class=var_class, codelist=codelist, concept_id=concept_id, core=core, data_structure=data_structure, dataset_structure=dataset_structure, definition=definition, description=description, domain=domain, effective_date=effective_date, extensible=extensible, href=href, label=label, measure_type=measure_type, name=name, preferred_term=preferred_term, product=product, product_group=product_group, registration_status=registration_status, role_description=role_description, sdtm_target=sdtm_target, simple_datatype=simple_datatype, submission_value=submission_value, synonyms=synonyms, type=type, ui_href=ui_href, value_domain=value_domain, variable_set=variable_set, version=version)
        print("The response of SearchesApi->mdr_search_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->mdr_search_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**| Search Term Expression | 
 **highlight** | **str**| Search Highlight Expression | [optional] 
 **start** | **float**| Initial Search Result Index | [optional] [default to 0]
 **page_size** | **float**| Number of Search Results to Return | [optional] [default to 100]
 **var_class** | **str**| Limit Search by Setting Scope to Class | [optional] 
 **codelist** | **str**| Limit Search by Setting Scope to Codelist | [optional] 
 **concept_id** | **str**| Limit Search by Setting Scope to Concept ID | [optional] 
 **core** | **str**| Limit Search by Setting Scope to Core | [optional] 
 **data_structure** | **str**| Limit Search by Setting Scope to Data Structure | [optional] 
 **dataset_structure** | **str**| Limit Search by Setting Scope to Dataset Structure | [optional] 
 **definition** | **str**| Limit Search by Setting Scope to Definition | [optional] 
 **description** | **str**| Limit Search by Setting Scope to Description | [optional] 
 **domain** | **str**| Limit Search by Setting Scope to Domain | [optional] 
 **effective_date** | **str**| Limit Search by Setting Scope to Effective Date | [optional] 
 **extensible** | **str**| Limit Search by Setting Scope to Extensible | [optional] 
 **href** | **str**| Limit Search by Setting Scope to Href | [optional] 
 **label** | **str**| Limit Search by Setting Scope to Label | [optional] 
 **measure_type** | **str**| SLimit Search by Setting Scope to Measure Type | [optional] 
 **name** | **str**| Limit Search by Setting Scope to Name | [optional] 
 **preferred_term** | **str**| Limit Search by Setting Scope to Preferred Term | [optional] 
 **product** | **str**| Limit Search by Setting Scope to Product | [optional] 
 **product_group** | **str**| Limit Search by Setting Scope to Product Group | [optional] 
 **registration_status** | **str**| Limit Search by Setting Scope to Registration Status | [optional] 
 **role_description** | **str**| Limit Search by Setting Scope to Role Description | [optional] 
 **sdtm_target** | **str**| Limit Search by Setting Scope to SDTM Target | [optional] 
 **simple_datatype** | **str**| Limit Search by Setting Scope to Simple Datatype | [optional] 
 **submission_value** | **str**| Limit Search by Setting Scope to Submission Value | [optional] 
 **synonyms** | **str**| Limit Search by Setting Scope to Synonyms | [optional] 
 **type** | **str**| Limit Search by Setting Scope to Type | [optional] 
 **ui_href** | **str**| Limit Search by Setting Scope to UI Href | [optional] 
 **value_domain** | **str**| Limit Search by Setting Scope to Value Domain | [optional] 
 **variable_set** | **str**| Limit Search by Setting Scope to Variable Set | [optional] 
 **version** | **str**| Limit Search by Setting Scope to Version | [optional] 

### Return type

[**DefaultSearchResponse**](DefaultSearchResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**405** | Method Not Allowed |  -  |
**406** | Not Acceptable |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |
**504** | Gateway Timeout Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_search_scopes_get**
> MdrSearchScopesGet200Response mdr_search_scopes_get()

Get Search Results Across CDISC Library

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.mdr_search_scopes_get200_response import MdrSearchScopesGet200Response
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://library.cdisc.org/api
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://library.cdisc.org/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SearchesApi(api_client)

    try:
        api_response = api_instance.mdr_search_scopes_get()
        print("The response of SearchesApi->mdr_search_scopes_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->mdr_search_scopes_get: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_search_scopes_scope_get**
> ScopeValues mdr_search_scopes_scope_get(scope)

Get Search Results Limited to Scope

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.default_search_scopes import DefaultSearchScopes
from openapi_client.models.scope_values import ScopeValues
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://library.cdisc.org/api
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://library.cdisc.org/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SearchesApi(api_client)
    scope = openapi_client.DefaultSearchScopes() # DefaultSearchScopes | Search Scope

    try:
        api_response = api_instance.mdr_search_scopes_scope_get(scope)
        print("The response of SearchesApi->mdr_search_scopes_scope_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->mdr_search_scopes_scope_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | [**DefaultSearchScopes**](.md)| Search Scope | 

### Return type

[**ScopeValues**](ScopeValues.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

