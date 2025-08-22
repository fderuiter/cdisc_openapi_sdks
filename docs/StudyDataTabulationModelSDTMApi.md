# StudyDataTabulationModelSDTMApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrRootSdtmClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#MdrRootSdtmClassesClassVariablesVarGet) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**MdrRootSdtmDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#MdrRootSdtmDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**MdrSdtmVersionClassesClassDatasetsGet**](StudyDataTabulationModelSDTMApi.md#MdrSdtmVersionClassesClassDatasetsGet) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**MdrSdtmVersionClassesClassGet**](StudyDataTabulationModelSDTMApi.md#MdrSdtmVersionClassesClassGet) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**MdrSdtmVersionClassesClassVariablesGet**](StudyDataTabulationModelSDTMApi.md#MdrSdtmVersionClassesClassVariablesGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**MdrSdtmVersionClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#MdrSdtmVersionClassesClassVariablesVarGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**MdrSdtmVersionClassesGet**](StudyDataTabulationModelSDTMApi.md#MdrSdtmVersionClassesGet) | **GET** /mdr/sdtm/{version}/classes | 
[**MdrSdtmVersionDatasetsDatasetGet**](StudyDataTabulationModelSDTMApi.md#MdrSdtmVersionDatasetsDatasetGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**MdrSdtmVersionDatasetsDatasetVariablesGet**](StudyDataTabulationModelSDTMApi.md#MdrSdtmVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**MdrSdtmVersionDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#MdrSdtmVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**MdrSdtmVersionDatasetsGet**](StudyDataTabulationModelSDTMApi.md#MdrSdtmVersionDatasetsGet) | **GET** /mdr/sdtm/{version}/datasets | 
[**MdrSdtmVersionGet**](StudyDataTabulationModelSDTMApi.md#MdrSdtmVersionGet) | **GET** /mdr/sdtm/{version} | 


# **MdrRootSdtmClassesClassVariablesVarGet**
> RootSdtmClassVariable MdrRootSdtmClassesClassVariablesVarGet(class, var)



Get Root of SDTM Class Variable

### Example
```R
library(openapi)

# prepare function argument(s)
var_class <- "GeneralObservations" # character | SDTM Class Identifier
var_var <- "--DTC" # character | SDTM Variable Identifier

api_instance <- StudyDataTabulationModelSDTMApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrRootSdtmClassesClassVariablesVarGet(var_class, var_vardata_file = "result.txt")
result <- api_instance$MdrRootSdtmClassesClassVariablesVarGet(var_class, var_var)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class** | **character**| SDTM Class Identifier | 
 **var** | **character**| SDTM Variable Identifier | 

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

# **MdrRootSdtmDatasetsDatasetVariablesVarGet**
> RootSdtmDatasetVariable MdrRootSdtmDatasetsDatasetVariablesVarGet(dataset, var)



Get Root SDTM Dataset Variable

### Example
```R
library(openapi)

# prepare function argument(s)
var_dataset <- "DM" # character | SDTM Dataset Identifier
var_var <- "SUBJID" # character | SDTM Variable Identifier

api_instance <- StudyDataTabulationModelSDTMApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrRootSdtmDatasetsDatasetVariablesVarGet(var_dataset, var_vardata_file = "result.txt")
result <- api_instance$MdrRootSdtmDatasetsDatasetVariablesVarGet(var_dataset, var_var)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **character**| SDTM Dataset Identifier | 
 **var** | **character**| SDTM Variable Identifier | 

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

# **MdrSdtmVersionClassesClassDatasetsGet**
> SdtmClassDatasets MdrSdtmVersionClassesClassDatasetsGet(version, class)



Get SDTM Class Dataset List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-8" # character | CDISC Library Product Version
var_class <- "SpecialPurpose" # character | SDTM Class Identifier

api_instance <- StudyDataTabulationModelSDTMApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmVersionClassesClassDatasetsGet(var_version, var_classdata_file = "result.txt")
result <- api_instance$MdrSdtmVersionClassesClassDatasetsGet(var_version, var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| SDTM Class Identifier | 

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

# **MdrSdtmVersionClassesClassGet**
> SdtmClass MdrSdtmVersionClassesClassGet(version, class)



Get SDTM Class

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-8" # character | CDISC Library Product Version
var_class <- "Findings" # character | SDTM Class Identifier

api_instance <- StudyDataTabulationModelSDTMApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmVersionClassesClassGet(var_version, var_classdata_file = "result.txt")
result <- api_instance$MdrSdtmVersionClassesClassGet(var_version, var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| SDTM Class Identifier | 

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

# **MdrSdtmVersionClassesClassVariablesGet**
> SdtmClassVariables MdrSdtmVersionClassesClassVariablesGet(version, class)



Get SDTM Class Variable List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-8" # character | CDISC Library Product Version
var_class <- "GeneralObservations" # character | SDTM Class Identifier

api_instance <- StudyDataTabulationModelSDTMApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmVersionClassesClassVariablesGet(var_version, var_classdata_file = "result.txt")
result <- api_instance$MdrSdtmVersionClassesClassVariablesGet(var_version, var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| SDTM Class Identifier | 

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

# **MdrSdtmVersionClassesClassVariablesVarGet**
> SdtmClassVariable MdrSdtmVersionClassesClassVariablesVarGet(version, class, var)



Get SDTM Class Variable

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-8" # character | CDISC Library Product Version
var_class <- "GeneralObservations" # character | SDTM Class Identifier
var_var <- "--DTC" # character | SDTM Variable Identifier

api_instance <- StudyDataTabulationModelSDTMApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmVersionClassesClassVariablesVarGet(var_version, var_class, var_vardata_file = "result.txt")
result <- api_instance$MdrSdtmVersionClassesClassVariablesVarGet(var_version, var_class, var_var)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **class** | **character**| SDTM Class Identifier | 
 **var** | **character**| SDTM Variable Identifier | 

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

# **MdrSdtmVersionClassesGet**
> SdtmClasses MdrSdtmVersionClassesGet(version)



Get SDTM Class List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-8" # character | CDISC Library Product Version

api_instance <- StudyDataTabulationModelSDTMApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmVersionClassesGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrSdtmVersionClassesGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

# **MdrSdtmVersionDatasetsDatasetGet**
> SdtmDataset MdrSdtmVersionDatasetsDatasetGet(version, dataset)



Get SDTM Dataset

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-8" # character | CDISC Library Product Version
var_dataset <- "DM" # character | SDTM Dataset Identifier

api_instance <- StudyDataTabulationModelSDTMApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmVersionDatasetsDatasetGet(var_version, var_datasetdata_file = "result.txt")
result <- api_instance$MdrSdtmVersionDatasetsDatasetGet(var_version, var_dataset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **dataset** | **character**| SDTM Dataset Identifier | 

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

# **MdrSdtmVersionDatasetsDatasetVariablesGet**
> SdtmDatasetVariables MdrSdtmVersionDatasetsDatasetVariablesGet(version, dataset)



Get SDTM Dataset Variable List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-8" # character | CDISC Library Product Version
var_dataset <- "DM" # character | SDTM Dataset Identifier

api_instance <- StudyDataTabulationModelSDTMApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmVersionDatasetsDatasetVariablesGet(var_version, var_datasetdata_file = "result.txt")
result <- api_instance$MdrSdtmVersionDatasetsDatasetVariablesGet(var_version, var_dataset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **dataset** | **character**| SDTM Dataset Identifier | 

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

# **MdrSdtmVersionDatasetsDatasetVariablesVarGet**
> SdtmDatasetVariable MdrSdtmVersionDatasetsDatasetVariablesVarGet(version, dataset, var)



Get SDTM Dataset Variable

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-8" # character | CDISC Library Product Version
var_dataset <- "DM" # character | SDTM Dataset Identifier
var_var <- "SUBJID" # character | SDTM Variable Identifier

api_instance <- StudyDataTabulationModelSDTMApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmVersionDatasetsDatasetVariablesVarGet(var_version, var_dataset, var_vardata_file = "result.txt")
result <- api_instance$MdrSdtmVersionDatasetsDatasetVariablesVarGet(var_version, var_dataset, var_var)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 
 **dataset** | **character**| SDTM Dataset Identifier | 
 **var** | **character**| SDTM Variable Identifier | 

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

# **MdrSdtmVersionDatasetsGet**
> SdtmDatasets MdrSdtmVersionDatasetsGet(version)



Get SDTM Dataset List

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-8" # character | CDISC Library Product Version

api_instance <- StudyDataTabulationModelSDTMApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmVersionDatasetsGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrSdtmVersionDatasetsGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

# **MdrSdtmVersionGet**
> SdtmProduct MdrSdtmVersionGet(version)



Get SDTM product

### Example
```R
library(openapi)

# prepare function argument(s)
var_version <- "1-8" # character | CDISC Library Product Version

api_instance <- StudyDataTabulationModelSDTMApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSdtmVersionGet(var_versiondata_file = "result.txt")
result <- api_instance$MdrSdtmVersionGet(var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| CDISC Library Product Version | 

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

