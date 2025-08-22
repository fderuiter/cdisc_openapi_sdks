# StatusesApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthGet**](StatusesApi.md#healthGet) | **GET** /health | 
[**mdrMaintenanceGet**](StatusesApi.md#mdrMaintenanceGet) | **GET** /mdr/maintenance | 



## healthGet



Check health of system components

### Example

```bash
 healthGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Health**](Health.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrMaintenanceGet



Set maintenance mode and message

### Example

```bash
 mdrMaintenanceGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MaintenanceBody**](MaintenanceBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

