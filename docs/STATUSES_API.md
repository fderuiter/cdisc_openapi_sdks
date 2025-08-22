# STATUSES_API

All URIs are relative to *https://library.cdisc.org/api*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**health_get**](STATUSES_API.md#health_get) | **Get** /health | 
[**mdr_maintenance_get**](STATUSES_API.md#mdr_maintenance_get) | **Get** /mdr/maintenance | 


# **health_get**
> health_get : detachable HEALTH




Check health of system components


### Parameters
This endpoint does not need any parameter.

### Return type

[**HEALTH**](Health.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_maintenance_get**
> mdr_maintenance_get : detachable MAINTENANCE_BODY




Set maintenance mode and message


### Parameters
This endpoint does not need any parameter.

### Return type

[**MAINTENANCE_BODY**](MaintenanceBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

