# ClinicalDataAcquisitionStandardsHarmonizationCDASHApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrCdashVersionClassesClassDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#MdrCdashVersionClassesClassDomainsGet) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
[**MdrCdashVersionClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#MdrCdashVersionClassesClassFieldsFieldGet) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**MdrCdashVersionClassesClassGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#MdrCdashVersionClassesClassGet) | **GET** /mdr/cdash/{version}/classes/{class} | 
[**MdrCdashVersionClassesGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#MdrCdashVersionClassesGet) | **GET** /mdr/cdash/{version}/classes | 
[**MdrCdashVersionDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#MdrCdashVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**MdrCdashVersionDomainsDomainFieldsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#MdrCdashVersionDomainsDomainFieldsGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
[**MdrCdashVersionDomainsDomainGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#MdrCdashVersionDomainsDomainGet) | **GET** /mdr/cdash/{version}/domains/{domain} | 
[**MdrCdashVersionDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#MdrCdashVersionDomainsGet) | **GET** /mdr/cdash/{version}/domains | 
[**MdrCdashVersionGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#MdrCdashVersionGet) | **GET** /mdr/cdash/{version} | 
[**MdrRootCdashClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#MdrRootCdashClassesClassFieldsFieldGet) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**MdrRootCdashDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#MdrRootCdashDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 


# **MdrCdashVersionClassesClassDomainsGet**
> CdashClassDomains MdrCdashVersionClassesClassDomainsGet(version, class)



Get CDASH Class Domain List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-1" # character | CDISC Library Product Version
var_class <- "SpecialPurpose" # character | CDASH Class Identifier

api_instance <- ClinicalDataAcquisitionStandardsHarmonizationCDASHApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashVersionClassesClassDomainsGet(var_version, var_classdata_file = "result.txt")
result <- api_instance$MdrCdashVersionClassesClassDomainsGet(var_version, var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| CDASH Class Identifier | 

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
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrCdashVersionClassesClassFieldsFieldGet**
> CdashClassField MdrCdashVersionClassesClassFieldsFieldGet(version, class, field)



Get CDASH Class Field

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-1" # character | CDISC Library Product Version
var_class <- "Timing" # character | CDASH Class Identifier
var_field <- "--DAT" # character | CDASH Field Identifier

api_instance <- ClinicalDataAcquisitionStandardsHarmonizationCDASHApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashVersionClassesClassFieldsFieldGet(var_version, var_class, var_fielddata_file = "result.txt")
result <- api_instance$MdrCdashVersionClassesClassFieldsFieldGet(var_version, var_class, var_field)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| CDASH Class Identifier | 
 **field** | **character**| CDASH Field Identifier | 

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
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrCdashVersionClassesClassGet**
> CdashClass MdrCdashVersionClassesClassGet(version, class)



Get CDASH Class

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-1" # character | CDISC Library Product Version
var_class <- "Timing" # character | CDASH Class Identifier

api_instance <- ClinicalDataAcquisitionStandardsHarmonizationCDASHApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashVersionClassesClassGet(var_version, var_classdata_file = "result.txt")
result <- api_instance$MdrCdashVersionClassesClassGet(var_version, var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| CDASH Class Identifier | 

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
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrCdashVersionClassesGet**
> CdashProductClasses MdrCdashVersionClassesGet(version)



Get CDASH Class List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-1" # character | CDISC Library Product Version

api_instance <- ClinicalDataAcquisitionStandardsHarmonizationCDASHApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashVersionClassesGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrCdashVersionClassesGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrCdashVersionDomainsDomainFieldsFieldGet**
> CdashDomainField MdrCdashVersionDomainsDomainFieldsFieldGet(version, domain, field)



Get CDASH Domain Field

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-1" # character | CDISC Library Product Version
var_domain <- "DM" # character | CDASH Domain Identifier
var_field <- "AGE" # character | CDASH Field Identifier

api_instance <- ClinicalDataAcquisitionStandardsHarmonizationCDASHApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashVersionDomainsDomainFieldsFieldGet(var_version, var_domain, var_fielddata_file = "result.txt")
result <- api_instance$MdrCdashVersionDomainsDomainFieldsFieldGet(var_version, var_domain, var_field)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **domain** | **character**| CDASH Domain Identifier | 
 **field** | **character**| CDASH Field Identifier | 

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
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrCdashVersionDomainsDomainFieldsGet**
> CdashDomainFields MdrCdashVersionDomainsDomainFieldsGet(version, domain)



Get CDASH Domain Field List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-1" # character | CDISC Library Product Version
var_domain <- "DM" # character | CDASH Domain Identifier

api_instance <- ClinicalDataAcquisitionStandardsHarmonizationCDASHApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashVersionDomainsDomainFieldsGet(var_version, var_domaindata_file = "result.txt")
result <- api_instance$MdrCdashVersionDomainsDomainFieldsGet(var_version, var_domain)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **domain** | **character**| CDASH Domain Identifier | 

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
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrCdashVersionDomainsDomainGet**
> CdashDomain MdrCdashVersionDomainsDomainGet(version, domain)



Get CDASH Domain

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-1" # character | CDISC Library Product Version
var_domain <- "DM" # character | CDASH Domain Identifier

api_instance <- ClinicalDataAcquisitionStandardsHarmonizationCDASHApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashVersionDomainsDomainGet(var_version, var_domaindata_file = "result.txt")
result <- api_instance$MdrCdashVersionDomainsDomainGet(var_version, var_domain)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **domain** | **character**| CDASH Domain Identifier | 

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
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrCdashVersionDomainsGet**
> CdashProductDomains MdrCdashVersionDomainsGet(version)



Get CDASH Domain List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-1" # character | CDISC Library Product Version

api_instance <- ClinicalDataAcquisitionStandardsHarmonizationCDASHApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashVersionDomainsGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrCdashVersionDomainsGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrCdashVersionGet**
> CdashProduct MdrCdashVersionGet(version)



Get CDASH Product

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-1" # character | CDISC Library Product Version

api_instance <- ClinicalDataAcquisitionStandardsHarmonizationCDASHApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashVersionGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrCdashVersionGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrRootCdashClassesClassFieldsFieldGet**
> RootCdashClassField MdrRootCdashClassesClassFieldsFieldGet(class, field)



Get Root CDASH Class Field

### Example
```R
library(openapi)

# prepare function argument(s)
var_class <- "Timing" # character | CDASH Class Identifier
var_field <- "--DAT" # character | CDASH Field Identifier

api_instance <- ClinicalDataAcquisitionStandardsHarmonizationCDASHApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrRootCdashClassesClassFieldsFieldGet(var_class, var_fielddata_file = "result.txt")
result <- api_instance$MdrRootCdashClassesClassFieldsFieldGet(var_class, var_field)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class** | **character**| CDASH Class Identifier | 
 **field** | **character**| CDASH Field Identifier | 

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
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrRootCdashDomainsDomainFieldsFieldGet**
> RootCdashDomainField MdrRootCdashDomainsDomainFieldsFieldGet(domain, field)



Get Root CDASH Domain Field

### Example
```R
library(openapi)

# prepare function argument(s)
var_domain <- "DM" # character | CDASH Domain Identifier
var_field <- "AGE" # character | CDASH Field Identifier

api_instance <- ClinicalDataAcquisitionStandardsHarmonizationCDASHApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrRootCdashDomainsDomainFieldsFieldGet(var_domain, var_fielddata_file = "result.txt")
result <- api_instance$MdrRootCdashDomainsDomainFieldsFieldGet(var_domain, var_field)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **character**| CDASH Domain Identifier | 
 **field** | **character**| CDASH Field Identifier | 

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
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

