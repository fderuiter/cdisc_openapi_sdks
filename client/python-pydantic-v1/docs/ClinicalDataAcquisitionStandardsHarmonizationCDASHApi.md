# openapi_client.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_cdash_version_classes_class_domains_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_classes_class_domains_get) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
[**mdr_cdash_version_classes_class_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_classes_class_fields_field_get) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**mdr_cdash_version_classes_class_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_classes_class_get) | **GET** /mdr/cdash/{version}/classes/{class} | 
[**mdr_cdash_version_classes_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_classes_get) | **GET** /mdr/cdash/{version}/classes | 
[**mdr_cdash_version_domains_domain_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_domains_domain_fields_field_get) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**mdr_cdash_version_domains_domain_fields_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_domains_domain_fields_get) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
[**mdr_cdash_version_domains_domain_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_domains_domain_get) | **GET** /mdr/cdash/{version}/domains/{domain} | 
[**mdr_cdash_version_domains_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_domains_get) | **GET** /mdr/cdash/{version}/domains | 
[**mdr_cdash_version_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_get) | **GET** /mdr/cdash/{version} | 
[**mdr_root_cdash_classes_class_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_root_cdash_classes_class_fields_field_get) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**mdr_root_cdash_domains_domain_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_root_cdash_domains_domain_fields_field_get) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 


# **mdr_cdash_version_classes_class_domains_get**
> CdashClassDomains mdr_cdash_version_classes_class_domains_get(version, var_class)



Get CDASH Class Domain List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdash_class_domains import CdashClassDomains
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
    api_instance = openapi_client.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(api_client)
    version = '1-1' # str | CDISC Library Product Version
    var_class = 'SpecialPurpose' # str | CDASH Class Identifier

    try:
        api_response = api_instance.mdr_cdash_version_classes_class_domains_get(version, var_class)
        print("The response of ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_domains_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_domains_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| CDASH Class Identifier | 

### Return type

[**CdashClassDomains**](CdashClassDomains.md)

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

# **mdr_cdash_version_classes_class_fields_field_get**
> CdashClassField mdr_cdash_version_classes_class_fields_field_get(version, var_class, field)



Get CDASH Class Field

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdash_class_field import CdashClassField
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
    api_instance = openapi_client.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(api_client)
    version = '1-1' # str | CDISC Library Product Version
    var_class = 'Timing' # str | CDASH Class Identifier
    field = '--DAT' # str | CDASH Field Identifier

    try:
        api_response = api_instance.mdr_cdash_version_classes_class_fields_field_get(version, var_class, field)
        print("The response of ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_fields_field_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_fields_field_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| CDASH Class Identifier | 
 **field** | **str**| CDASH Field Identifier | 

### Return type

[**CdashClassField**](CdashClassField.md)

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

# **mdr_cdash_version_classes_class_get**
> CdashClass mdr_cdash_version_classes_class_get(version, var_class)



Get CDASH Class

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdash_class import CdashClass
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
    api_instance = openapi_client.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(api_client)
    version = '1-1' # str | CDISC Library Product Version
    var_class = 'Timing' # str | CDASH Class Identifier

    try:
        api_response = api_instance.mdr_cdash_version_classes_class_get(version, var_class)
        print("The response of ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| CDASH Class Identifier | 

### Return type

[**CdashClass**](CdashClass.md)

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

# **mdr_cdash_version_classes_get**
> CdashProductClasses mdr_cdash_version_classes_get(version)



Get CDASH Class List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdash_product_classes import CdashProductClasses
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
    api_instance = openapi_client.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(api_client)
    version = '1-1' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_cdash_version_classes_get(version)
        print("The response of ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**CdashProductClasses**](CdashProductClasses.md)

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

# **mdr_cdash_version_domains_domain_fields_field_get**
> CdashDomainField mdr_cdash_version_domains_domain_fields_field_get(version, domain, field)



Get CDASH Domain Field

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdash_domain_field import CdashDomainField
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
    api_instance = openapi_client.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(api_client)
    version = '1-1' # str | CDISC Library Product Version
    domain = 'DM' # str | CDASH Domain Identifier
    field = 'AGE' # str | CDASH Field Identifier

    try:
        api_response = api_instance.mdr_cdash_version_domains_domain_fields_field_get(version, domain, field)
        print("The response of ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_fields_field_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_fields_field_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **domain** | **str**| CDASH Domain Identifier | 
 **field** | **str**| CDASH Field Identifier | 

### Return type

[**CdashDomainField**](CdashDomainField.md)

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

# **mdr_cdash_version_domains_domain_fields_get**
> CdashDomainFields mdr_cdash_version_domains_domain_fields_get(version, domain)



Get CDASH Domain Field List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdash_domain_fields import CdashDomainFields
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
    api_instance = openapi_client.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(api_client)
    version = '1-1' # str | CDISC Library Product Version
    domain = 'DM' # str | CDASH Domain Identifier

    try:
        api_response = api_instance.mdr_cdash_version_domains_domain_fields_get(version, domain)
        print("The response of ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_fields_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_fields_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **domain** | **str**| CDASH Domain Identifier | 

### Return type

[**CdashDomainFields**](CdashDomainFields.md)

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

# **mdr_cdash_version_domains_domain_get**
> CdashDomain mdr_cdash_version_domains_domain_get(version, domain)



Get CDASH Domain

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdash_domain import CdashDomain
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
    api_instance = openapi_client.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(api_client)
    version = '1-1' # str | CDISC Library Product Version
    domain = 'DM' # str | CDASH Domain Identifier

    try:
        api_response = api_instance.mdr_cdash_version_domains_domain_get(version, domain)
        print("The response of ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **domain** | **str**| CDASH Domain Identifier | 

### Return type

[**CdashDomain**](CdashDomain.md)

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

# **mdr_cdash_version_domains_get**
> CdashProductDomains mdr_cdash_version_domains_get(version)



Get CDASH Domain List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdash_product_domains import CdashProductDomains
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
    api_instance = openapi_client.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(api_client)
    version = '1-1' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_cdash_version_domains_get(version)
        print("The response of ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**CdashProductDomains**](CdashProductDomains.md)

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

# **mdr_cdash_version_get**
> CdashProduct mdr_cdash_version_get(version)



Get CDASH Product

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdash_product import CdashProduct
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
    api_instance = openapi_client.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(api_client)
    version = '1-1' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_cdash_version_get(version)
        print("The response of ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**CdashProduct**](CdashProduct.md)

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

# **mdr_root_cdash_classes_class_fields_field_get**
> RootCdashClassField mdr_root_cdash_classes_class_fields_field_get(var_class, field)



Get Root CDASH Class Field

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.root_cdash_class_field import RootCdashClassField
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
    api_instance = openapi_client.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(api_client)
    var_class = 'Timing' # str | CDASH Class Identifier
    field = '--DAT' # str | CDASH Field Identifier

    try:
        api_response = api_instance.mdr_root_cdash_classes_class_fields_field_get(var_class, field)
        print("The response of ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_root_cdash_classes_class_fields_field_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_root_cdash_classes_class_fields_field_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var_class** | **str**| CDASH Class Identifier | 
 **field** | **str**| CDASH Field Identifier | 

### Return type

[**RootCdashClassField**](RootCdashClassField.md)

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

# **mdr_root_cdash_domains_domain_fields_field_get**
> RootCdashDomainField mdr_root_cdash_domains_domain_fields_field_get(domain, field)



Get Root CDASH Domain Field

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.root_cdash_domain_field import RootCdashDomainField
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
    api_instance = openapi_client.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(api_client)
    domain = 'DM' # str | CDASH Domain Identifier
    field = 'AGE' # str | CDASH Field Identifier

    try:
        api_response = api_instance.mdr_root_cdash_domains_domain_fields_field_get(domain, field)
        print("The response of ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_root_cdash_domains_domain_fields_field_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_root_cdash_domains_domain_fields_field_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **str**| CDASH Domain Identifier | 
 **field** | **str**| CDASH Field Identifier | 

### Return type

[**RootCdashDomainField**](RootCdashDomainField.md)

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

