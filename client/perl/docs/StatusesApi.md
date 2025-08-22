# WWW::OpenAPIClient::StatusesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::StatusesApi;
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_get**](StatusesApi.md#health_get) | **GET** /health | 
[**mdr_maintenance_get**](StatusesApi.md#mdr_maintenance_get) | **GET** /mdr/maintenance | 


# **health_get**
> Health health_get()



Check health of system components

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StatusesApi;
my $api_instance = WWW::OpenAPIClient::StatusesApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->health_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StatusesApi->health_get: $@\n";
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

# **mdr_maintenance_get**
> MaintenanceBody mdr_maintenance_get()



Set maintenance mode and message

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StatusesApi;
my $api_instance = WWW::OpenAPIClient::StatusesApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->mdr_maintenance_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StatusesApi->mdr_maintenance_get: $@\n";
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

