# \StatusesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_get**](StatusesApi.md#health_get) | **GET** /health | 
[**mdr_maintenance_get**](StatusesApi.md#mdr_maintenance_get) | **GET** /mdr/maintenance | 



## health_get

> models::Health health_get()


Check health of system components

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::Health**](Health.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_maintenance_get

> models::MaintenanceBody mdr_maintenance_get()


Set maintenance mode and message

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::MaintenanceBody**](MaintenanceBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

