# OAIMeasuresApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrQrsMeasureVersionGet**](OAIMeasuresApi.md#mdrqrsmeasureversionget) | **GET** /mdr/qrs/{measure}/{version} | 
[**mdrQrsMeasureVersionItemsGet**](OAIMeasuresApi.md#mdrqrsmeasureversionitemsget) | **GET** /mdr/qrs/{measure}/{version}/items | 
[**mdrQrsMeasureVersionItemsItemGet**](OAIMeasuresApi.md#mdrqrsmeasureversionitemsitemget) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | 
[**mdrQrsMeasureVersionResponsegroupsGet**](OAIMeasuresApi.md#mdrqrsmeasureversionresponsegroupsget) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | 
[**mdrQrsMeasureVersionResponsegroupsResponsegroupGet**](OAIMeasuresApi.md#mdrqrsmeasureversionresponsegroupsresponsegroupget) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 


# **mdrQrsMeasureVersionGet**
```objc
-(NSURLSessionTask*) mdrQrsMeasureVersionGetWithMeasure: (NSString*) measure
    version: (NSString*) version
        completionHandler: (void (^)(OAIQrsProduct* output, NSError* error)) handler;
```



Get QRS Product

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* measure = AIMS1; // QRS Measure Identifier
NSString* version = 1-0; // CDISC Library Product Version

OAIMeasuresApi*apiInstance = [[OAIMeasuresApi alloc] init];

[apiInstance mdrQrsMeasureVersionGetWithMeasure:measure
              version:version
          completionHandler: ^(OAIQrsProduct* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMeasuresApi->mdrQrsMeasureVersionGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **NSString***| QRS Measure Identifier | 
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAIQrsProduct***](OAIQrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrQrsMeasureVersionItemsGet**
```objc
-(NSURLSessionTask*) mdrQrsMeasureVersionItemsGetWithMeasure: (NSString*) measure
    version: (NSString*) version
        completionHandler: (void (^)(OAIQrsItems* output, NSError* error)) handler;
```



Get QRS Item List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* measure = AIMS1; // QRS Measure Identifier
NSString* version = 1-0; // CDISC Library Product Version

OAIMeasuresApi*apiInstance = [[OAIMeasuresApi alloc] init];

[apiInstance mdrQrsMeasureVersionItemsGetWithMeasure:measure
              version:version
          completionHandler: ^(OAIQrsItems* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMeasuresApi->mdrQrsMeasureVersionItemsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **NSString***| QRS Measure Identifier | 
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAIQrsItems***](OAIQrsItems.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrQrsMeasureVersionItemsItemGet**
```objc
-(NSURLSessionTask*) mdrQrsMeasureVersionItemsItemGetWithMeasure: (NSString*) measure
    version: (NSString*) version
    item: (NSString*) item
        completionHandler: (void (^)(OAIQrsItem* output, NSError* error)) handler;
```



Get QRS Item

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* measure = AIMS1; // QRS Measure Identifier
NSString* version = 1-0; // CDISC Library Product Version
NSString* item = AIMS01.001; // QRS Measure Item Identifier

OAIMeasuresApi*apiInstance = [[OAIMeasuresApi alloc] init];

[apiInstance mdrQrsMeasureVersionItemsItemGetWithMeasure:measure
              version:version
              item:item
          completionHandler: ^(OAIQrsItem* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMeasuresApi->mdrQrsMeasureVersionItemsItemGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **NSString***| QRS Measure Identifier | 
 **version** | **NSString***| CDISC Library Product Version | 
 **item** | **NSString***| QRS Measure Item Identifier | 

### Return type

[**OAIQrsItem***](OAIQrsItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrQrsMeasureVersionResponsegroupsGet**
```objc
-(NSURLSessionTask*) mdrQrsMeasureVersionResponsegroupsGetWithMeasure: (NSString*) measure
    version: (NSString*) version
        completionHandler: (void (^)(OAIQrsResponsegroups* output, NSError* error)) handler;
```



Get QRS Response Group List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* measure = AIMS1; // QRS Measure Identifier
NSString* version = 1-0; // CDISC Library Product Version

OAIMeasuresApi*apiInstance = [[OAIMeasuresApi alloc] init];

[apiInstance mdrQrsMeasureVersionResponsegroupsGetWithMeasure:measure
              version:version
          completionHandler: ^(OAIQrsResponsegroups* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMeasuresApi->mdrQrsMeasureVersionResponsegroupsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **NSString***| QRS Measure Identifier | 
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAIQrsResponsegroups***](OAIQrsResponsegroups.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrQrsMeasureVersionResponsegroupsResponsegroupGet**
```objc
-(NSURLSessionTask*) mdrQrsMeasureVersionResponsegroupsResponsegroupGetWithMeasure: (NSString*) measure
    version: (NSString*) version
    responsegroup: (NSString*) responsegroup
        completionHandler: (void (^)(OAIQrsResponsegroup* output, NSError* error)) handler;
```



Get QRS Response Group

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* measure = AIMS1; // QRS Measure Identifier
NSString* version = 1-0; // CDISC Library Product Version
NSString* responsegroup = AIMS1.11to12; // QRS Measure's Response Group Identifier

OAIMeasuresApi*apiInstance = [[OAIMeasuresApi alloc] init];

[apiInstance mdrQrsMeasureVersionResponsegroupsResponsegroupGetWithMeasure:measure
              version:version
              responsegroup:responsegroup
          completionHandler: ^(OAIQrsResponsegroup* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMeasuresApi->mdrQrsMeasureVersionResponsegroupsResponsegroupGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **NSString***| QRS Measure Identifier | 
 **version** | **NSString***| CDISC Library Product Version | 
 **responsegroup** | **NSString***| QRS Measure&#39;s Response Group Identifier | 

### Return type

[**OAIQrsResponsegroup***](OAIQrsResponsegroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

