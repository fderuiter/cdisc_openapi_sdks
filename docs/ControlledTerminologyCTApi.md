# ControlledTerminologyCTApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrCtPackagesGet**](ControlledTerminologyCTApi.md#MdrCtPackagesGet) | **GET** /mdr/ct/packages | 
[**MdrCtPackagesPackageCodelistsCodelistGet**](ControlledTerminologyCTApi.md#MdrCtPackagesPackageCodelistsCodelistGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | 
[**MdrCtPackagesPackageCodelistsCodelistTermsGet**](ControlledTerminologyCTApi.md#MdrCtPackagesPackageCodelistsCodelistTermsGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
[**MdrCtPackagesPackageCodelistsCodelistTermsTermGet**](ControlledTerminologyCTApi.md#MdrCtPackagesPackageCodelistsCodelistTermsTermGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
[**MdrCtPackagesPackageCodelistsGet**](ControlledTerminologyCTApi.md#MdrCtPackagesPackageCodelistsGet) | **GET** /mdr/ct/packages/{package}/codelists | 
[**MdrCtPackagesProductGet**](ControlledTerminologyCTApi.md#MdrCtPackagesProductGet) | **GET** /mdr/ct/packages/{product} | 
[**MdrRootCtProductGroupCodelistsCodelistGet**](ControlledTerminologyCTApi.md#MdrRootCtProductGroupCodelistsCodelistGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
[**MdrRootCtProductGroupCodelistsCodelistTermsTermGet**](ControlledTerminologyCTApi.md#MdrRootCtProductGroupCodelistsCodelistTermsTermGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 


# **MdrCtPackagesGet**
> CtPackages MdrCtPackagesGet()



Get CDISC Library CT Package List

### Example
```R
library(openapi)


api_instance <- ControlledTerminologyCTApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCtPackagesGet(data_file = "result.txt")
result <- api_instance$MdrCtPackagesGet()
dput(result)
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

# **MdrCtPackagesPackageCodelistsCodelistGet**
> CtCodelist MdrCtPackagesPackageCodelistsCodelistGet(package, codelist)



Get CDISC Library CT Package Codelist

### Example
```R
library(openapi)

# prepare function argument(s)
var_package <- "sdtmct-2019-12-20" # character | CT Package Identifier
var_codelist <- "C67154" # character | CT Codelist Identifier

api_instance <- ControlledTerminologyCTApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCtPackagesPackageCodelistsCodelistGet(var_package, var_codelistdata_file = "result.txt")
result <- api_instance$MdrCtPackagesPackageCodelistsCodelistGet(var_package, var_codelist)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **character**| CT Package Identifier | 
 **codelist** | **character**| CT Codelist Identifier | 

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

# **MdrCtPackagesPackageCodelistsCodelistTermsGet**
> CtCodelistTerms MdrCtPackagesPackageCodelistsCodelistTermsGet(package, codelist)



Get CDISC Library CT Package Codelist Term List

### Example
```R
library(openapi)

# prepare function argument(s)
var_package <- "sdtmct-2019-12-20" # character | CT Package Identifier
var_codelist <- "C67154" # character | CT Codelist Identifier

api_instance <- ControlledTerminologyCTApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCtPackagesPackageCodelistsCodelistTermsGet(var_package, var_codelistdata_file = "result.txt")
result <- api_instance$MdrCtPackagesPackageCodelistsCodelistTermsGet(var_package, var_codelist)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **character**| CT Package Identifier | 
 **codelist** | **character**| CT Codelist Identifier | 

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

# **MdrCtPackagesPackageCodelistsCodelistTermsTermGet**
> CtTerm MdrCtPackagesPackageCodelistsCodelistTermsTermGet(package, codelist, term)



Get CDISC Library CT Package Codelist Term

### Example
```R
library(openapi)

# prepare function argument(s)
var_package <- "sdtmct-2019-12-20" # character | CT Package Product Identifier
var_codelist <- "C67154" # character | CT Codelist Identifier
var_term <- "C64796" # character | CT Codelist Term Identifier

api_instance <- ControlledTerminologyCTApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCtPackagesPackageCodelistsCodelistTermsTermGet(var_package, var_codelist, var_termdata_file = "result.txt")
result <- api_instance$MdrCtPackagesPackageCodelistsCodelistTermsTermGet(var_package, var_codelist, var_term)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **character**| CT Package Product Identifier | 
 **codelist** | **character**| CT Codelist Identifier | 
 **term** | **character**| CT Codelist Term Identifier | 

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

# **MdrCtPackagesPackageCodelistsGet**
> CtPackageCodelists MdrCtPackagesPackageCodelistsGet(package)



Get CDISC Library CT Package Codelist List

### Example
```R
library(openapi)

# prepare function argument(s)
var_package <- "sdtmct-2019-12-20" # character | CT Package Identifier

api_instance <- ControlledTerminologyCTApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCtPackagesPackageCodelistsGet(var_packagedata_file = "result.txt")
result <- api_instance$MdrCtPackagesPackageCodelistsGet(var_package)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **character**| CT Package Identifier | 

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

# **MdrCtPackagesProductGet**
> CtPackage MdrCtPackagesProductGet(product)



Get CDISC Library CT Package

### Example
```R
library(openapi)

# prepare function argument(s)
var_product <- "sdtmct-2019-12-20" # character | CT Package Product Identifier

api_instance <- ControlledTerminologyCTApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrCtPackagesProductGet(var_productdata_file = "result.txt")
result <- api_instance$MdrCtPackagesProductGet(var_product)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **character**| CT Package Product Identifier | 

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

# **MdrRootCtProductGroupCodelistsCodelistGet**
> RootCtCodelist MdrRootCtProductGroupCodelistsCodelistGet(product_group, codelist)



Get CDISC Library Root CT Codelist

### Example
```R
library(openapi)

# prepare function argument(s)
var_product_group <- "sdtmct" # character | CT Product Group Identifier
var_codelist <- "C67154" # character | CT Codelist Identifier

api_instance <- ControlledTerminologyCTApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrRootCtProductGroupCodelistsCodelistGet(var_product_group, var_codelistdata_file = "result.txt")
result <- api_instance$MdrRootCtProductGroupCodelistsCodelistGet(var_product_group, var_codelist)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_group** | **character**| CT Product Group Identifier | 
 **codelist** | **character**| CT Codelist Identifier | 

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

# **MdrRootCtProductGroupCodelistsCodelistTermsTermGet**
> RootCtTerm MdrRootCtProductGroupCodelistsCodelistTermsTermGet(product_group, codelist, term)



Get CDISC Library Root CT Term

### Example
```R
library(openapi)

# prepare function argument(s)
var_product_group <- "sdtmct" # character | CT Product Group Identifier
var_codelist <- "C67154" # character | CT Codelist Identifier
var_term <- "C64796" # character | CT Codelist Term Identifier

api_instance <- ControlledTerminologyCTApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrRootCtProductGroupCodelistsCodelistTermsTermGet(var_product_group, var_codelist, var_termdata_file = "result.txt")
result <- api_instance$MdrRootCtProductGroupCodelistsCodelistTermsTermGet(var_product_group, var_codelist, var_term)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_group** | **character**| CT Product Group Identifier | 
 **codelist** | **character**| CT Codelist Identifier | 
 **term** | **character**| CT Codelist Term Identifier | 

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

