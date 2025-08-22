# OAISDTMImplementationGuideSDTMIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmigDatasetsDatasetVariablesVarGet**](OAISDTMImplementationGuideSDTMIGApi.md#mdrrootsdtmigdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**mdrSdtmigVersionClassesClassDatasetsGet**](OAISDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversionclassesclassdatasetsget) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**mdrSdtmigVersionClassesClassGet**](OAISDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversionclassesclassget) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
[**mdrSdtmigVersionClassesGet**](OAISDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversionclassesget) | **GET** /mdr/sdtmig/{version}/classes | 
[**mdrSdtmigVersionDatasetsDatasetGet**](OAISDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversiondatasetsdatasetget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**mdrSdtmigVersionDatasetsDatasetVariablesGet**](OAISDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversiondatasetsdatasetvariablesget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**mdrSdtmigVersionDatasetsDatasetVariablesVarGet**](OAISDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmigVersionDatasetsGet**](OAISDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversiondatasetsget) | **GET** /mdr/sdtmig/{version}/datasets | 
[**mdrSdtmigVersionGet**](OAISDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversionget) | **GET** /mdr/sdtmig/{version} | 


# **mdrRootSdtmigDatasetsDatasetVariablesVarGet**
```objc
-(NSURLSessionTask*) mdrRootSdtmigDatasetsDatasetVariablesVarGetWithDataset: (NSString*) dataset
    var: (NSString*) var
        completionHandler: (void (^)(OAIRootSdtmigDatasetVariable* output, NSError* error)) handler;
```



Get Root SDTMIG Dataset Variable

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* dataset = DM; // SDTMIG Dataset Identifier
NSString* var = SUBJID; // SDTMIG Variable Identifier

OAISDTMImplementationGuideSDTMIGApi*apiInstance = [[OAISDTMImplementationGuideSDTMIGApi alloc] init];

[apiInstance mdrRootSdtmigDatasetsDatasetVariablesVarGetWithDataset:dataset
              var:var
          completionHandler: ^(OAIRootSdtmigDatasetVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISDTMImplementationGuideSDTMIGApi->mdrRootSdtmigDatasetsDatasetVariablesVarGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **NSString***| SDTMIG Dataset Identifier | 
 **var** | **NSString***| SDTMIG Variable Identifier | 

### Return type

[**OAIRootSdtmigDatasetVariable***](OAIRootSdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionClassesClassDatasetsGet**
```objc
-(NSURLSessionTask*) mdrSdtmigVersionClassesClassDatasetsGetWithVersion: (NSString*) version
    _class: (NSString*) _class
        completionHandler: (void (^)(OAISdtmigClassDatasets* output, NSError* error)) handler;
```



Get SDTMIG Class Dataset List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-3; // CDISC Library Product Version
NSString* _class = Findings; // SDTMIG Class Identifier

OAISDTMImplementationGuideSDTMIGApi*apiInstance = [[OAISDTMImplementationGuideSDTMIGApi alloc] init];

[apiInstance mdrSdtmigVersionClassesClassDatasetsGetWithVersion:version
              _class:_class
          completionHandler: ^(OAISdtmigClassDatasets* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionClassesClassDatasetsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| SDTMIG Class Identifier | 

### Return type

[**OAISdtmigClassDatasets***](OAISdtmigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionClassesClassGet**
```objc
-(NSURLSessionTask*) mdrSdtmigVersionClassesClassGetWithVersion: (NSString*) version
    _class: (NSString*) _class
        completionHandler: (void (^)(OAISdtmigClass* output, NSError* error)) handler;
```



Get SDTMIG Class

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-3; // CDISC Library Product Version
NSString* _class = Findings; // SDTMIG Class Identifier

OAISDTMImplementationGuideSDTMIGApi*apiInstance = [[OAISDTMImplementationGuideSDTMIGApi alloc] init];

[apiInstance mdrSdtmigVersionClassesClassGetWithVersion:version
              _class:_class
          completionHandler: ^(OAISdtmigClass* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionClassesClassGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| SDTMIG Class Identifier | 

### Return type

[**OAISdtmigClass***](OAISdtmigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionClassesGet**
```objc
-(NSURLSessionTask*) mdrSdtmigVersionClassesGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAISdtmigClasses* output, NSError* error)) handler;
```



Get SDTMIG Class List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-3; // CDISC Library Product Version

OAISDTMImplementationGuideSDTMIGApi*apiInstance = [[OAISDTMImplementationGuideSDTMIGApi alloc] init];

[apiInstance mdrSdtmigVersionClassesGetWithVersion:version
          completionHandler: ^(OAISdtmigClasses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionClassesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAISdtmigClasses***](OAISdtmigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionDatasetsDatasetGet**
```objc
-(NSURLSessionTask*) mdrSdtmigVersionDatasetsDatasetGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
        completionHandler: (void (^)(OAISdtmigDataset* output, NSError* error)) handler;
```



Get SDTMIG Dataset

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-3; // CDISC Library Product Version
NSString* dataset = LB; // SDTMIG Dataset Identifier

OAISDTMImplementationGuideSDTMIGApi*apiInstance = [[OAISDTMImplementationGuideSDTMIGApi alloc] init];

[apiInstance mdrSdtmigVersionDatasetsDatasetGetWithVersion:version
              dataset:dataset
          completionHandler: ^(OAISdtmigDataset* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionDatasetsDatasetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **dataset** | **NSString***| SDTMIG Dataset Identifier | 

### Return type

[**OAISdtmigDataset***](OAISdtmigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionDatasetsDatasetVariablesGet**
```objc
-(NSURLSessionTask*) mdrSdtmigVersionDatasetsDatasetVariablesGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
        completionHandler: (void (^)(OAISdtmigDatasetVariables* output, NSError* error)) handler;
```



Get SDTMIG Dataset Variable List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-3; // CDISC Library Product Version
NSString* dataset = LB; // SDTMIG Dataset Identifier

OAISDTMImplementationGuideSDTMIGApi*apiInstance = [[OAISDTMImplementationGuideSDTMIGApi alloc] init];

[apiInstance mdrSdtmigVersionDatasetsDatasetVariablesGetWithVersion:version
              dataset:dataset
          completionHandler: ^(OAISdtmigDatasetVariables* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionDatasetsDatasetVariablesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **dataset** | **NSString***| SDTMIG Dataset Identifier | 

### Return type

[**OAISdtmigDatasetVariables***](OAISdtmigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionDatasetsDatasetVariablesVarGet**
```objc
-(NSURLSessionTask*) mdrSdtmigVersionDatasetsDatasetVariablesVarGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
    var: (NSString*) var
        completionHandler: (void (^)(OAISdtmigDatasetVariable* output, NSError* error)) handler;
```



Get SDTMIG Dataset Variable

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-3; // CDISC Library Product Version
NSString* dataset = LB; // SDTMIG Dataset Identifier
NSString* var = LBDTC; // SDTMIG Variable Identifier

OAISDTMImplementationGuideSDTMIGApi*apiInstance = [[OAISDTMImplementationGuideSDTMIGApi alloc] init];

[apiInstance mdrSdtmigVersionDatasetsDatasetVariablesVarGetWithVersion:version
              dataset:dataset
              var:var
          completionHandler: ^(OAISdtmigDatasetVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionDatasetsDatasetVariablesVarGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **dataset** | **NSString***| SDTMIG Dataset Identifier | 
 **var** | **NSString***| SDTMIG Variable Identifier | 

### Return type

[**OAISdtmigDatasetVariable***](OAISdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionDatasetsGet**
```objc
-(NSURLSessionTask*) mdrSdtmigVersionDatasetsGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAISdtmigDatasets* output, NSError* error)) handler;
```



Get SDTMIG Dataset List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-3; // CDISC Library Product Version

OAISDTMImplementationGuideSDTMIGApi*apiInstance = [[OAISDTMImplementationGuideSDTMIGApi alloc] init];

[apiInstance mdrSdtmigVersionDatasetsGetWithVersion:version
          completionHandler: ^(OAISdtmigDatasets* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionDatasetsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAISdtmigDatasets***](OAISdtmigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionGet**
```objc
-(NSURLSessionTask*) mdrSdtmigVersionGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAISdtmigProduct* output, NSError* error)) handler;
```



Get SDTMIG product

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 3-3; // CDISC Library Product Version

OAISDTMImplementationGuideSDTMIGApi*apiInstance = [[OAISDTMImplementationGuideSDTMIGApi alloc] init];

[apiInstance mdrSdtmigVersionGetWithVersion:version
          completionHandler: ^(OAISdtmigProduct* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAISdtmigProduct***](OAISdtmigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

