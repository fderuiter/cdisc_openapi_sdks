# SDTMImplementationGuideSDTMIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrRootSdtmigDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGApi.md#MdrRootSdtmigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**MdrSdtmigVersionClassesClassDatasetsGet**](SDTMImplementationGuideSDTMIGApi.md#MdrSdtmigVersionClassesClassDatasetsGet) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**MdrSdtmigVersionClassesClassGet**](SDTMImplementationGuideSDTMIGApi.md#MdrSdtmigVersionClassesClassGet) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
[**MdrSdtmigVersionClassesGet**](SDTMImplementationGuideSDTMIGApi.md#MdrSdtmigVersionClassesGet) | **GET** /mdr/sdtmig/{version}/classes | 
[**MdrSdtmigVersionDatasetsDatasetGet**](SDTMImplementationGuideSDTMIGApi.md#MdrSdtmigVersionDatasetsDatasetGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**MdrSdtmigVersionDatasetsDatasetVariablesGet**](SDTMImplementationGuideSDTMIGApi.md#MdrSdtmigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**MdrSdtmigVersionDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGApi.md#MdrSdtmigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**MdrSdtmigVersionDatasetsGet**](SDTMImplementationGuideSDTMIGApi.md#MdrSdtmigVersionDatasetsGet) | **GET** /mdr/sdtmig/{version}/datasets | 
[**MdrSdtmigVersionGet**](SDTMImplementationGuideSDTMIGApi.md#MdrSdtmigVersionGet) | **GET** /mdr/sdtmig/{version} | 


# **MdrRootSdtmigDatasetsDatasetVariablesVarGet**
> RootSdtmigDatasetVariable MdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset, var)



Get Root SDTMIG Dataset Variable

### Example
```R
library(openapi)

# prepare function argument(s)
var_dataset <- "DM" # character | SDTMIG Dataset Identifier
var_var <- "SUBJID" # character | SDTMIG Variable Identifier

api_instance <- SDTMImplementationGuideSDTMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrRootSdtmigDatasetsDatasetVariablesVarGet(var_dataset, var_vardata_file = "result.txt")
result <- api_instance$MdrRootSdtmigDatasetsDatasetVariablesVarGet(var_dataset, var_var)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **character**| SDTMIG Dataset Identifier | 
 **var** | **character**| SDTMIG Variable Identifier | 

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

# **MdrSdtmigVersionClassesClassDatasetsGet**
> SdtmigClassDatasets MdrSdtmigVersionClassesClassDatasetsGet(version, class)



Get SDTMIG Class Dataset List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-3" # character | CDISC Library Product Version
var_class <- "Findings" # character | SDTMIG Class Identifier

api_instance <- SDTMImplementationGuideSDTMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmigVersionClassesClassDatasetsGet(var_version, var_classdata_file = "result.txt")
result <- api_instance$MdrSdtmigVersionClassesClassDatasetsGet(var_version, var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| SDTMIG Class Identifier | 

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

# **MdrSdtmigVersionClassesClassGet**
> SdtmigClass MdrSdtmigVersionClassesClassGet(version, class)



Get SDTMIG Class

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-3" # character | CDISC Library Product Version
var_class <- "Findings" # character | SDTMIG Class Identifier

api_instance <- SDTMImplementationGuideSDTMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmigVersionClassesClassGet(var_version, var_classdata_file = "result.txt")
result <- api_instance$MdrSdtmigVersionClassesClassGet(var_version, var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| SDTMIG Class Identifier | 

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

# **MdrSdtmigVersionClassesGet**
> SdtmigClasses MdrSdtmigVersionClassesGet(version)



Get SDTMIG Class List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-3" # character | CDISC Library Product Version

api_instance <- SDTMImplementationGuideSDTMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmigVersionClassesGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrSdtmigVersionClassesGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

# **MdrSdtmigVersionDatasetsDatasetGet**
> SdtmigDataset MdrSdtmigVersionDatasetsDatasetGet(version, dataset)



Get SDTMIG Dataset

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-3" # character | CDISC Library Product Version
var_dataset <- "LB" # character | SDTMIG Dataset Identifier

api_instance <- SDTMImplementationGuideSDTMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmigVersionDatasetsDatasetGet(var_version, var_datasetdata_file = "result.txt")
result <- api_instance$MdrSdtmigVersionDatasetsDatasetGet(var_version, var_dataset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **dataset** | **character**| SDTMIG Dataset Identifier | 

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

# **MdrSdtmigVersionDatasetsDatasetVariablesGet**
> SdtmigDatasetVariables MdrSdtmigVersionDatasetsDatasetVariablesGet(version, dataset)



Get SDTMIG Dataset Variable List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-3" # character | CDISC Library Product Version
var_dataset <- "LB" # character | SDTMIG Dataset Identifier

api_instance <- SDTMImplementationGuideSDTMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmigVersionDatasetsDatasetVariablesGet(var_version, var_datasetdata_file = "result.txt")
result <- api_instance$MdrSdtmigVersionDatasetsDatasetVariablesGet(var_version, var_dataset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **dataset** | **character**| SDTMIG Dataset Identifier | 

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

# **MdrSdtmigVersionDatasetsDatasetVariablesVarGet**
> SdtmigDatasetVariable MdrSdtmigVersionDatasetsDatasetVariablesVarGet(version, dataset, var)



Get SDTMIG Dataset Variable

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-3" # character | CDISC Library Product Version
var_dataset <- "LB" # character | SDTMIG Dataset Identifier
var_var <- "LBDTC" # character | SDTMIG Variable Identifier

api_instance <- SDTMImplementationGuideSDTMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmigVersionDatasetsDatasetVariablesVarGet(var_version, var_dataset, var_vardata_file = "result.txt")
result <- api_instance$MdrSdtmigVersionDatasetsDatasetVariablesVarGet(var_version, var_dataset, var_var)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **dataset** | **character**| SDTMIG Dataset Identifier | 
 **var** | **character**| SDTMIG Variable Identifier | 

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

# **MdrSdtmigVersionDatasetsGet**
> SdtmigDatasets MdrSdtmigVersionDatasetsGet(version)



Get SDTMIG Dataset List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-3" # character | CDISC Library Product Version

api_instance <- SDTMImplementationGuideSDTMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmigVersionDatasetsGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrSdtmigVersionDatasetsGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

# **MdrSdtmigVersionGet**
> SdtmigProduct MdrSdtmigVersionGet(version)



Get SDTMIG product

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "3-3" # character | CDISC Library Product Version

api_instance <- SDTMImplementationGuideSDTMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmigVersionGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrSdtmigVersionGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

