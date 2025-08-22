# SENDImplementationGuideSENDIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrRootSendigDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#MdrRootSendigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**MdrSendigVersionClassesClassDatasetsGet**](SENDImplementationGuideSENDIGApi.md#MdrSendigVersionClassesClassDatasetsGet) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**MdrSendigVersionClassesClassGet**](SENDImplementationGuideSENDIGApi.md#MdrSendigVersionClassesClassGet) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**MdrSendigVersionClassesGet**](SENDImplementationGuideSENDIGApi.md#MdrSendigVersionClassesGet) | **GET** /mdr/sendig/{version}/classes | 
[**MdrSendigVersionDatasetsDatasetGet**](SENDImplementationGuideSENDIGApi.md#MdrSendigVersionDatasetsDatasetGet) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**MdrSendigVersionDatasetsDatasetVariablesGet**](SENDImplementationGuideSENDIGApi.md#MdrSendigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**MdrSendigVersionDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#MdrSendigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**MdrSendigVersionDatasetsGet**](SENDImplementationGuideSENDIGApi.md#MdrSendigVersionDatasetsGet) | **GET** /mdr/sendig/{version}/datasets | 
[**MdrSendigVersionGet**](SENDImplementationGuideSENDIGApi.md#MdrSendigVersionGet) | **GET** /mdr/sendig/{version} | 


# **MdrRootSendigDatasetsDatasetVariablesVarGet**
> RootSendigDatasetVariable MdrRootSendigDatasetsDatasetVariablesVarGet(dataset, var)



Get Root SENDIG Dataset Variable

### Example
```R
library(openapi)

# prepare function argument(s)
var_dataset <- "VS" # character | SENDIG Dataset Identifier
var_var <- "VSTEST" # character | SENDIG Variable Identifier

api_instance <- SENDImplementationGuideSENDIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrRootSendigDatasetsDatasetVariablesVarGet(var_dataset, var_vardata_file = "result.txt")
result <- api_instance$MdrRootSendigDatasetsDatasetVariablesVarGet(var_dataset, var_var)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **character**| SENDIG Dataset Identifier | 
 **var** | **character**| SENDIG Variable Identifier | 

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

# **MdrSendigVersionClassesClassDatasetsGet**
> SendigClassDatasets MdrSendigVersionClassesClassDatasetsGet(version, class)



Get SENDIG Class Dataset List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-1" # character | CDISC Library Product Version
var_class <- "Findings" # character | SENDIG Class Identifier

api_instance <- SENDImplementationGuideSENDIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSendigVersionClassesClassDatasetsGet(var_version, var_classdata_file = "result.txt")
result <- api_instance$MdrSendigVersionClassesClassDatasetsGet(var_version, var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| SENDIG Class Identifier | 

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

# **MdrSendigVersionClassesClassGet**
> SendigClass MdrSendigVersionClassesClassGet(version, class)



Get SENDIG Class

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-1" # character | CDISC Library Product Version
var_class <- "Findings" # character | SENDIG Class Identifier

api_instance <- SENDImplementationGuideSENDIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSendigVersionClassesClassGet(var_version, var_classdata_file = "result.txt")
result <- api_instance$MdrSendigVersionClassesClassGet(var_version, var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| SENDIG Class Identifier | 

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

# **MdrSendigVersionClassesGet**
> SendigClasses MdrSendigVersionClassesGet(version)



Get SENDIG Class List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-1" # character | CDISC Library Product Version

api_instance <- SENDImplementationGuideSENDIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSendigVersionClassesGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrSendigVersionClassesGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

# **MdrSendigVersionDatasetsDatasetGet**
> SendigDataset MdrSendigVersionDatasetsDatasetGet(version, dataset)



Get SENDIG Dataset

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-1" # character | CDISC Library Product Version
var_dataset <- "VS" # character | SENDIG Class Identifier

api_instance <- SENDImplementationGuideSENDIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSendigVersionDatasetsDatasetGet(var_version, var_datasetdata_file = "result.txt")
result <- api_instance$MdrSendigVersionDatasetsDatasetGet(var_version, var_dataset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **dataset** | **character**| SENDIG Class Identifier | 

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

# **MdrSendigVersionDatasetsDatasetVariablesGet**
> SendigDatasetVariables MdrSendigVersionDatasetsDatasetVariablesGet(version, dataset)



Get SENDIG Dataset Variable List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-1" # character | CDISC Library Product Version
var_dataset <- "VS" # character | SENDIG Class Identifier

api_instance <- SENDImplementationGuideSENDIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSendigVersionDatasetsDatasetVariablesGet(var_version, var_datasetdata_file = "result.txt")
result <- api_instance$MdrSendigVersionDatasetsDatasetVariablesGet(var_version, var_dataset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **dataset** | **character**| SENDIG Class Identifier | 

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

# **MdrSendigVersionDatasetsDatasetVariablesVarGet**
> SendigDatasetVariable MdrSendigVersionDatasetsDatasetVariablesVarGet(version, dataset, var)



Get SENDIG Dataset Variable

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-1" # character | CDISC Library Product Version
var_dataset <- "VS" # character | SENDIG Class Identifier
var_var <- "VSTEST" # character | SENDIG Variable Identifier

api_instance <- SENDImplementationGuideSENDIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSendigVersionDatasetsDatasetVariablesVarGet(var_version, var_dataset, var_vardata_file = "result.txt")
result <- api_instance$MdrSendigVersionDatasetsDatasetVariablesVarGet(var_version, var_dataset, var_var)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **dataset** | **character**| SENDIG Class Identifier | 
 **var** | **character**| SENDIG Variable Identifier | 

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

# **MdrSendigVersionDatasetsGet**
> SendigDatasets MdrSendigVersionDatasetsGet(version)



Get SENDIG Dataset List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-1" # character | CDISC Library Product Version

api_instance <- SENDImplementationGuideSENDIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSendigVersionDatasetsGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrSendigVersionDatasetsGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

# **MdrSendigVersionGet**
> SendigProduct MdrSendigVersionGet(version)



Get SENDIG product

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-1" # character | CDISC Library Product Version

api_instance <- SENDImplementationGuideSENDIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSendigVersionGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrSendigVersionGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

