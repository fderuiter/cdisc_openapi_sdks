# StatusesApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**healthGet**](StatusesApi.md#healthGet) | **GET** /health |  |
| [**mdrMaintenanceGet**](StatusesApi.md#mdrMaintenanceGet) | **GET** /mdr/maintenance |  |


<a id="healthGet"></a>
# **healthGet**
> Health healthGet()



Check health of system components

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StatusesApi()
try {
    val result : Health = apiInstance.healthGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StatusesApi#healthGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StatusesApi#healthGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Health**](Health.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrMaintenanceGet"></a>
# **mdrMaintenanceGet**
> MaintenanceBody mdrMaintenanceGet()



Set maintenance mode and message

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StatusesApi()
try {
    val result : MaintenanceBody = apiInstance.mdrMaintenanceGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StatusesApi#mdrMaintenanceGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StatusesApi#mdrMaintenanceGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MaintenanceBody**](MaintenanceBody.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

