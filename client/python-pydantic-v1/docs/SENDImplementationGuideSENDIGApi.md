# openapi_client.SENDImplementationGuideSENDIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sendig_datasets_dataset_variables_var_get**](SENDImplementationGuideSENDIGApi.md#mdr_root_sendig_datasets_dataset_variables_var_get) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**mdr_sendig_version_classes_class_datasets_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_classes_class_datasets_get) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**mdr_sendig_version_classes_class_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_classes_class_get) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**mdr_sendig_version_classes_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_classes_get) | **GET** /mdr/sendig/{version}/classes | 
[**mdr_sendig_version_datasets_dataset_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_datasets_dataset_get) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**mdr_sendig_version_datasets_dataset_variables_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_datasets_dataset_variables_get) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**mdr_sendig_version_datasets_dataset_variables_var_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_datasets_dataset_variables_var_get) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**mdr_sendig_version_datasets_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_datasets_get) | **GET** /mdr/sendig/{version}/datasets | 
[**mdr_sendig_version_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_get) | **GET** /mdr/sendig/{version} | 


# **mdr_root_sendig_datasets_dataset_variables_var_get**
> RootSendigDatasetVariable mdr_root_sendig_datasets_dataset_variables_var_get(dataset, var)



Get Root SENDIG Dataset Variable

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.root_sendig_dataset_variable import RootSendigDatasetVariable
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
    api_instance = openapi_client.SENDImplementationGuideSENDIGApi(api_client)
    dataset = 'VS' # str | SENDIG Dataset Identifier
    var = 'VSTEST' # str | SENDIG Variable Identifier

    try:
        api_response = api_instance.mdr_root_sendig_datasets_dataset_variables_var_get(dataset, var)
        print("The response of SENDImplementationGuideSENDIGApi->mdr_root_sendig_datasets_dataset_variables_var_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SENDImplementationGuideSENDIGApi->mdr_root_sendig_datasets_dataset_variables_var_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **str**| SENDIG Dataset Identifier | 
 **var** | **str**| SENDIG Variable Identifier | 

### Return type

[**RootSendigDatasetVariable**](RootSendigDatasetVariable.md)

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

# **mdr_sendig_version_classes_class_datasets_get**
> SendigClassDatasets mdr_sendig_version_classes_class_datasets_get(version, var_class)



Get SENDIG Class Dataset List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sendig_class_datasets import SendigClassDatasets
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
    api_instance = openapi_client.SENDImplementationGuideSENDIGApi(api_client)
    version = '3-1' # str | CDISC Library Product Version
    var_class = 'Findings' # str | SENDIG Class Identifier

    try:
        api_response = api_instance.mdr_sendig_version_classes_class_datasets_get(version, var_class)
        print("The response of SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_class_datasets_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_class_datasets_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| SENDIG Class Identifier | 

### Return type

[**SendigClassDatasets**](SendigClassDatasets.md)

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

# **mdr_sendig_version_classes_class_get**
> SendigClass mdr_sendig_version_classes_class_get(version, var_class)



Get SENDIG Class

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sendig_class import SendigClass
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
    api_instance = openapi_client.SENDImplementationGuideSENDIGApi(api_client)
    version = '3-1' # str | CDISC Library Product Version
    var_class = 'Findings' # str | SENDIG Class Identifier

    try:
        api_response = api_instance.mdr_sendig_version_classes_class_get(version, var_class)
        print("The response of SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_class_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_class_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| SENDIG Class Identifier | 

### Return type

[**SendigClass**](SendigClass.md)

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

# **mdr_sendig_version_classes_get**
> SendigClasses mdr_sendig_version_classes_get(version)



Get SENDIG Class List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sendig_classes import SendigClasses
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
    api_instance = openapi_client.SENDImplementationGuideSENDIGApi(api_client)
    version = '3-1' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_sendig_version_classes_get(version)
        print("The response of SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**SendigClasses**](SendigClasses.md)

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

# **mdr_sendig_version_datasets_dataset_get**
> SendigDataset mdr_sendig_version_datasets_dataset_get(version, dataset)



Get SENDIG Dataset

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sendig_dataset import SendigDataset
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
    api_instance = openapi_client.SENDImplementationGuideSENDIGApi(api_client)
    version = '3-1' # str | CDISC Library Product Version
    dataset = 'VS' # str | SENDIG Class Identifier

    try:
        api_response = api_instance.mdr_sendig_version_datasets_dataset_get(version, dataset)
        print("The response of SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **dataset** | **str**| SENDIG Class Identifier | 

### Return type

[**SendigDataset**](SendigDataset.md)

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

# **mdr_sendig_version_datasets_dataset_variables_get**
> SendigDatasetVariables mdr_sendig_version_datasets_dataset_variables_get(version, dataset)



Get SENDIG Dataset Variable List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sendig_dataset_variables import SendigDatasetVariables
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
    api_instance = openapi_client.SENDImplementationGuideSENDIGApi(api_client)
    version = '3-1' # str | CDISC Library Product Version
    dataset = 'VS' # str | SENDIG Class Identifier

    try:
        api_response = api_instance.mdr_sendig_version_datasets_dataset_variables_get(version, dataset)
        print("The response of SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_variables_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_variables_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **dataset** | **str**| SENDIG Class Identifier | 

### Return type

[**SendigDatasetVariables**](SendigDatasetVariables.md)

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

# **mdr_sendig_version_datasets_dataset_variables_var_get**
> SendigDatasetVariable mdr_sendig_version_datasets_dataset_variables_var_get(version, dataset, var)



Get SENDIG Dataset Variable

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sendig_dataset_variable import SendigDatasetVariable
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
    api_instance = openapi_client.SENDImplementationGuideSENDIGApi(api_client)
    version = '3-1' # str | CDISC Library Product Version
    dataset = 'VS' # str | SENDIG Class Identifier
    var = 'VSTEST' # str | SENDIG Variable Identifier

    try:
        api_response = api_instance.mdr_sendig_version_datasets_dataset_variables_var_get(version, dataset, var)
        print("The response of SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_variables_var_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_variables_var_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **dataset** | **str**| SENDIG Class Identifier | 
 **var** | **str**| SENDIG Variable Identifier | 

### Return type

[**SendigDatasetVariable**](SendigDatasetVariable.md)

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

# **mdr_sendig_version_datasets_get**
> SendigDatasets mdr_sendig_version_datasets_get(version)



Get SENDIG Dataset List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sendig_datasets import SendigDatasets
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
    api_instance = openapi_client.SENDImplementationGuideSENDIGApi(api_client)
    version = '3-1' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_sendig_version_datasets_get(version)
        print("The response of SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**SendigDatasets**](SendigDatasets.md)

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

# **mdr_sendig_version_get**
> SendigProduct mdr_sendig_version_get(version)



Get SENDIG product

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sendig_product import SendigProduct
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
    api_instance = openapi_client.SENDImplementationGuideSENDIGApi(api_client)
    version = '3-1' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_sendig_version_get(version)
        print("The response of SENDImplementationGuideSENDIGApi->mdr_sendig_version_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**SendigProduct**](SendigProduct.md)

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

