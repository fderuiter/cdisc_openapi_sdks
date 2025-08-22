# openapi_client.StudyDataTabulationModelSDTMApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sdtm_classes_class_variables_var_get**](StudyDataTabulationModelSDTMApi.md#mdr_root_sdtm_classes_class_variables_var_get) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**mdr_root_sdtm_datasets_dataset_variables_var_get**](StudyDataTabulationModelSDTMApi.md#mdr_root_sdtm_datasets_dataset_variables_var_get) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**mdr_sdtm_version_classes_class_datasets_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_class_datasets_get) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**mdr_sdtm_version_classes_class_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_class_get) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**mdr_sdtm_version_classes_class_variables_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_class_variables_get) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**mdr_sdtm_version_classes_class_variables_var_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_class_variables_var_get) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**mdr_sdtm_version_classes_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_get) | **GET** /mdr/sdtm/{version}/classes | 
[**mdr_sdtm_version_datasets_dataset_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_datasets_dataset_get) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**mdr_sdtm_version_datasets_dataset_variables_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_datasets_dataset_variables_get) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**mdr_sdtm_version_datasets_dataset_variables_var_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_datasets_dataset_variables_var_get) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**mdr_sdtm_version_datasets_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_datasets_get) | **GET** /mdr/sdtm/{version}/datasets | 
[**mdr_sdtm_version_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_get) | **GET** /mdr/sdtm/{version} | 


# **mdr_root_sdtm_classes_class_variables_var_get**
> RootSdtmClassVariable mdr_root_sdtm_classes_class_variables_var_get(var_class, var)



Get Root of SDTM Class Variable

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.root_sdtm_class_variable import RootSdtmClassVariable
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
    api_instance = openapi_client.StudyDataTabulationModelSDTMApi(api_client)
    var_class = 'GeneralObservations' # str | SDTM Class Identifier
    var = '--DTC' # str | SDTM Variable Identifier

    try:
        api_response = api_instance.mdr_root_sdtm_classes_class_variables_var_get(var_class, var)
        print("The response of StudyDataTabulationModelSDTMApi->mdr_root_sdtm_classes_class_variables_var_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StudyDataTabulationModelSDTMApi->mdr_root_sdtm_classes_class_variables_var_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var_class** | **str**| SDTM Class Identifier | 
 **var** | **str**| SDTM Variable Identifier | 

### Return type

[**RootSdtmClassVariable**](RootSdtmClassVariable.md)

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

# **mdr_root_sdtm_datasets_dataset_variables_var_get**
> RootSdtmDatasetVariable mdr_root_sdtm_datasets_dataset_variables_var_get(dataset, var)



Get Root SDTM Dataset Variable

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.root_sdtm_dataset_variable import RootSdtmDatasetVariable
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
    api_instance = openapi_client.StudyDataTabulationModelSDTMApi(api_client)
    dataset = 'DM' # str | SDTM Dataset Identifier
    var = 'SUBJID' # str | SDTM Variable Identifier

    try:
        api_response = api_instance.mdr_root_sdtm_datasets_dataset_variables_var_get(dataset, var)
        print("The response of StudyDataTabulationModelSDTMApi->mdr_root_sdtm_datasets_dataset_variables_var_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StudyDataTabulationModelSDTMApi->mdr_root_sdtm_datasets_dataset_variables_var_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **str**| SDTM Dataset Identifier | 
 **var** | **str**| SDTM Variable Identifier | 

### Return type

[**RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)

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

# **mdr_sdtm_version_classes_class_datasets_get**
> SdtmClassDatasets mdr_sdtm_version_classes_class_datasets_get(version, var_class)



Get SDTM Class Dataset List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtm_class_datasets import SdtmClassDatasets
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
    api_instance = openapi_client.StudyDataTabulationModelSDTMApi(api_client)
    version = '1-8' # str | CDISC Library Product Version
    var_class = 'SpecialPurpose' # str | SDTM Class Identifier

    try:
        api_response = api_instance.mdr_sdtm_version_classes_class_datasets_get(version, var_class)
        print("The response of StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_datasets_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_datasets_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| SDTM Class Identifier | 

### Return type

[**SdtmClassDatasets**](SdtmClassDatasets.md)

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

# **mdr_sdtm_version_classes_class_get**
> SdtmClass mdr_sdtm_version_classes_class_get(version, var_class)



Get SDTM Class

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtm_class import SdtmClass
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
    api_instance = openapi_client.StudyDataTabulationModelSDTMApi(api_client)
    version = '1-8' # str | CDISC Library Product Version
    var_class = 'Findings' # str | SDTM Class Identifier

    try:
        api_response = api_instance.mdr_sdtm_version_classes_class_get(version, var_class)
        print("The response of StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| SDTM Class Identifier | 

### Return type

[**SdtmClass**](SdtmClass.md)

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

# **mdr_sdtm_version_classes_class_variables_get**
> SdtmClassVariables mdr_sdtm_version_classes_class_variables_get(version, var_class)



Get SDTM Class Variable List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtm_class_variables import SdtmClassVariables
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
    api_instance = openapi_client.StudyDataTabulationModelSDTMApi(api_client)
    version = '1-8' # str | CDISC Library Product Version
    var_class = 'GeneralObservations' # str | SDTM Class Identifier

    try:
        api_response = api_instance.mdr_sdtm_version_classes_class_variables_get(version, var_class)
        print("The response of StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_variables_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_variables_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| SDTM Class Identifier | 

### Return type

[**SdtmClassVariables**](SdtmClassVariables.md)

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

# **mdr_sdtm_version_classes_class_variables_var_get**
> SdtmClassVariable mdr_sdtm_version_classes_class_variables_var_get(version, var_class, var)



Get SDTM Class Variable

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtm_class_variable import SdtmClassVariable
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
    api_instance = openapi_client.StudyDataTabulationModelSDTMApi(api_client)
    version = '1-8' # str | CDISC Library Product Version
    var_class = 'GeneralObservations' # str | SDTM Class Identifier
    var = '--DTC' # str | SDTM Variable Identifier

    try:
        api_response = api_instance.mdr_sdtm_version_classes_class_variables_var_get(version, var_class, var)
        print("The response of StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_variables_var_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_variables_var_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| SDTM Class Identifier | 
 **var** | **str**| SDTM Variable Identifier | 

### Return type

[**SdtmClassVariable**](SdtmClassVariable.md)

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

# **mdr_sdtm_version_classes_get**
> SdtmClasses mdr_sdtm_version_classes_get(version)



Get SDTM Class List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtm_classes import SdtmClasses
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
    api_instance = openapi_client.StudyDataTabulationModelSDTMApi(api_client)
    version = '1-8' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_sdtm_version_classes_get(version)
        print("The response of StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**SdtmClasses**](SdtmClasses.md)

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

# **mdr_sdtm_version_datasets_dataset_get**
> SdtmDataset mdr_sdtm_version_datasets_dataset_get(version, dataset)



Get SDTM Dataset

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtm_dataset import SdtmDataset
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
    api_instance = openapi_client.StudyDataTabulationModelSDTMApi(api_client)
    version = '1-8' # str | CDISC Library Product Version
    dataset = 'DM' # str | SDTM Dataset Identifier

    try:
        api_response = api_instance.mdr_sdtm_version_datasets_dataset_get(version, dataset)
        print("The response of StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **dataset** | **str**| SDTM Dataset Identifier | 

### Return type

[**SdtmDataset**](SdtmDataset.md)

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

# **mdr_sdtm_version_datasets_dataset_variables_get**
> SdtmDatasetVariables mdr_sdtm_version_datasets_dataset_variables_get(version, dataset)



Get SDTM Dataset Variable List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtm_dataset_variables import SdtmDatasetVariables
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
    api_instance = openapi_client.StudyDataTabulationModelSDTMApi(api_client)
    version = '1-8' # str | CDISC Library Product Version
    dataset = 'DM' # str | SDTM Dataset Identifier

    try:
        api_response = api_instance.mdr_sdtm_version_datasets_dataset_variables_get(version, dataset)
        print("The response of StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_variables_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_variables_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **dataset** | **str**| SDTM Dataset Identifier | 

### Return type

[**SdtmDatasetVariables**](SdtmDatasetVariables.md)

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

# **mdr_sdtm_version_datasets_dataset_variables_var_get**
> SdtmDatasetVariable mdr_sdtm_version_datasets_dataset_variables_var_get(version, dataset, var)



Get SDTM Dataset Variable

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtm_dataset_variable import SdtmDatasetVariable
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
    api_instance = openapi_client.StudyDataTabulationModelSDTMApi(api_client)
    version = '1-8' # str | CDISC Library Product Version
    dataset = 'DM' # str | SDTM Dataset Identifier
    var = 'SUBJID' # str | SDTM Variable Identifier

    try:
        api_response = api_instance.mdr_sdtm_version_datasets_dataset_variables_var_get(version, dataset, var)
        print("The response of StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_variables_var_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_variables_var_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **dataset** | **str**| SDTM Dataset Identifier | 
 **var** | **str**| SDTM Variable Identifier | 

### Return type

[**SdtmDatasetVariable**](SdtmDatasetVariable.md)

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

# **mdr_sdtm_version_datasets_get**
> SdtmDatasets mdr_sdtm_version_datasets_get(version)



Get SDTM Dataset List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtm_datasets import SdtmDatasets
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
    api_instance = openapi_client.StudyDataTabulationModelSDTMApi(api_client)
    version = '1-8' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_sdtm_version_datasets_get(version)
        print("The response of StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**SdtmDatasets**](SdtmDatasets.md)

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

# **mdr_sdtm_version_get**
> SdtmProduct mdr_sdtm_version_get(version)



Get SDTM product

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtm_product import SdtmProduct
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
    api_instance = openapi_client.StudyDataTabulationModelSDTMApi(api_client)
    version = '1-8' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_sdtm_version_get(version)
        print("The response of StudyDataTabulationModelSDTMApi->mdr_sdtm_version_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**SdtmProduct**](SdtmProduct.md)

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

