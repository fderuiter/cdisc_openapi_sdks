# MeasuresApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrQrsMeasureVersionGet**](MeasuresApi.md#MdrQrsMeasureVersionGet) | **GET** /mdr/qrs/{measure}/{version} | 
[**MdrQrsMeasureVersionItemsGet**](MeasuresApi.md#MdrQrsMeasureVersionItemsGet) | **GET** /mdr/qrs/{measure}/{version}/items | 
[**MdrQrsMeasureVersionItemsItemGet**](MeasuresApi.md#MdrQrsMeasureVersionItemsItemGet) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | 
[**MdrQrsMeasureVersionResponsegroupsGet**](MeasuresApi.md#MdrQrsMeasureVersionResponsegroupsGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | 
[**MdrQrsMeasureVersionResponsegroupsResponsegroupGet**](MeasuresApi.md#MdrQrsMeasureVersionResponsegroupsResponsegroupGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 


# **MdrQrsMeasureVersionGet**
> QrsProduct MdrQrsMeasureVersionGet(measure, version)



Get QRS Product

### Example
```R
library(openapi)

# prepare function argument(s)
var_measure <- "AIMS1" # character | QRS Measure Identifier
var_version <- "1-0" # character | CDISC Library Product Version

api_instance <- MeasuresApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrQrsMeasureVersionGet(var_measure, var_versiondata_file = "result.txt")
result <- api_instance$MdrQrsMeasureVersionGet(var_measure, var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **character**| QRS Measure Identifier | 
 **version** | **character**| CDISC Library Product Version | 

### Return type

[**QrsProduct**](QrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel

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

# **MdrQrsMeasureVersionItemsGet**
> QrsItems MdrQrsMeasureVersionItemsGet(measure, version)



Get QRS Item List

### Example
```R
library(openapi)

# prepare function argument(s)
var_measure <- "AIMS1" # character | QRS Measure Identifier
var_version <- "1-0" # character | CDISC Library Product Version

api_instance <- MeasuresApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrQrsMeasureVersionItemsGet(var_measure, var_versiondata_file = "result.txt")
result <- api_instance$MdrQrsMeasureVersionItemsGet(var_measure, var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **character**| QRS Measure Identifier | 
 **version** | **character**| CDISC Library Product Version | 

### Return type

[**QrsItems**](QrsItems.md)

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

# **MdrQrsMeasureVersionItemsItemGet**
> QrsItem MdrQrsMeasureVersionItemsItemGet(measure, version, item)



Get QRS Item

### Example
```R
library(openapi)

# prepare function argument(s)
var_measure <- "AIMS1" # character | QRS Measure Identifier
var_version <- "1-0" # character | CDISC Library Product Version
var_item <- "AIMS01.001" # character | QRS Measure Item Identifier

api_instance <- MeasuresApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrQrsMeasureVersionItemsItemGet(var_measure, var_version, var_itemdata_file = "result.txt")
result <- api_instance$MdrQrsMeasureVersionItemsItemGet(var_measure, var_version, var_item)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **character**| QRS Measure Identifier | 
 **version** | **character**| CDISC Library Product Version | 
 **item** | **character**| QRS Measure Item Identifier | 

### Return type

[**QrsItem**](QrsItem.md)

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

# **MdrQrsMeasureVersionResponsegroupsGet**
> QrsResponsegroups MdrQrsMeasureVersionResponsegroupsGet(measure, version)



Get QRS Response Group List

### Example
```R
library(openapi)

# prepare function argument(s)
var_measure <- "AIMS1" # character | QRS Measure Identifier
var_version <- "1-0" # character | CDISC Library Product Version

api_instance <- MeasuresApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrQrsMeasureVersionResponsegroupsGet(var_measure, var_versiondata_file = "result.txt")
result <- api_instance$MdrQrsMeasureVersionResponsegroupsGet(var_measure, var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **character**| QRS Measure Identifier | 
 **version** | **character**| CDISC Library Product Version | 

### Return type

[**QrsResponsegroups**](QrsResponsegroups.md)

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

# **MdrQrsMeasureVersionResponsegroupsResponsegroupGet**
> QrsResponsegroup MdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure, version, responsegroup)



Get QRS Response Group

### Example
```R
library(openapi)

# prepare function argument(s)
var_measure <- "AIMS1" # character | QRS Measure Identifier
var_version <- "1-0" # character | CDISC Library Product Version
var_responsegroup <- "AIMS1.11to12" # character | QRS Measure's Response Group Identifier

api_instance <- MeasuresApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrQrsMeasureVersionResponsegroupsResponsegroupGet(var_measure, var_version, var_responsegroupdata_file = "result.txt")
result <- api_instance$MdrQrsMeasureVersionResponsegroupsResponsegroupGet(var_measure, var_version, var_responsegroup)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **character**| QRS Measure Identifier | 
 **version** | **character**| CDISC Library Product Version | 
 **responsegroup** | **character**| QRS Measure&#39;s Response Group Identifier | 

### Return type

[**QrsResponsegroup**](QrsResponsegroup.md)

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

