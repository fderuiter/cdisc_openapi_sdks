# StatusesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**HealthGet**](StatusesApi.md#HealthGet) | **GET** /health | 
[**MdrMaintenanceGet**](StatusesApi.md#MdrMaintenanceGet) | **GET** /mdr/maintenance | 


# **HealthGet**
> Health HealthGet()



Check health of system components

### Example
```R
library(openapi)


api_instance <- StatusesApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$HealthGet(data_file = "result.txt")
result <- api_instance$HealthGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Health**](Health.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **MdrMaintenanceGet**
> MaintenanceBody MdrMaintenanceGet()



Set maintenance mode and message

### Example
```R
library(openapi)


api_instance <- StatusesApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrMaintenanceGet(data_file = "result.txt")
result <- api_instance$MdrMaintenanceGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MaintenanceBody**](MaintenanceBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

