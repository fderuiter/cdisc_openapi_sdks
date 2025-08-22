# OAISENDImplementationGuideSENDIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSendigDatasetsDatasetVariablesVarGet**](OAISENDImplementationGuideSENDIGApi.md#mdrrootsendigdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionClassesClassDatasetsGet**](OAISENDImplementationGuideSENDIGApi.md#mdrsendigversionclassesclassdatasetsget) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**mdrSendigVersionClassesClassGet**](OAISENDImplementationGuideSENDIGApi.md#mdrsendigversionclassesclassget) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**mdrSendigVersionClassesGet**](OAISENDImplementationGuideSENDIGApi.md#mdrsendigversionclassesget) | **GET** /mdr/sendig/{version}/classes | 
[**mdrSendigVersionDatasetsDatasetGet**](OAISENDImplementationGuideSENDIGApi.md#mdrsendigversiondatasetsdatasetget) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**mdrSendigVersionDatasetsDatasetVariablesGet**](OAISENDImplementationGuideSENDIGApi.md#mdrsendigversiondatasetsdatasetvariablesget) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**mdrSendigVersionDatasetsDatasetVariablesVarGet**](OAISENDImplementationGuideSENDIGApi.md#mdrsendigversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionDatasetsGet**](OAISENDImplementationGuideSENDIGApi.md#mdrsendigversiondatasetsget) | **GET** /mdr/sendig/{version}/datasets | 
[**mdrSendigVersionGet**](OAISENDImplementationGuideSENDIGApi.md#mdrsendigversionget) | **GET** /mdr/sendig/{version} | 


# **mdrRootSendigDatasetsDatasetVariablesVarGet**
```objc
-(NSURLSessionTask*) mdrRootSendigDatasetsDatasetVariablesVarGetWithDataset: (NSString*) dataset
    var: (NSString*) var
        completionHandler: (void (^)(OAIRootSendigDatasetVariable* output, NSError* error)) handler;
```



Get Root SENDIG Dataset Variable

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* dataset = VS; // SENDIG Dataset Identifier
NSString* var = VSTEST; // SENDIG Variable Identifier

OAISENDImplementationGuideSENDIGApi*apiInstance = [[OAISENDImplementationGuideSENDIGApi alloc] init];

[apiInstance mdrRootSendigDatasetsDatasetVariablesVarGetWithDataset:dataset
              var:var
          completionHandler: ^(OAIRootSendigDatasetVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISENDImplementationGuideSENDIGApi->mdrRootSendigDatasetsDatasetVariablesVarGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **NSString***| SENDIG Dataset Identifier | 
 **var** | **NSString***| SENDIG Variable Identifier | 

### Return type

[**OAIRootSendigDatasetVariable***](OAIRootSendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionClassesClassDatasetsGet**
```objc
-(NSURLSessionTask*) mdrSendigVersionClassesClassDatasetsGetWithVersion: (NSString*) version
    _class: (NSString*) _class
        completionHandler: (void (^)(OAISendigClassDatasets* output, NSError* error)) handler;
```



Get SENDIG Class Dataset List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-1; // CDISC Library Product Version
NSString* _class = Findings; // SENDIG Class Identifier

OAISENDImplementationGuideSENDIGApi*apiInstance = [[OAISENDImplementationGuideSENDIGApi alloc] init];

[apiInstance mdrSendigVersionClassesClassDatasetsGetWithVersion:version
              _class:_class
          completionHandler: ^(OAISendigClassDatasets* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISENDImplementationGuideSENDIGApi->mdrSendigVersionClassesClassDatasetsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| SENDIG Class Identifier | 

### Return type

[**OAISendigClassDatasets***](OAISendigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionClassesClassGet**
```objc
-(NSURLSessionTask*) mdrSendigVersionClassesClassGetWithVersion: (NSString*) version
    _class: (NSString*) _class
        completionHandler: (void (^)(OAISendigClass* output, NSError* error)) handler;
```



Get SENDIG Class

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-1; // CDISC Library Product Version
NSString* _class = Findings; // SENDIG Class Identifier

OAISENDImplementationGuideSENDIGApi*apiInstance = [[OAISENDImplementationGuideSENDIGApi alloc] init];

[apiInstance mdrSendigVersionClassesClassGetWithVersion:version
              _class:_class
          completionHandler: ^(OAISendigClass* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISENDImplementationGuideSENDIGApi->mdrSendigVersionClassesClassGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| SENDIG Class Identifier | 

### Return type

[**OAISendigClass***](OAISendigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionClassesGet**
```objc
-(NSURLSessionTask*) mdrSendigVersionClassesGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAISendigClasses* output, NSError* error)) handler;
```



Get SENDIG Class List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-1; // CDISC Library Product Version

OAISENDImplementationGuideSENDIGApi*apiInstance = [[OAISENDImplementationGuideSENDIGApi alloc] init];

[apiInstance mdrSendigVersionClassesGetWithVersion:version
          completionHandler: ^(OAISendigClasses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISENDImplementationGuideSENDIGApi->mdrSendigVersionClassesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAISendigClasses***](OAISendigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionDatasetsDatasetGet**
```objc
-(NSURLSessionTask*) mdrSendigVersionDatasetsDatasetGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
        completionHandler: (void (^)(OAISendigDataset* output, NSError* error)) handler;
```



Get SENDIG Dataset

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-1; // CDISC Library Product Version
NSString* dataset = VS; // SENDIG Class Identifier

OAISENDImplementationGuideSENDIGApi*apiInstance = [[OAISENDImplementationGuideSENDIGApi alloc] init];

[apiInstance mdrSendigVersionDatasetsDatasetGetWithVersion:version
              dataset:dataset
          completionHandler: ^(OAISendigDataset* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISENDImplementationGuideSENDIGApi->mdrSendigVersionDatasetsDatasetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **dataset** | **NSString***| SENDIG Class Identifier | 

### Return type

[**OAISendigDataset***](OAISendigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionDatasetsDatasetVariablesGet**
```objc
-(NSURLSessionTask*) mdrSendigVersionDatasetsDatasetVariablesGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
        completionHandler: (void (^)(OAISendigDatasetVariables* output, NSError* error)) handler;
```



Get SENDIG Dataset Variable List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-1; // CDISC Library Product Version
NSString* dataset = VS; // SENDIG Class Identifier

OAISENDImplementationGuideSENDIGApi*apiInstance = [[OAISENDImplementationGuideSENDIGApi alloc] init];

[apiInstance mdrSendigVersionDatasetsDatasetVariablesGetWithVersion:version
              dataset:dataset
          completionHandler: ^(OAISendigDatasetVariables* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISENDImplementationGuideSENDIGApi->mdrSendigVersionDatasetsDatasetVariablesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **dataset** | **NSString***| SENDIG Class Identifier | 

### Return type

[**OAISendigDatasetVariables***](OAISendigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionDatasetsDatasetVariablesVarGet**
```objc
-(NSURLSessionTask*) mdrSendigVersionDatasetsDatasetVariablesVarGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
    var: (NSString*) var
        completionHandler: (void (^)(OAISendigDatasetVariable* output, NSError* error)) handler;
```



Get SENDIG Dataset Variable

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-1; // CDISC Library Product Version
NSString* dataset = VS; // SENDIG Class Identifier
NSString* var = VSTEST; // SENDIG Variable Identifier

OAISENDImplementationGuideSENDIGApi*apiInstance = [[OAISENDImplementationGuideSENDIGApi alloc] init];

[apiInstance mdrSendigVersionDatasetsDatasetVariablesVarGetWithVersion:version
              dataset:dataset
              var:var
          completionHandler: ^(OAISendigDatasetVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISENDImplementationGuideSENDIGApi->mdrSendigVersionDatasetsDatasetVariablesVarGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **dataset** | **NSString***| SENDIG Class Identifier | 
 **var** | **NSString***| SENDIG Variable Identifier | 

### Return type

[**OAISendigDatasetVariable***](OAISendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionDatasetsGet**
```objc
-(NSURLSessionTask*) mdrSendigVersionDatasetsGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAISendigDatasets* output, NSError* error)) handler;
```



Get SENDIG Dataset List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-1; // CDISC Library Product Version

OAISENDImplementationGuideSENDIGApi*apiInstance = [[OAISENDImplementationGuideSENDIGApi alloc] init];

[apiInstance mdrSendigVersionDatasetsGetWithVersion:version
          completionHandler: ^(OAISendigDatasets* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISENDImplementationGuideSENDIGApi->mdrSendigVersionDatasetsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAISendigDatasets***](OAISendigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionGet**
```objc
-(NSURLSessionTask*) mdrSendigVersionGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAISendigProduct* output, NSError* error)) handler;
```



Get SENDIG product

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-1; // CDISC Library Product Version

OAISENDImplementationGuideSENDIGApi*apiInstance = [[OAISENDImplementationGuideSENDIGApi alloc] init];

[apiInstance mdrSendigVersionGetWithVersion:version
          completionHandler: ^(OAISendigProduct* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISENDImplementationGuideSENDIGApi->mdrSendigVersionGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAISendigProduct***](OAISendigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

