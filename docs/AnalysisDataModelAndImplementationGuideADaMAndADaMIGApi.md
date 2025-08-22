# openapi_client.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_adam_product_datastructures_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_get) | **GET** /mdr/adam/{product}/datastructures | 
[**mdr_adam_product_datastructures_structure_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_get) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
[**mdr_adam_product_datastructures_structure_variables_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_variables_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**mdr_adam_product_datastructures_structure_variables_var_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_variables_var_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**mdr_adam_product_datastructures_structure_varsets_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_varsets_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**mdr_adam_product_datastructures_structure_varsets_varset_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_varsets_varset_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**mdr_adam_product_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_get) | **GET** /mdr/adam/{product} | 


# **mdr_adam_product_datastructures_get**
> AdamProductDatastructures mdr_adam_product_datastructures_get(product)

Get ADaM Data Structure List

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.adam_product_datastructures import AdamProductDatastructures
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
    api_instance = openapi_client.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(api_client)
    product = 'adamig-1-1' # str | CDISC Library Product

    try:
        api_response = api_instance.mdr_adam_product_datastructures_get(product)
        print("The response of AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **str**| CDISC Library Product | 

### Return type

[**AdamProductDatastructures**](AdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

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

# **mdr_adam_product_datastructures_structure_get**
> AdamDatastructure mdr_adam_product_datastructures_structure_get(product, structure)

Get ADaM Data Structure

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.adam_datastructure import AdamDatastructure
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
    api_instance = openapi_client.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(api_client)
    product = 'adamig-1-1' # str | CDISC Library Product
    structure = 'ADSL' # str | Data structure Identifier

    try:
        api_response = api_instance.mdr_adam_product_datastructures_structure_get(product, structure)
        print("The response of AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **str**| CDISC Library Product | 
 **structure** | **str**| Data structure Identifier | 

### Return type

[**AdamDatastructure**](AdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

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

# **mdr_adam_product_datastructures_structure_variables_get**
> AdamDatastructureVariables mdr_adam_product_datastructures_structure_variables_get(product, structure)

Get ADaM Variable List

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.adam_datastructure_variables import AdamDatastructureVariables
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
    api_instance = openapi_client.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(api_client)
    product = 'adamig-1-1' # str | CDISC Library Product
    structure = 'ADSL' # str | ADaM Data Structure Identifier

    try:
        api_response = api_instance.mdr_adam_product_datastructures_structure_variables_get(product, structure)
        print("The response of AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_variables_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_variables_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **str**| CDISC Library Product | 
 **structure** | **str**| ADaM Data Structure Identifier | 

### Return type

[**AdamDatastructureVariables**](AdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

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

# **mdr_adam_product_datastructures_structure_variables_var_get**
> AdamVariable mdr_adam_product_datastructures_structure_variables_var_get(product, structure, var)

Get ADaM Variable

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.adam_variable import AdamVariable
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
    api_instance = openapi_client.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(api_client)
    product = 'adamig-1-1' # str | CDISC Library Product
    structure = 'ADSL' # str | ADaM Data Structure Identifier
    var = 'SITEGRy' # str | ADaM Variable Identifier

    try:
        api_response = api_instance.mdr_adam_product_datastructures_structure_variables_var_get(product, structure, var)
        print("The response of AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_variables_var_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_variables_var_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **str**| CDISC Library Product | 
 **structure** | **str**| ADaM Data Structure Identifier | 
 **var** | **str**| ADaM Variable Identifier | 

### Return type

[**AdamVariable**](AdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

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

# **mdr_adam_product_datastructures_structure_varsets_get**
> AdamDatastructureVarsets mdr_adam_product_datastructures_structure_varsets_get(product, structure)

Get ADaM Variable Set List

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.adam_datastructure_varsets import AdamDatastructureVarsets
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
    api_instance = openapi_client.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(api_client)
    product = 'adamig-1-1' # str | CDISC Library Product
    structure = 'ADSL' # str | ADaM Data Structure Identifier

    try:
        api_response = api_instance.mdr_adam_product_datastructures_structure_varsets_get(product, structure)
        print("The response of AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_varsets_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_varsets_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **str**| CDISC Library Product | 
 **structure** | **str**| ADaM Data Structure Identifier | 

### Return type

[**AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

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

# **mdr_adam_product_datastructures_structure_varsets_varset_get**
> AdamVarset mdr_adam_product_datastructures_structure_varsets_varset_get(product, structure, varset)

Get ADaM Variable Set

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.adam_varset import AdamVarset
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
    api_instance = openapi_client.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(api_client)
    product = 'adamig-1-1' # str | CDISC Library Product
    structure = 'ADSL' # str | ADaM Data Structure Identifier
    varset = 'Identifier' # str | ADaM Variable Set Identifier

    try:
        api_response = api_instance.mdr_adam_product_datastructures_structure_varsets_varset_get(product, structure, varset)
        print("The response of AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_varsets_varset_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_varsets_varset_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **str**| CDISC Library Product | 
 **structure** | **str**| ADaM Data Structure Identifier | 
 **varset** | **str**| ADaM Variable Set Identifier | 

### Return type

[**AdamVarset**](AdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

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

# **mdr_adam_product_get**
> AdamProduct mdr_adam_product_get(product)

Get ADaM Product

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.adam_product import AdamProduct
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
    api_instance = openapi_client.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(api_client)
    product = 'adamig-1-1' # str | CDISC Library Product

    try:
        api_response = api_instance.mdr_adam_product_get(product)
        print("The response of AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **str**| CDISC Library Product | 

### Return type

[**AdamProduct**](AdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

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

