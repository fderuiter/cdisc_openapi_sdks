# DefaultApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrAboutGet**](DefaultApi.md#MdrAboutGet) | **GET** /mdr/about | 
[**MdrLastupdatedGet**](DefaultApi.md#MdrLastupdatedGet) | **GET** /mdr/lastupdated | 
[**MdrProductsDataAnalysisGet**](DefaultApi.md#MdrProductsDataAnalysisGet) | **GET** /mdr/products/DataAnalysis | 
[**MdrProductsDataCollectionGet**](DefaultApi.md#MdrProductsDataCollectionGet) | **GET** /mdr/products/DataCollection | 
[**MdrProductsDataTabulationGet**](DefaultApi.md#MdrProductsDataTabulationGet) | **GET** /mdr/products/DataTabulation | 
[**MdrProductsGet**](DefaultApi.md#MdrProductsGet) | **GET** /mdr/products | 
[**MdrProductsMeasuresGet**](DefaultApi.md#MdrProductsMeasuresGet) | **GET** /mdr/products/Measures | 
[**MdrProductsTerminologyGet**](DefaultApi.md#MdrProductsTerminologyGet) | **GET** /mdr/products/Terminology | 


# **MdrAboutGet**
> About MdrAboutGet()



Get Information About CDISC Library

### Example
```R
library(openapi)


api_instance <- DefaultApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrAboutGet(data_file = "result.txt")
result <- api_instance$MdrAboutGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**About**](About.md)

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

# **MdrLastupdatedGet**
> Lastupdated MdrLastupdatedGet()



Get CDISC Library Last Updated

### Example
```R
library(openapi)


api_instance <- DefaultApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrLastupdatedGet(data_file = "result.txt")
result <- api_instance$MdrLastupdatedGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Lastupdated**](Lastupdated.md)

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

# **MdrProductsDataAnalysisGet**
> ProductgroupDataAnalysis MdrProductsDataAnalysisGet()



Get CDISC Library Product Group Data Analysis

### Example
```R
library(openapi)


api_instance <- DefaultApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrProductsDataAnalysisGet(data_file = "result.txt")
result <- api_instance$MdrProductsDataAnalysisGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupDataAnalysis**](ProductgroupDataAnalysis.md)

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

# **MdrProductsDataCollectionGet**
> ProductgroupDataCollection MdrProductsDataCollectionGet()



Get CDISC Library Product Group Data Collection

### Example
```R
library(openapi)


api_instance <- DefaultApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrProductsDataCollectionGet(data_file = "result.txt")
result <- api_instance$MdrProductsDataCollectionGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupDataCollection**](ProductgroupDataCollection.md)

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

# **MdrProductsDataTabulationGet**
> ProductgroupDataTabulation MdrProductsDataTabulationGet()



Get CDISC Library Product Group Data Tabulation

### Example
```R
library(openapi)


api_instance <- DefaultApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrProductsDataTabulationGet(data_file = "result.txt")
result <- api_instance$MdrProductsDataTabulationGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupDataTabulation**](ProductgroupDataTabulation.md)

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

# **MdrProductsGet**
> Products MdrProductsGet()



Get CDISC Library Products

### Example
```R
library(openapi)


api_instance <- DefaultApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrProductsGet(data_file = "result.txt")
result <- api_instance$MdrProductsGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Products**](Products.md)

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

# **MdrProductsMeasuresGet**
> ProductgroupQrs MdrProductsMeasuresGet()



Get CDISC Library Product Group QRS

### Example
```R
library(openapi)


api_instance <- DefaultApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrProductsMeasuresGet(data_file = "result.txt")
result <- api_instance$MdrProductsMeasuresGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupQrs**](ProductgroupQrs.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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

# **MdrProductsTerminologyGet**
> ProductgroupTerminology MdrProductsTerminologyGet()



Get CDISC Library Product Group Terminology

### Example
```R
library(openapi)


api_instance <- DefaultApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrProductsTerminologyGet(data_file = "result.txt")
result <- api_instance$MdrProductsTerminologyGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupTerminology**](ProductgroupTerminology.md)

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

