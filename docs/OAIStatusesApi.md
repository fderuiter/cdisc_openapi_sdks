# OAIStatusesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthGet**](OAIStatusesApi.md#healthget) | **GET** /health | 
[**mdrMaintenanceGet**](OAIStatusesApi.md#mdrmaintenanceget) | **GET** /mdr/maintenance | 


# **healthGet**
```objc
-(NSURLSessionTask*) healthGetWithCompletionHandler: 
        (void (^)(OAIHealth* output, NSError* error)) handler;
```



Check health of system components

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIStatusesApi*apiInstance = [[OAIStatusesApi alloc] init];

[apiInstance healthGetWithCompletionHandler: 
          ^(OAIHealth* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStatusesApi->healthGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIHealth***](OAIHealth.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrMaintenanceGet**
```objc
-(NSURLSessionTask*) mdrMaintenanceGetWithCompletionHandler: 
        (void (^)(OAIMaintenanceBody* output, NSError* error)) handler;
```



Set maintenance mode and message

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIStatusesApi*apiInstance = [[OAIStatusesApi alloc] init];

[apiInstance mdrMaintenanceGetWithCompletionHandler: 
          ^(OAIMaintenanceBody* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStatusesApi->mdrMaintenanceGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIMaintenanceBody***](OAIMaintenanceBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

