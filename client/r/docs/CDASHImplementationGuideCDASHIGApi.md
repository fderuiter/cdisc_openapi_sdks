# CDASHImplementationGuideCDASHIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrCdashigVersionClassesClassDomainsGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionClassesClassDomainsGet) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | 
[**MdrCdashigVersionClassesClassGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionClassesClassGet) | **GET** /mdr/cdashig/{version}/classes/{class} | 
[**MdrCdashigVersionClassesClassScenariosGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionClassesClassScenariosGet) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | 
[**MdrCdashigVersionClassesGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionClassesGet) | **GET** /mdr/cdashig/{version}/classes | 
[**MdrCdashigVersionDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
[**MdrCdashigVersionDomainsDomainFieldsGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionDomainsDomainFieldsGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | 
[**MdrCdashigVersionDomainsDomainGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionDomainsDomainGet) | **GET** /mdr/cdashig/{version}/domains/{domain} | 
[**MdrCdashigVersionDomainsGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionDomainsGet) | **GET** /mdr/cdashig/{version}/domains | 
[**MdrCdashigVersionGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionGet) | **GET** /mdr/cdashig/{version} | 
[**MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
[**MdrCdashigVersionScenariosDomainScenarioFieldsGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionScenariosDomainScenarioFieldsGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
[**MdrCdashigVersionScenariosDomainScenarioGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionScenariosDomainScenarioGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
[**MdrCdashigVersionScenariosGet**](CDASHImplementationGuideCDASHIGApi.md#MdrCdashigVersionScenariosGet) | **GET** /mdr/cdashig/{version}/scenarios | 
[**MdrRootCdashigDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#MdrRootCdashigDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
[**MdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#MdrRootCdashigScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 


# **MdrCdashigVersionClassesClassDomainsGet**
> CdashigClassDomains MdrCdashigVersionClassesClassDomainsGet(version, class)



Get CDASHIG Class Domain List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version
var_class <- "Findings" # character | CDASHIG Class Identifier

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionClassesClassDomainsGet(var_version, var_classdata_file = "result.txt")
result <- api_instance$MdrCdashigVersionClassesClassDomainsGet(var_version, var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| CDASHIG Class Identifier | 

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

# **MdrCdashigVersionClassesClassGet**
> CdashigClass MdrCdashigVersionClassesClassGet(version, class)



Get CDASHIG Class

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version
var_class <- "Findings" # character | CDASHIG Class Identifier

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionClassesClassGet(var_version, var_classdata_file = "result.txt")
result <- api_instance$MdrCdashigVersionClassesClassGet(var_version, var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| CDASHIG Class Identifier | 

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

# **MdrCdashigVersionClassesClassScenariosGet**
> CdashigClassScenarios MdrCdashigVersionClassesClassScenariosGet(version, class)



Get CDASHIG Class Scenario List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version
var_class <- "Findings" # character | CDASHIG Class Identifier

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionClassesClassScenariosGet(var_version, var_classdata_file = "result.txt")
result <- api_instance$MdrCdashigVersionClassesClassScenariosGet(var_version, var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| CDASHIG Class Identifier | 

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

# **MdrCdashigVersionClassesGet**
> CdashigProductClasses MdrCdashigVersionClassesGet(version)



Get CDASHIG Class List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionClassesGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrCdashigVersionClassesGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

# **MdrCdashigVersionDomainsDomainFieldsFieldGet**
> CdashigDomainField MdrCdashigVersionDomainsDomainFieldsFieldGet(version, domain, field)



Get CDASHIG Domain Field

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version
var_domain <- "VS" # character | CDASHIG Domain Identifier
var_field <- "VSDAT" # character | CDASHIG Field Identifier

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionDomainsDomainFieldsFieldGet(var_version, var_domain, var_fielddata_file = "result.txt")
result <- api_instance$MdrCdashigVersionDomainsDomainFieldsFieldGet(var_version, var_domain, var_field)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **domain** | **character**| CDASHIG Domain Identifier | 
 **field** | **character**| CDASHIG Field Identifier | 

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

# **MdrCdashigVersionDomainsDomainFieldsGet**
> CdashigDomainFields MdrCdashigVersionDomainsDomainFieldsGet(version, domain)



Get CDASHIG Domain Field List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version
var_domain <- "VS" # character | CDASHIG Domain Identifier

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionDomainsDomainFieldsGet(var_version, var_domaindata_file = "result.txt")
result <- api_instance$MdrCdashigVersionDomainsDomainFieldsGet(var_version, var_domain)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **domain** | **character**| CDASHIG Domain Identifier | 

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

# **MdrCdashigVersionDomainsDomainGet**
> CdashigDomain MdrCdashigVersionDomainsDomainGet(version, domain)



Get CDASHIG Domain

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version
var_domain <- "VS" # character | CDASHIG Domain Identifier

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionDomainsDomainGet(var_version, var_domaindata_file = "result.txt")
result <- api_instance$MdrCdashigVersionDomainsDomainGet(var_version, var_domain)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **domain** | **character**| CDASHIG Domain Identifier | 

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

# **MdrCdashigVersionDomainsGet**
> CdashigProductDomains MdrCdashigVersionDomainsGet(version)



Get CDASHIG Domain List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionDomainsGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrCdashigVersionDomainsGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

# **MdrCdashigVersionGet**
> CdashigProduct MdrCdashigVersionGet(version)



Get CDASHIG Product

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrCdashigVersionGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

# **MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**
> CdashigScenarioField MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version, domain, scenario, field)



Get CDASHIG Scenario Field

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version
var_domain <- "VS" # character | CDASHIG Domain Identifier
var_scenario <- "Generic" # character | CDASHIG Scenario Identifier
var_field <- "VSDAT" # character | CDASHIG Field Identifier

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(var_version, var_domain, var_scenario, var_fielddata_file = "result.txt")
result <- api_instance$MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(var_version, var_domain, var_scenario, var_field)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **domain** | **character**| CDASHIG Domain Identifier | 
 **scenario** | **character**| CDASHIG Scenario Identifier | 
 **field** | **character**| CDASHIG Field Identifier | 

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

# **MdrCdashigVersionScenariosDomainScenarioFieldsGet**
> CdashigScenarioFields MdrCdashigVersionScenariosDomainScenarioFieldsGet(version, domain, scenario)



Get CDASHIG Scenario Field List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version
var_domain <- "VS" # character | CDASHIG Domain Identifier
var_scenario <- "HorizontalGeneric" # character | CDASHIG Scenario Identifier

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionScenariosDomainScenarioFieldsGet(var_version, var_domain, var_scenariodata_file = "result.txt")
result <- api_instance$MdrCdashigVersionScenariosDomainScenarioFieldsGet(var_version, var_domain, var_scenario)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **domain** | **character**| CDASHIG Domain Identifier | 
 **scenario** | **character**| CDASHIG Scenario Identifier | 

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

# **MdrCdashigVersionScenariosDomainScenarioGet**
> CdashigScenario MdrCdashigVersionScenariosDomainScenarioGet(version, domain, scenario)



Get CDASHIG Scenario

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version
var_domain <- "VS" # character | CDASHIG Domain Identifier
var_scenario <- "HorizontalGeneric" # character | CDASHIG Scenario Identifier

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionScenariosDomainScenarioGet(var_version, var_domain, var_scenariodata_file = "result.txt")
result <- api_instance$MdrCdashigVersionScenariosDomainScenarioGet(var_version, var_domain, var_scenario)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **domain** | **character**| CDASHIG Domain Identifier | 
 **scenario** | **character**| CDASHIG Scenario Identifier | 

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

# **MdrCdashigVersionScenariosGet**
> CdashigProductScenarios MdrCdashigVersionScenariosGet(version)



Get CDASHIG Scenario List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "2-1" # character | CDISC Library Product Version

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCdashigVersionScenariosGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrCdashigVersionScenariosGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

# **MdrRootCdashigDomainsDomainFieldsFieldGet**
> RootCdashigDomainField MdrRootCdashigDomainsDomainFieldsFieldGet(domain, field)



Get Root CDASHIG Domain Field

### Example
```R
library(openapi)

# prepare function argument(s)
var_domain <- "VS" # character | CDASHIG Domain Identifier
var_field <- "VSDAT" # character | CDASHIG Field Identifier

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrRootCdashigDomainsDomainFieldsFieldGet(var_domain, var_fielddata_file = "result.txt")
result <- api_instance$MdrRootCdashigDomainsDomainFieldsFieldGet(var_domain, var_field)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **character**| CDASHIG Domain Identifier | 
 **field** | **character**| CDASHIG Field Identifier | 

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

# **MdrRootCdashigScenariosDomainScenarioFieldsFieldGet**
> RootCdashigScenarioField MdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain, scenario, field)



Get Root CDASHIG Scenario Field

### Example
```R
library(openapi)

# prepare function argument(s)
var_domain <- "VS" # character | CDASHIG Domain Identifier
var_scenario <- "Generic" # character | CDASHIG Scenario Identifier
var_field <- "VSDAT" # character | CDASHIG Field Identifier

api_instance <- CDASHImplementationGuideCDASHIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrRootCdashigScenariosDomainScenarioFieldsFieldGet(var_domain, var_scenario, var_fielddata_file = "result.txt")
result <- api_instance$MdrRootCdashigScenariosDomainScenarioFieldsFieldGet(var_domain, var_scenario, var_field)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **character**| CDASHIG Domain Identifier | 
 **scenario** | **character**| CDASHIG Scenario Identifier | 
 **field** | **character**| CDASHIG Field Identifier | 

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

