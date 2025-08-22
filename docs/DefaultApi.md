# openapi_client.DefaultApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_about_get**](DefaultApi.md#mdr_about_get) | **GET** /mdr/about | 
[**mdr_lastupdated_get**](DefaultApi.md#mdr_lastupdated_get) | **GET** /mdr/lastupdated | 
[**mdr_products_data_analysis_get**](DefaultApi.md#mdr_products_data_analysis_get) | **GET** /mdr/products/DataAnalysis | 
[**mdr_products_data_collection_get**](DefaultApi.md#mdr_products_data_collection_get) | **GET** /mdr/products/DataCollection | 
[**mdr_products_data_tabulation_get**](DefaultApi.md#mdr_products_data_tabulation_get) | **GET** /mdr/products/DataTabulation | 
[**mdr_products_get**](DefaultApi.md#mdr_products_get) | **GET** /mdr/products | 
[**mdr_products_measures_get**](DefaultApi.md#mdr_products_measures_get) | **GET** /mdr/products/Measures | 
[**mdr_products_terminology_get**](DefaultApi.md#mdr_products_terminology_get) | **GET** /mdr/products/Terminology | 


# **mdr_about_get**
> About mdr_about_get()

Get Information About CDISC Library

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.about import About
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
    api_instance = openapi_client.DefaultApi(api_client)

    try:
        api_response = api_instance.mdr_about_get()
        print("The response of DefaultApi->mdr_about_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->mdr_about_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**About**](About.md)

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

# **mdr_lastupdated_get**
> Lastupdated mdr_lastupdated_get()

Get CDISC Library Last Updated

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.lastupdated import Lastupdated
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
    api_instance = openapi_client.DefaultApi(api_client)

    try:
        api_response = api_instance.mdr_lastupdated_get()
        print("The response of DefaultApi->mdr_lastupdated_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->mdr_lastupdated_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**Lastupdated**](Lastupdated.md)

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

# **mdr_products_data_analysis_get**
> ProductgroupDataAnalysis mdr_products_data_analysis_get()

Get CDISC Library Product Group Data Analysis

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.productgroup_data_analysis import ProductgroupDataAnalysis
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
    api_instance = openapi_client.DefaultApi(api_client)

    try:
        api_response = api_instance.mdr_products_data_analysis_get()
        print("The response of DefaultApi->mdr_products_data_analysis_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->mdr_products_data_analysis_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupDataAnalysis**](ProductgroupDataAnalysis.md)

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

# **mdr_products_data_collection_get**
> ProductgroupDataCollection mdr_products_data_collection_get()

Get CDISC Library Product Group Data Collection

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.productgroup_data_collection import ProductgroupDataCollection
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
    api_instance = openapi_client.DefaultApi(api_client)

    try:
        api_response = api_instance.mdr_products_data_collection_get()
        print("The response of DefaultApi->mdr_products_data_collection_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->mdr_products_data_collection_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupDataCollection**](ProductgroupDataCollection.md)

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

# **mdr_products_data_tabulation_get**
> ProductgroupDataTabulation mdr_products_data_tabulation_get()

Get CDISC Library Product Group Data Tabulation

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.productgroup_data_tabulation import ProductgroupDataTabulation
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
    api_instance = openapi_client.DefaultApi(api_client)

    try:
        api_response = api_instance.mdr_products_data_tabulation_get()
        print("The response of DefaultApi->mdr_products_data_tabulation_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->mdr_products_data_tabulation_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupDataTabulation**](ProductgroupDataTabulation.md)

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

# **mdr_products_get**
> Products mdr_products_get()

Get CDISC Library Products

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.products import Products
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
    api_instance = openapi_client.DefaultApi(api_client)

    try:
        api_response = api_instance.mdr_products_get()
        print("The response of DefaultApi->mdr_products_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->mdr_products_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**Products**](Products.md)

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

# **mdr_products_measures_get**
> ProductgroupQrs mdr_products_measures_get()

Get CDISC Library Product Group QRS

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.productgroup_qrs import ProductgroupQrs
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
    api_instance = openapi_client.DefaultApi(api_client)

    try:
        api_response = api_instance.mdr_products_measures_get()
        print("The response of DefaultApi->mdr_products_measures_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->mdr_products_measures_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupQrs**](ProductgroupQrs.md)

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

# **mdr_products_terminology_get**
> ProductgroupTerminology mdr_products_terminology_get()

Get CDISC Library Product Group Terminology

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.productgroup_terminology import ProductgroupTerminology
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
    api_instance = openapi_client.DefaultApi(api_client)

    try:
        api_response = api_instance.mdr_products_terminology_get()
        print("The response of DefaultApi->mdr_products_terminology_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->mdr_products_terminology_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupTerminology**](ProductgroupTerminology.md)

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

