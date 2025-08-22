# openapi_client.CDASHImplementationGuideCDASHIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_cdashig_version_classes_class_domains_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_classes_class_domains_get) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | 
[**mdr_cdashig_version_classes_class_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_classes_class_get) | **GET** /mdr/cdashig/{version}/classes/{class} | 
[**mdr_cdashig_version_classes_class_scenarios_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_classes_class_scenarios_get) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | 
[**mdr_cdashig_version_classes_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_classes_get) | **GET** /mdr/cdashig/{version}/classes | 
[**mdr_cdashig_version_domains_domain_fields_field_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_domains_domain_fields_field_get) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
[**mdr_cdashig_version_domains_domain_fields_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_domains_domain_fields_get) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | 
[**mdr_cdashig_version_domains_domain_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_domains_domain_get) | **GET** /mdr/cdashig/{version}/domains/{domain} | 
[**mdr_cdashig_version_domains_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_domains_get) | **GET** /mdr/cdashig/{version}/domains | 
[**mdr_cdashig_version_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_get) | **GET** /mdr/cdashig/{version} | 
[**mdr_cdashig_version_scenarios_domain_scenario_fields_field_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_scenarios_domain_scenario_fields_field_get) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
[**mdr_cdashig_version_scenarios_domain_scenario_fields_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_scenarios_domain_scenario_fields_get) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
[**mdr_cdashig_version_scenarios_domain_scenario_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_scenarios_domain_scenario_get) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
[**mdr_cdashig_version_scenarios_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_scenarios_get) | **GET** /mdr/cdashig/{version}/scenarios | 
[**mdr_root_cdashig_domains_domain_fields_field_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_root_cdashig_domains_domain_fields_field_get) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
[**mdr_root_cdashig_scenarios_domain_scenario_fields_field_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_root_cdashig_scenarios_domain_scenario_fields_field_get) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 


# **mdr_cdashig_version_classes_class_domains_get**
> CdashigClassDomains mdr_cdashig_version_classes_class_domains_get(version, var_class)



Get CDASHIG Class Domain List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_class_domains import CdashigClassDomains
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version
    var_class = 'Findings' # str | CDASHIG Class Identifier

    try:
        api_response = api_instance.mdr_cdashig_version_classes_class_domains_get(version, var_class)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_domains_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_domains_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| CDASHIG Class Identifier | 

### Return type

[**CdashigClassDomains**](CdashigClassDomains.md)

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

# **mdr_cdashig_version_classes_class_get**
> CdashigClass mdr_cdashig_version_classes_class_get(version, var_class)



Get CDASHIG Class

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_class import CdashigClass
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version
    var_class = 'Findings' # str | CDASHIG Class Identifier

    try:
        api_response = api_instance.mdr_cdashig_version_classes_class_get(version, var_class)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| CDASHIG Class Identifier | 

### Return type

[**CdashigClass**](CdashigClass.md)

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

# **mdr_cdashig_version_classes_class_scenarios_get**
> CdashigClassScenarios mdr_cdashig_version_classes_class_scenarios_get(version, var_class)



Get CDASHIG Class Scenario List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_class_scenarios import CdashigClassScenarios
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version
    var_class = 'Findings' # str | CDASHIG Class Identifier

    try:
        api_response = api_instance.mdr_cdashig_version_classes_class_scenarios_get(version, var_class)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_scenarios_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_scenarios_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **var_class** | **str**| CDASHIG Class Identifier | 

### Return type

[**CdashigClassScenarios**](CdashigClassScenarios.md)

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

# **mdr_cdashig_version_classes_get**
> CdashigProductClasses mdr_cdashig_version_classes_get(version)



Get CDASHIG Class List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_product_classes import CdashigProductClasses
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_cdashig_version_classes_get(version)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**CdashigProductClasses**](CdashigProductClasses.md)

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

# **mdr_cdashig_version_domains_domain_fields_field_get**
> CdashigDomainField mdr_cdashig_version_domains_domain_fields_field_get(version, domain, field)



Get CDASHIG Domain Field

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_domain_field import CdashigDomainField
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version
    domain = 'VS' # str | CDASHIG Domain Identifier
    field = 'VSDAT' # str | CDASHIG Field Identifier

    try:
        api_response = api_instance.mdr_cdashig_version_domains_domain_fields_field_get(version, domain, field)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_fields_field_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_fields_field_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **domain** | **str**| CDASHIG Domain Identifier | 
 **field** | **str**| CDASHIG Field Identifier | 

### Return type

[**CdashigDomainField**](CdashigDomainField.md)

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

# **mdr_cdashig_version_domains_domain_fields_get**
> CdashigDomainFields mdr_cdashig_version_domains_domain_fields_get(version, domain)



Get CDASHIG Domain Field List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_domain_fields import CdashigDomainFields
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version
    domain = 'VS' # str | CDASHIG Domain Identifier

    try:
        api_response = api_instance.mdr_cdashig_version_domains_domain_fields_get(version, domain)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_fields_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_fields_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **domain** | **str**| CDASHIG Domain Identifier | 

### Return type

[**CdashigDomainFields**](CdashigDomainFields.md)

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

# **mdr_cdashig_version_domains_domain_get**
> CdashigDomain mdr_cdashig_version_domains_domain_get(version, domain)



Get CDASHIG Domain

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_domain import CdashigDomain
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version
    domain = 'VS' # str | CDASHIG Domain Identifier

    try:
        api_response = api_instance.mdr_cdashig_version_domains_domain_get(version, domain)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **domain** | **str**| CDASHIG Domain Identifier | 

### Return type

[**CdashigDomain**](CdashigDomain.md)

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

# **mdr_cdashig_version_domains_get**
> CdashigProductDomains mdr_cdashig_version_domains_get(version)



Get CDASHIG Domain List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_product_domains import CdashigProductDomains
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_cdashig_version_domains_get(version)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**CdashigProductDomains**](CdashigProductDomains.md)

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

# **mdr_cdashig_version_get**
> CdashigProduct mdr_cdashig_version_get(version)



Get CDASHIG Product

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_product import CdashigProduct
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_cdashig_version_get(version)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**CdashigProduct**](CdashigProduct.md)

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

# **mdr_cdashig_version_scenarios_domain_scenario_fields_field_get**
> CdashigScenarioField mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(version, domain, scenario, field)



Get CDASHIG Scenario Field

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_scenario_field import CdashigScenarioField
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version
    domain = 'VS' # str | CDASHIG Domain Identifier
    scenario = 'Generic' # str | CDASHIG Scenario Identifier
    field = 'VSDAT' # str | CDASHIG Field Identifier

    try:
        api_response = api_instance.mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(version, domain, scenario, field)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_fields_field_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_fields_field_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **domain** | **str**| CDASHIG Domain Identifier | 
 **scenario** | **str**| CDASHIG Scenario Identifier | 
 **field** | **str**| CDASHIG Field Identifier | 

### Return type

[**CdashigScenarioField**](CdashigScenarioField.md)

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

# **mdr_cdashig_version_scenarios_domain_scenario_fields_get**
> CdashigScenarioFields mdr_cdashig_version_scenarios_domain_scenario_fields_get(version, domain, scenario)



Get CDASHIG Scenario Field List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_scenario_fields import CdashigScenarioFields
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version
    domain = 'VS' # str | CDASHIG Domain Identifier
    scenario = 'HorizontalGeneric' # str | CDASHIG Scenario Identifier

    try:
        api_response = api_instance.mdr_cdashig_version_scenarios_domain_scenario_fields_get(version, domain, scenario)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_fields_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_fields_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **domain** | **str**| CDASHIG Domain Identifier | 
 **scenario** | **str**| CDASHIG Scenario Identifier | 

### Return type

[**CdashigScenarioFields**](CdashigScenarioFields.md)

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

# **mdr_cdashig_version_scenarios_domain_scenario_get**
> CdashigScenario mdr_cdashig_version_scenarios_domain_scenario_get(version, domain, scenario)



Get CDASHIG Scenario

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_scenario import CdashigScenario
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version
    domain = 'VS' # str | CDASHIG Domain Identifier
    scenario = 'HorizontalGeneric' # str | CDASHIG Scenario Identifier

    try:
        api_response = api_instance.mdr_cdashig_version_scenarios_domain_scenario_get(version, domain, scenario)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 
 **domain** | **str**| CDASHIG Domain Identifier | 
 **scenario** | **str**| CDASHIG Scenario Identifier | 

### Return type

[**CdashigScenario**](CdashigScenario.md)

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

# **mdr_cdashig_version_scenarios_get**
> CdashigProductScenarios mdr_cdashig_version_scenarios_get(version)



Get CDASHIG Scenario List

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.cdashig_product_scenarios import CdashigProductScenarios
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    version = '2-1' # str | CDISC Library Product Version

    try:
        api_response = api_instance.mdr_cdashig_version_scenarios_get(version)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**| CDISC Library Product Version | 

### Return type

[**CdashigProductScenarios**](CdashigProductScenarios.md)

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

# **mdr_root_cdashig_domains_domain_fields_field_get**
> RootCdashigDomainField mdr_root_cdashig_domains_domain_fields_field_get(domain, field)



Get Root CDASHIG Domain Field

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.root_cdashig_domain_field import RootCdashigDomainField
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    domain = 'VS' # str | CDASHIG Domain Identifier
    field = 'VSDAT' # str | CDASHIG Field Identifier

    try:
        api_response = api_instance.mdr_root_cdashig_domains_domain_fields_field_get(domain, field)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_root_cdashig_domains_domain_fields_field_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_root_cdashig_domains_domain_fields_field_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **str**| CDASHIG Domain Identifier | 
 **field** | **str**| CDASHIG Field Identifier | 

### Return type

[**RootCdashigDomainField**](RootCdashigDomainField.md)

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

# **mdr_root_cdashig_scenarios_domain_scenario_fields_field_get**
> RootCdashigScenarioField mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(domain, scenario, field)



Get Root CDASHIG Scenario Field

### Example

* Basic Authentication (basicAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.root_cdashig_scenario_field import RootCdashigScenarioField
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
    api_instance = openapi_client.CDASHImplementationGuideCDASHIGApi(api_client)
    domain = 'VS' # str | CDASHIG Domain Identifier
    scenario = 'Generic' # str | CDASHIG Scenario Identifier
    field = 'VSDAT' # str | CDASHIG Field Identifier

    try:
        api_response = api_instance.mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(domain, scenario, field)
        print("The response of CDASHImplementationGuideCDASHIGApi->mdr_root_cdashig_scenarios_domain_scenario_fields_field_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_root_cdashig_scenarios_domain_scenario_fields_field_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **str**| CDASHIG Domain Identifier | 
 **scenario** | **str**| CDASHIG Scenario Identifier | 
 **field** | **str**| CDASHIG Field Identifier | 

### Return type

[**RootCdashigScenarioField**](RootCdashigScenarioField.md)

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

