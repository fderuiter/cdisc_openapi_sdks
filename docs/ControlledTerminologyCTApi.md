# openapi_client.ControlledTerminologyCTApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_ct_packages_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_get) | **GET** /mdr/ct/packages | 
[**mdr_ct_packages_package_codelists_codelist_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_package_codelists_codelist_get) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | 
[**mdr_ct_packages_package_codelists_codelist_terms_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_package_codelists_codelist_terms_get) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
[**mdr_ct_packages_package_codelists_codelist_terms_term_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_package_codelists_codelist_terms_term_get) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
[**mdr_ct_packages_package_codelists_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_package_codelists_get) | **GET** /mdr/ct/packages/{package}/codelists | 
[**mdr_ct_packages_product_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_product_get) | **GET** /mdr/ct/packages/{product} | 
[**mdr_root_ct_product_group_codelists_codelist_get**](ControlledTerminologyCTApi.md#mdr_root_ct_product_group_codelists_codelist_get) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
[**mdr_root_ct_product_group_codelists_codelist_terms_term_get**](ControlledTerminologyCTApi.md#mdr_root_ct_product_group_codelists_codelist_terms_term_get) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 


# **mdr_ct_packages_get**
> CtPackages mdr_ct_packages_get()

Get CDISC Library CT Package List

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.ct_packages import CtPackages
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
    api_instance = openapi_client.ControlledTerminologyCTApi(api_client)

    try:
        api_response = api_instance.mdr_ct_packages_get()
        print("The response of ControlledTerminologyCTApi->mdr_ct_packages_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ControlledTerminologyCTApi->mdr_ct_packages_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**CtPackages**](CtPackages.md)

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

# **mdr_ct_packages_package_codelists_codelist_get**
> CtCodelist mdr_ct_packages_package_codelists_codelist_get(package, codelist)

Get CDISC Library CT Package Codelist

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.ct_codelist import CtCodelist
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
    api_instance = openapi_client.ControlledTerminologyCTApi(api_client)
    package = 'sdtmct-2019-12-20' # str | CT Package Identifier
    codelist = 'C67154' # str | CT Codelist Identifier

    try:
        api_response = api_instance.mdr_ct_packages_package_codelists_codelist_get(package, codelist)
        print("The response of ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **str**| CT Package Identifier | 
 **codelist** | **str**| CT Codelist Identifier | 

### Return type

[**CtCodelist**](CtCodelist.md)

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

# **mdr_ct_packages_package_codelists_codelist_terms_get**
> CtCodelistTerms mdr_ct_packages_package_codelists_codelist_terms_get(package, codelist)

Get CDISC Library CT Package Codelist Term List

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.ct_codelist_terms import CtCodelistTerms
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
    api_instance = openapi_client.ControlledTerminologyCTApi(api_client)
    package = 'sdtmct-2019-12-20' # str | CT Package Identifier
    codelist = 'C67154' # str | CT Codelist Identifier

    try:
        api_response = api_instance.mdr_ct_packages_package_codelists_codelist_terms_get(package, codelist)
        print("The response of ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_terms_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_terms_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **str**| CT Package Identifier | 
 **codelist** | **str**| CT Codelist Identifier | 

### Return type

[**CtCodelistTerms**](CtCodelistTerms.md)

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

# **mdr_ct_packages_package_codelists_codelist_terms_term_get**
> CtTerm mdr_ct_packages_package_codelists_codelist_terms_term_get(package, codelist, term)

Get CDISC Library CT Package Codelist Term

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.ct_term import CtTerm
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
    api_instance = openapi_client.ControlledTerminologyCTApi(api_client)
    package = 'sdtmct-2019-12-20' # str | CT Package Product Identifier
    codelist = 'C67154' # str | CT Codelist Identifier
    term = 'C64796' # str | CT Codelist Term Identifier

    try:
        api_response = api_instance.mdr_ct_packages_package_codelists_codelist_terms_term_get(package, codelist, term)
        print("The response of ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_terms_term_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_terms_term_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **str**| CT Package Product Identifier | 
 **codelist** | **str**| CT Codelist Identifier | 
 **term** | **str**| CT Codelist Term Identifier | 

### Return type

[**CtTerm**](CtTerm.md)

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

# **mdr_ct_packages_package_codelists_get**
> CtPackageCodelists mdr_ct_packages_package_codelists_get(package)

Get CDISC Library CT Package Codelist List

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.ct_package_codelists import CtPackageCodelists
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
    api_instance = openapi_client.ControlledTerminologyCTApi(api_client)
    package = 'sdtmct-2019-12-20' # str | CT Package Identifier

    try:
        api_response = api_instance.mdr_ct_packages_package_codelists_get(package)
        print("The response of ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **str**| CT Package Identifier | 

### Return type

[**CtPackageCodelists**](CtPackageCodelists.md)

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

# **mdr_ct_packages_product_get**
> CtPackage mdr_ct_packages_product_get(product)

Get CDISC Library CT Package

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.ct_package import CtPackage
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
    api_instance = openapi_client.ControlledTerminologyCTApi(api_client)
    product = 'sdtmct-2019-12-20' # str | CT Package Product Identifier

    try:
        api_response = api_instance.mdr_ct_packages_product_get(product)
        print("The response of ControlledTerminologyCTApi->mdr_ct_packages_product_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ControlledTerminologyCTApi->mdr_ct_packages_product_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **str**| CT Package Product Identifier | 

### Return type

[**CtPackage**](CtPackage.md)

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

# **mdr_root_ct_product_group_codelists_codelist_get**
> RootCtCodelist mdr_root_ct_product_group_codelists_codelist_get(product_group, codelist)

Get CDISC Library Root CT Codelist

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.root_ct_codelist import RootCtCodelist
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
    api_instance = openapi_client.ControlledTerminologyCTApi(api_client)
    product_group = 'sdtmct' # str | CT Product Group Identifier
    codelist = 'C67154' # str | CT Codelist Identifier

    try:
        api_response = api_instance.mdr_root_ct_product_group_codelists_codelist_get(product_group, codelist)
        print("The response of ControlledTerminologyCTApi->mdr_root_ct_product_group_codelists_codelist_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ControlledTerminologyCTApi->mdr_root_ct_product_group_codelists_codelist_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_group** | **str**| CT Product Group Identifier | 
 **codelist** | **str**| CT Codelist Identifier | 

### Return type

[**RootCtCodelist**](RootCtCodelist.md)

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

# **mdr_root_ct_product_group_codelists_codelist_terms_term_get**
> RootCtTerm mdr_root_ct_product_group_codelists_codelist_terms_term_get(product_group, codelist, term)

Get CDISC Library Root CT Term

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.root_ct_term import RootCtTerm
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
    api_instance = openapi_client.ControlledTerminologyCTApi(api_client)
    product_group = 'sdtmct' # str | CT Product Group Identifier
    codelist = 'C67154' # str | CT Codelist Identifier
    term = 'C64796' # str | CT Codelist Term Identifier

    try:
        api_response = api_instance.mdr_root_ct_product_group_codelists_codelist_terms_term_get(product_group, codelist, term)
        print("The response of ControlledTerminologyCTApi->mdr_root_ct_product_group_codelists_codelist_terms_term_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ControlledTerminologyCTApi->mdr_root_ct_product_group_codelists_codelist_terms_term_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_group** | **str**| CT Product Group Identifier | 
 **codelist** | **str**| CT Codelist Identifier | 
 **term** | **str**| CT Codelist Term Identifier | 

### Return type

[**RootCtTerm**](RootCtTerm.md)

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

