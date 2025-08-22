# CdiscLibraryApi.StatusesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthGet**](StatusesApi.md#healthGet) | **GET** /health | 
[**mdrMaintenanceGet**](StatusesApi.md#mdrMaintenanceGet) | **GET** /mdr/maintenance | 



## healthGet

> Health healthGet()



Check health of system components

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StatusesApi();
apiInstance.healthGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StatusesApi();
apiInstance.mdrMaintenanceGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

