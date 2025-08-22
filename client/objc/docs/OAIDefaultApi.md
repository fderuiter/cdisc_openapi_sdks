# OAIDefaultApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrAboutGet**](OAIDefaultApi.md#mdraboutget) | **GET** /mdr/about | 
[**mdrLastupdatedGet**](OAIDefaultApi.md#mdrlastupdatedget) | **GET** /mdr/lastupdated | 
[**mdrProductsDataAnalysisGet**](OAIDefaultApi.md#mdrproductsdataanalysisget) | **GET** /mdr/products/DataAnalysis | 
[**mdrProductsDataCollectionGet**](OAIDefaultApi.md#mdrproductsdatacollectionget) | **GET** /mdr/products/DataCollection | 
[**mdrProductsDataTabulationGet**](OAIDefaultApi.md#mdrproductsdatatabulationget) | **GET** /mdr/products/DataTabulation | 
[**mdrProductsGet**](OAIDefaultApi.md#mdrproductsget) | **GET** /mdr/products | 
[**mdrProductsMeasuresGet**](OAIDefaultApi.md#mdrproductsmeasuresget) | **GET** /mdr/products/Measures | 
[**mdrProductsTerminologyGet**](OAIDefaultApi.md#mdrproductsterminologyget) | **GET** /mdr/products/Terminology | 


# **mdrAboutGet**
```objc
-(NSURLSessionTask*) mdrAboutGetWithCompletionHandler: 
        (void (^)(OAIAbout* output, NSError* error)) handler;
```



Get Information About CDISC Library

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance mdrAboutGetWithCompletionHandler: 
          ^(OAIAbout* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->mdrAboutGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIAbout***](OAIAbout.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrLastupdatedGet**
```objc
-(NSURLSessionTask*) mdrLastupdatedGetWithCompletionHandler: 
        (void (^)(OAILastupdated* output, NSError* error)) handler;
```



Get CDISC Library Last Updated

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance mdrLastupdatedGetWithCompletionHandler: 
          ^(OAILastupdated* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->mdrLastupdatedGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAILastupdated***](OAILastupdated.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsDataAnalysisGet**
```objc
-(NSURLSessionTask*) mdrProductsDataAnalysisGetWithCompletionHandler: 
        (void (^)(OAIProductgroupDataAnalysis* output, NSError* error)) handler;
```



Get CDISC Library Product Group Data Analysis

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance mdrProductsDataAnalysisGetWithCompletionHandler: 
          ^(OAIProductgroupDataAnalysis* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->mdrProductsDataAnalysisGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIProductgroupDataAnalysis***](OAIProductgroupDataAnalysis.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsDataCollectionGet**
```objc
-(NSURLSessionTask*) mdrProductsDataCollectionGetWithCompletionHandler: 
        (void (^)(OAIProductgroupDataCollection* output, NSError* error)) handler;
```



Get CDISC Library Product Group Data Collection

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance mdrProductsDataCollectionGetWithCompletionHandler: 
          ^(OAIProductgroupDataCollection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->mdrProductsDataCollectionGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIProductgroupDataCollection***](OAIProductgroupDataCollection.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsDataTabulationGet**
```objc
-(NSURLSessionTask*) mdrProductsDataTabulationGetWithCompletionHandler: 
        (void (^)(OAIProductgroupDataTabulation* output, NSError* error)) handler;
```



Get CDISC Library Product Group Data Tabulation

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance mdrProductsDataTabulationGetWithCompletionHandler: 
          ^(OAIProductgroupDataTabulation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->mdrProductsDataTabulationGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIProductgroupDataTabulation***](OAIProductgroupDataTabulation.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsGet**
```objc
-(NSURLSessionTask*) mdrProductsGetWithCompletionHandler: 
        (void (^)(OAIProducts* output, NSError* error)) handler;
```



Get CDISC Library Products

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance mdrProductsGetWithCompletionHandler: 
          ^(OAIProducts* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->mdrProductsGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIProducts***](OAIProducts.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsMeasuresGet**
```objc
-(NSURLSessionTask*) mdrProductsMeasuresGetWithCompletionHandler: 
        (void (^)(OAIProductgroupQrs* output, NSError* error)) handler;
```



Get CDISC Library Product Group QRS

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance mdrProductsMeasuresGetWithCompletionHandler: 
          ^(OAIProductgroupQrs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->mdrProductsMeasuresGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIProductgroupQrs***](OAIProductgroupQrs.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsTerminologyGet**
```objc
-(NSURLSessionTask*) mdrProductsTerminologyGetWithCompletionHandler: 
        (void (^)(OAIProductgroupTerminology* output, NSError* error)) handler;
```



Get CDISC Library Product Group Terminology

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance mdrProductsTerminologyGetWithCompletionHandler: 
          ^(OAIProductgroupTerminology* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->mdrProductsTerminologyGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIProductgroupTerminology***](OAIProductgroupTerminology.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

