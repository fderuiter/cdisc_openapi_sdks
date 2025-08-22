# StatusesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthGet**](StatusesApi.md#healthGet) | **GET** /health | 
[**mdrMaintenanceGet**](StatusesApi.md#mdrMaintenanceGet) | **GET** /mdr/maintenance | 



## healthGet

> Health healthGet()



Check health of system components

### Example

```java
// Import classes:
//import org.openapitools.client.api.StatusesApi;

StatusesApi apiInstance = new StatusesApi();
try {
    Health result = apiInstance.healthGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StatusesApi#healthGet");
    e.printStackTrace();
}
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


## mdrMaintenanceGet

> MaintenanceBody mdrMaintenanceGet()



Set maintenance mode and message

### Example

```java
// Import classes:
//import org.openapitools.client.api.StatusesApi;

StatusesApi apiInstance = new StatusesApi();
try {
    MaintenanceBody result = apiInstance.mdrMaintenanceGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StatusesApi#mdrMaintenanceGet");
    e.printStackTrace();
}
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

