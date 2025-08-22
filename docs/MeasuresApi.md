# openapi_client.MeasuresApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_qrs_measure_version_get**](MeasuresApi.md#mdr_qrs_measure_version_get) | **GET** /mdr/qrs/{measure}/{version} | 
[**mdr_qrs_measure_version_items_get**](MeasuresApi.md#mdr_qrs_measure_version_items_get) | **GET** /mdr/qrs/{measure}/{version}/items | 
[**mdr_qrs_measure_version_items_item_get**](MeasuresApi.md#mdr_qrs_measure_version_items_item_get) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | 
[**mdr_qrs_measure_version_responsegroups_get**](MeasuresApi.md#mdr_qrs_measure_version_responsegroups_get) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | 
[**mdr_qrs_measure_version_responsegroups_responsegroup_get**](MeasuresApi.md#mdr_qrs_measure_version_responsegroups_responsegroup_get) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 


# **mdr_qrs_measure_version_get**
> QrsProduct mdr_qrs_measure_version_get(measure, version)



Get QRS Product

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.qrs_product import QrsProduct
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
    api_instance = openapi_client.MeasuresApi(api_client)
    measure = 'AIMS1' # str | QRS Measure Identifier
    version = '1-0' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_qrs_measure_version_get(measure, version)
        print("The response of MeasuresApi->mdr_qrs_measure_version_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasuresApi->mdr_qrs_measure_version_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **str**| QRS Measure Identifier | 
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**QrsProduct**](QrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel

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

# **mdr_qrs_measure_version_items_get**
> QrsItems mdr_qrs_measure_version_items_get(measure, version)



Get QRS Item List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.qrs_items import QrsItems
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
    api_instance = openapi_client.MeasuresApi(api_client)
    measure = 'AIMS1' # str | QRS Measure Identifier
    version = '1-0' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_qrs_measure_version_items_get(measure, version)
        print("The response of MeasuresApi->mdr_qrs_measure_version_items_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasuresApi->mdr_qrs_measure_version_items_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **str**| QRS Measure Identifier | 
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**QrsItems**](QrsItems.md)

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

# **mdr_qrs_measure_version_items_item_get**
> QrsItem mdr_qrs_measure_version_items_item_get(measure, version, item)



Get QRS Item

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.qrs_item import QrsItem
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
    api_instance = openapi_client.MeasuresApi(api_client)
    measure = 'AIMS1' # str | QRS Measure Identifier
    version = '1-0' # str | CDISC Library Product Version
    item = 'AIMS01.001' # str | QRS Measure Item Identifier

    try:
        api_response = api_instance.mdr_qrs_measure_version_items_item_get(measure, version, item)
        print("The response of MeasuresApi->mdr_qrs_measure_version_items_item_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasuresApi->mdr_qrs_measure_version_items_item_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **str**| QRS Measure Identifier | 
 **version** | **str**| CDISC Library Product Version | 
 **item** | **str**| QRS Measure Item Identifier | 

### Return type

[**QrsItem**](QrsItem.md)

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

# **mdr_qrs_measure_version_responsegroups_get**
> QrsResponsegroups mdr_qrs_measure_version_responsegroups_get(measure, version)



Get QRS Response Group List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.qrs_responsegroups import QrsResponsegroups
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
    api_instance = openapi_client.MeasuresApi(api_client)
    measure = 'AIMS1' # str | QRS Measure Identifier
    version = '1-0' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_qrs_measure_version_responsegroups_get(measure, version)
        print("The response of MeasuresApi->mdr_qrs_measure_version_responsegroups_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasuresApi->mdr_qrs_measure_version_responsegroups_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **str**| QRS Measure Identifier | 
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**QrsResponsegroups**](QrsResponsegroups.md)

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

# **mdr_qrs_measure_version_responsegroups_responsegroup_get**
> QrsResponsegroup mdr_qrs_measure_version_responsegroups_responsegroup_get(measure, version, responsegroup)



Get QRS Response Group

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.qrs_responsegroup import QrsResponsegroup
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
    api_instance = openapi_client.MeasuresApi(api_client)
    measure = 'AIMS1' # str | QRS Measure Identifier
    version = '1-0' # str | CDISC Library Product Version
    responsegroup = 'AIMS1.11to12' # str | QRS Measure's Response Group Identifier

    try:
        api_response = api_instance.mdr_qrs_measure_version_responsegroups_responsegroup_get(measure, version, responsegroup)
        print("The response of MeasuresApi->mdr_qrs_measure_version_responsegroups_responsegroup_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasuresApi->mdr_qrs_measure_version_responsegroups_responsegroup_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **str**| QRS Measure Identifier | 
 **version** | **str**| CDISC Library Product Version | 
 **responsegroup** | **str**| QRS Measure&#39;s Response Group Identifier | 

### Return type

[**QrsResponsegroup**](QrsResponsegroup.md)

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

