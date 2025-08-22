# openapi.api.StatusesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthGet**](StatusesApi.md#healthget) | **GET** /health | 
[**mdrMaintenanceGet**](StatusesApi.md#mdrmaintenanceget) | **GET** /mdr/maintenance | 


# **healthGet**
> Health healthGet()



Check health of system components

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getStatusesApi();

try {
    final response = api.healthGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatusesApi->healthGet: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrMaintenanceGet**
> MaintenanceBody mdrMaintenanceGet()



Set maintenance mode and message

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getStatusesApi();

try {
    final response = api.mdrMaintenanceGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatusesApi->mdrMaintenanceGet: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

