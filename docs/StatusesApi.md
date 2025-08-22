# StatusesApi

All URIs are relative to *https://library.cdisc.org/api*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**healthGet**](#healthget) | **GET** /health | |
|[**mdrMaintenanceGet**](#mdrmaintenanceget) | **GET** /mdr/maintenance | |

# **healthGet**
> Health healthGet()

Check health of system components

### Example

```typescript
import {
    StatusesApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StatusesApi(configuration);

const { status, data } = await apiInstance.healthGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**Health**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrMaintenanceGet**
> MaintenanceBody mdrMaintenanceGet()

Set maintenance mode and message

### Example

```typescript
import {
    StatusesApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StatusesApi(configuration);

const { status, data } = await apiInstance.mdrMaintenanceGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**MaintenanceBody**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

