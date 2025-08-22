# openapi_client.SDTMImplementationGuideSDTMIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sdtmig_datasets_dataset_variables_var_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_root_sdtmig_datasets_dataset_variables_var_get) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**mdr_sdtmig_version_classes_class_datasets_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_classes_class_datasets_get) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**mdr_sdtmig_version_classes_class_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_classes_class_get) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
[**mdr_sdtmig_version_classes_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_classes_get) | **GET** /mdr/sdtmig/{version}/classes | 
[**mdr_sdtmig_version_datasets_dataset_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_datasets_dataset_get) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**mdr_sdtmig_version_datasets_dataset_variables_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_datasets_dataset_variables_get) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**mdr_sdtmig_version_datasets_dataset_variables_var_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_datasets_dataset_variables_var_get) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**mdr_sdtmig_version_datasets_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_datasets_get) | **GET** /mdr/sdtmig/{version}/datasets | 
[**mdr_sdtmig_version_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_get) | **GET** /mdr/sdtmig/{version} | 


# **mdr_root_sdtmig_datasets_dataset_variables_var_get**
> RootSdtmigDatasetVariable mdr_root_sdtmig_datasets_dataset_variables_var_get(dataset, var)



Get Root SDTMIG Dataset Variable

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.root_sdtmig_dataset_variable import RootSdtmigDatasetVariable
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
    api_instance = openapi_client.SDTMImplementationGuideSDTMIGApi(api_client)
    dataset = 'DM' # str | SDTMIG Dataset Identifier
    var = 'SUBJID' # str | SDTMIG Variable Identifier

    try:
        api_response = api_instance.mdr_root_sdtmig_datasets_dataset_variables_var_get(dataset, var)
        print("The response of SDTMImplementationGuideSDTMIGApi->mdr_root_sdtmig_datasets_dataset_variables_var_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_root_sdtmig_datasets_dataset_variables_var_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **str**| SDTMIG Dataset Identifier | 
 **var** | **str**| SDTMIG Variable Identifier | 

### Return type

[**RootSdtmigDatasetVariable**](RootSdtmigDatasetVariable.md)

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

# **mdr_sdtmig_version_classes_class_datasets_get**
> SdtmigClassDatasets mdr_sdtmig_version_classes_class_datasets_get(version, var_class)



Get SDTMIG Class Dataset List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtmig_class_datasets import SdtmigClassDatasets
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
    api_instance = openapi_client.SDTMImplementationGuideSDTMIGApi(api_client)
    version = '3-3' # str | CDISC Library Product Version
    var_class = 'Findings' # str | SDTMIG Class Identifier

    try:
        api_response = api_instance.mdr_sdtmig_version_classes_class_datasets_get(version, var_class)
        print("The response of SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_class_datasets_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_class_datasets_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| SDTMIG Class Identifier | 

### Return type

[**SdtmigClassDatasets**](SdtmigClassDatasets.md)

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

# **mdr_sdtmig_version_classes_class_get**
> SdtmigClass mdr_sdtmig_version_classes_class_get(version, var_class)



Get SDTMIG Class

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtmig_class import SdtmigClass
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
    api_instance = openapi_client.SDTMImplementationGuideSDTMIGApi(api_client)
    version = '3-3' # str | CDISC Library Product Version
    var_class = 'Findings' # str | SDTMIG Class Identifier

    try:
        api_response = api_instance.mdr_sdtmig_version_classes_class_get(version, var_class)
        print("The response of SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_class_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_class_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| SDTMIG Class Identifier | 

### Return type

[**SdtmigClass**](SdtmigClass.md)

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

# **mdr_sdtmig_version_classes_get**
> SdtmigClasses mdr_sdtmig_version_classes_get(version)



Get SDTMIG Class List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtmig_classes import SdtmigClasses
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
    api_instance = openapi_client.SDTMImplementationGuideSDTMIGApi(api_client)
    version = '3-3' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_sdtmig_version_classes_get(version)
        print("The response of SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**SdtmigClasses**](SdtmigClasses.md)

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

# **mdr_sdtmig_version_datasets_dataset_get**
> SdtmigDataset mdr_sdtmig_version_datasets_dataset_get(version, dataset)



Get SDTMIG Dataset

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtmig_dataset import SdtmigDataset
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
    api_instance = openapi_client.SDTMImplementationGuideSDTMIGApi(api_client)
    version = '3-3' # str | CDISC Library Product Version
    dataset = 'LB' # str | SDTMIG Dataset Identifier

    try:
        api_response = api_instance.mdr_sdtmig_version_datasets_dataset_get(version, dataset)
        print("The response of SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **dataset** | **str**| SDTMIG Dataset Identifier | 

### Return type

[**SdtmigDataset**](SdtmigDataset.md)

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

# **mdr_sdtmig_version_datasets_dataset_variables_get**
> SdtmigDatasetVariables mdr_sdtmig_version_datasets_dataset_variables_get(version, dataset)



Get SDTMIG Dataset Variable List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtmig_dataset_variables import SdtmigDatasetVariables
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
    api_instance = openapi_client.SDTMImplementationGuideSDTMIGApi(api_client)
    version = '3-3' # str | CDISC Library Product Version
    dataset = 'LB' # str | SDTMIG Dataset Identifier

    try:
        api_response = api_instance.mdr_sdtmig_version_datasets_dataset_variables_get(version, dataset)
        print("The response of SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_variables_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_variables_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **dataset** | **str**| SDTMIG Dataset Identifier | 

### Return type

[**SdtmigDatasetVariables**](SdtmigDatasetVariables.md)

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

# **mdr_sdtmig_version_datasets_dataset_variables_var_get**
> SdtmigDatasetVariable mdr_sdtmig_version_datasets_dataset_variables_var_get(version, dataset, var)



Get SDTMIG Dataset Variable

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtmig_dataset_variable import SdtmigDatasetVariable
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
    api_instance = openapi_client.SDTMImplementationGuideSDTMIGApi(api_client)
    version = '3-3' # str | CDISC Library Product Version
    dataset = 'LB' # str | SDTMIG Dataset Identifier
    var = 'LBDTC' # str | SDTMIG Variable Identifier

    try:
        api_response = api_instance.mdr_sdtmig_version_datasets_dataset_variables_var_get(version, dataset, var)
        print("The response of SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_variables_var_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_variables_var_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **dataset** | **str**| SDTMIG Dataset Identifier | 
 **var** | **str**| SDTMIG Variable Identifier | 

### Return type

[**SdtmigDatasetVariable**](SdtmigDatasetVariable.md)

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

# **mdr_sdtmig_version_datasets_get**
> SdtmigDatasets mdr_sdtmig_version_datasets_get(version)



Get SDTMIG Dataset List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtmig_datasets import SdtmigDatasets
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
    api_instance = openapi_client.SDTMImplementationGuideSDTMIGApi(api_client)
    version = '3-3' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_sdtmig_version_datasets_get(version)
        print("The response of SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**SdtmigDatasets**](SdtmigDatasets.md)

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

# **mdr_sdtmig_version_get**
> SdtmigProduct mdr_sdtmig_version_get(version)



Get SDTMIG product

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.sdtmig_product import SdtmigProduct
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
    api_instance = openapi_client.SDTMImplementationGuideSDTMIGApi(api_client)
    version = '3-3' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_sdtmig_version_get(version)
        print("The response of SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**SdtmigProduct**](SdtmigProduct.md)

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

