# StatusesAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**StatusesAPI_healthGet**](StatusesAPI.md#StatusesAPI_healthGet) | **GET** /health | 
[**StatusesAPI_mdrMaintenanceGet**](StatusesAPI.md#StatusesAPI_mdrMaintenanceGet) | **GET** /mdr/maintenance | 


# **StatusesAPI_healthGet**
```c
// Check health of system components
//
health_t* StatusesAPI_healthGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[health_t](health.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StatusesAPI_mdrMaintenanceGet**
```c
// Set maintenance mode and message
//
maintenance_body_t* StatusesAPI_mdrMaintenanceGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[maintenance_body_t](maintenance_body.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

