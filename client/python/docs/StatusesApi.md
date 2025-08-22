# openapi_client.StatusesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_get**](StatusesApi.md#health_get) | **GET** /health | 
[**mdr_maintenance_get**](StatusesApi.md#mdr_maintenance_get) | **GET** /mdr/maintenance | 


# **health_get**
> Health health_get()

Check health of system components

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.health import Health
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://library.cdisc.org/api
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://library.cdisc.org/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.StatusesApi(api_client)

    try:
        api_response = api_instance.health_get()
        print("The response of StatusesApi->health_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StatusesApi->health_get: %s\n" % e)
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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_maintenance_get**
> MaintenanceBody mdr_maintenance_get()

Set maintenance mode and message

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.maintenance_body import MaintenanceBody
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://library.cdisc.org/api
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://library.cdisc.org/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.StatusesApi(api_client)

    try:
        api_response = api_instance.mdr_maintenance_get()
        print("The response of StatusesApi->mdr_maintenance_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StatusesApi->mdr_maintenance_get: %s\n" % e)
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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

