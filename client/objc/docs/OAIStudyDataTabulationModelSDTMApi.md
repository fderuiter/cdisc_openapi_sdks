# OAIStudyDataTabulationModelSDTMApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmClassesClassVariablesVarGet**](OAIStudyDataTabulationModelSDTMApi.md#mdrrootsdtmclassesclassvariablesvarget) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**mdrRootSdtmDatasetsDatasetVariablesVarGet**](OAIStudyDataTabulationModelSDTMApi.md#mdrrootsdtmdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionClassesClassDatasetsGet**](OAIStudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesclassdatasetsget) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**mdrSdtmVersionClassesClassGet**](OAIStudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesclassget) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**mdrSdtmVersionClassesClassVariablesGet**](OAIStudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesclassvariablesget) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**mdrSdtmVersionClassesClassVariablesVarGet**](OAIStudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesclassvariablesvarget) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**mdrSdtmVersionClassesGet**](OAIStudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesget) | **GET** /mdr/sdtm/{version}/classes | 
[**mdrSdtmVersionDatasetsDatasetGet**](OAIStudyDataTabulationModelSDTMApi.md#mdrsdtmversiondatasetsdatasetget) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**mdrSdtmVersionDatasetsDatasetVariablesGet**](OAIStudyDataTabulationModelSDTMApi.md#mdrsdtmversiondatasetsdatasetvariablesget) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**mdrSdtmVersionDatasetsDatasetVariablesVarGet**](OAIStudyDataTabulationModelSDTMApi.md#mdrsdtmversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionDatasetsGet**](OAIStudyDataTabulationModelSDTMApi.md#mdrsdtmversiondatasetsget) | **GET** /mdr/sdtm/{version}/datasets | 
[**mdrSdtmVersionGet**](OAIStudyDataTabulationModelSDTMApi.md#mdrsdtmversionget) | **GET** /mdr/sdtm/{version} | 


# **mdrRootSdtmClassesClassVariablesVarGet**
```objc
-(NSURLSessionTask*) mdrRootSdtmClassesClassVariablesVarGetWithClass: (NSString*) _class
    var: (NSString*) var
        completionHandler: (void (^)(OAIRootSdtmClassVariable* output, NSError* error)) handler;
```



Get Root of SDTM Class Variable

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* _class = GeneralObservations; // SDTM Class Identifier
NSString* var = --DTC; // SDTM Variable Identifier

OAIStudyDataTabulationModelSDTMApi*apiInstance = [[OAIStudyDataTabulationModelSDTMApi alloc] init];

[apiInstance mdrRootSdtmClassesClassVariablesVarGetWithClass:_class
              var:var
          completionHandler: ^(OAIRootSdtmClassVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudyDataTabulationModelSDTMApi->mdrRootSdtmClassesClassVariablesVarGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **NSString***| SDTM Class Identifier | 
 **var** | **NSString***| SDTM Variable Identifier | 

### Return type

[**OAIRootSdtmClassVariable***](OAIRootSdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootSdtmDatasetsDatasetVariablesVarGet**
```objc
-(NSURLSessionTask*) mdrRootSdtmDatasetsDatasetVariablesVarGetWithDataset: (NSString*) dataset
    var: (NSString*) var
        completionHandler: (void (^)(OAIRootSdtmDatasetVariable* output, NSError* error)) handler;
```



Get Root SDTM Dataset Variable

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* dataset = DM; // SDTM Dataset Identifier
NSString* var = SUBJID; // SDTM Variable Identifier

OAIStudyDataTabulationModelSDTMApi*apiInstance = [[OAIStudyDataTabulationModelSDTMApi alloc] init];

[apiInstance mdrRootSdtmDatasetsDatasetVariablesVarGetWithDataset:dataset
              var:var
          completionHandler: ^(OAIRootSdtmDatasetVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudyDataTabulationModelSDTMApi->mdrRootSdtmDatasetsDatasetVariablesVarGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **NSString***| SDTM Dataset Identifier | 
 **var** | **NSString***| SDTM Variable Identifier | 

### Return type

[**OAIRootSdtmDatasetVariable***](OAIRootSdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesClassDatasetsGet**
```objc
-(NSURLSessionTask*) mdrSdtmVersionClassesClassDatasetsGetWithVersion: (NSString*) version
    _class: (NSString*) _class
        completionHandler: (void (^)(OAISdtmClassDatasets* output, NSError* error)) handler;
```



Get SDTM Class Dataset List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-8; // CDISC Library Product Version
NSString* _class = SpecialPurpose; // SDTM Class Identifier

OAIStudyDataTabulationModelSDTMApi*apiInstance = [[OAIStudyDataTabulationModelSDTMApi alloc] init];

[apiInstance mdrSdtmVersionClassesClassDatasetsGetWithVersion:version
              _class:_class
          completionHandler: ^(OAISdtmClassDatasets* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesClassDatasetsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| SDTM Class Identifier | 

### Return type

[**OAISdtmClassDatasets***](OAISdtmClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesClassGet**
```objc
-(NSURLSessionTask*) mdrSdtmVersionClassesClassGetWithVersion: (NSString*) version
    _class: (NSString*) _class
        completionHandler: (void (^)(OAISdtmClass* output, NSError* error)) handler;
```



Get SDTM Class

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-8; // CDISC Library Product Version
NSString* _class = Findings; // SDTM Class Identifier

OAIStudyDataTabulationModelSDTMApi*apiInstance = [[OAIStudyDataTabulationModelSDTMApi alloc] init];

[apiInstance mdrSdtmVersionClassesClassGetWithVersion:version
              _class:_class
          completionHandler: ^(OAISdtmClass* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesClassGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| SDTM Class Identifier | 

### Return type

[**OAISdtmClass***](OAISdtmClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesClassVariablesGet**
```objc
-(NSURLSessionTask*) mdrSdtmVersionClassesClassVariablesGetWithVersion: (NSString*) version
    _class: (NSString*) _class
        completionHandler: (void (^)(OAISdtmClassVariables* output, NSError* error)) handler;
```



Get SDTM Class Variable List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-8; // CDISC Library Product Version
NSString* _class = GeneralObservations; // SDTM Class Identifier

OAIStudyDataTabulationModelSDTMApi*apiInstance = [[OAIStudyDataTabulationModelSDTMApi alloc] init];

[apiInstance mdrSdtmVersionClassesClassVariablesGetWithVersion:version
              _class:_class
          completionHandler: ^(OAISdtmClassVariables* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesClassVariablesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| SDTM Class Identifier | 

### Return type

[**OAISdtmClassVariables***](OAISdtmClassVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesClassVariablesVarGet**
```objc
-(NSURLSessionTask*) mdrSdtmVersionClassesClassVariablesVarGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    var: (NSString*) var
        completionHandler: (void (^)(OAISdtmClassVariable* output, NSError* error)) handler;
```



Get SDTM Class Variable

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-8; // CDISC Library Product Version
NSString* _class = GeneralObservations; // SDTM Class Identifier
NSString* var = --DTC; // SDTM Variable Identifier

OAIStudyDataTabulationModelSDTMApi*apiInstance = [[OAIStudyDataTabulationModelSDTMApi alloc] init];

[apiInstance mdrSdtmVersionClassesClassVariablesVarGetWithVersion:version
              _class:_class
              var:var
          completionHandler: ^(OAISdtmClassVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesClassVariablesVarGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| SDTM Class Identifier | 
 **var** | **NSString***| SDTM Variable Identifier | 

### Return type

[**OAISdtmClassVariable***](OAISdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesGet**
```objc
-(NSURLSessionTask*) mdrSdtmVersionClassesGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAISdtmClasses* output, NSError* error)) handler;
```



Get SDTM Class List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-8; // CDISC Library Product Version

OAIStudyDataTabulationModelSDTMApi*apiInstance = [[OAIStudyDataTabulationModelSDTMApi alloc] init];

[apiInstance mdrSdtmVersionClassesGetWithVersion:version
          completionHandler: ^(OAISdtmClasses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAISdtmClasses***](OAISdtmClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionDatasetsDatasetGet**
```objc
-(NSURLSessionTask*) mdrSdtmVersionDatasetsDatasetGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
        completionHandler: (void (^)(OAISdtmDataset* output, NSError* error)) handler;
```



Get SDTM Dataset

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-8; // CDISC Library Product Version
NSString* dataset = DM; // SDTM Dataset Identifier

OAIStudyDataTabulationModelSDTMApi*apiInstance = [[OAIStudyDataTabulationModelSDTMApi alloc] init];

[apiInstance mdrSdtmVersionDatasetsDatasetGetWithVersion:version
              dataset:dataset
          completionHandler: ^(OAISdtmDataset* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudyDataTabulationModelSDTMApi->mdrSdtmVersionDatasetsDatasetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **dataset** | **NSString***| SDTM Dataset Identifier | 

### Return type

[**OAISdtmDataset***](OAISdtmDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionDatasetsDatasetVariablesGet**
```objc
-(NSURLSessionTask*) mdrSdtmVersionDatasetsDatasetVariablesGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
        completionHandler: (void (^)(OAISdtmDatasetVariables* output, NSError* error)) handler;
```



Get SDTM Dataset Variable List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-8; // CDISC Library Product Version
NSString* dataset = DM; // SDTM Dataset Identifier

OAIStudyDataTabulationModelSDTMApi*apiInstance = [[OAIStudyDataTabulationModelSDTMApi alloc] init];

[apiInstance mdrSdtmVersionDatasetsDatasetVariablesGetWithVersion:version
              dataset:dataset
          completionHandler: ^(OAISdtmDatasetVariables* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudyDataTabulationModelSDTMApi->mdrSdtmVersionDatasetsDatasetVariablesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **dataset** | **NSString***| SDTM Dataset Identifier | 

### Return type

[**OAISdtmDatasetVariables***](OAISdtmDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionDatasetsDatasetVariablesVarGet**
```objc
-(NSURLSessionTask*) mdrSdtmVersionDatasetsDatasetVariablesVarGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
    var: (NSString*) var
        completionHandler: (void (^)(OAISdtmDatasetVariable* output, NSError* error)) handler;
```



Get SDTM Dataset Variable

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-8; // CDISC Library Product Version
NSString* dataset = DM; // SDTM Dataset Identifier
NSString* var = SUBJID; // SDTM Variable Identifier

OAIStudyDataTabulationModelSDTMApi*apiInstance = [[OAIStudyDataTabulationModelSDTMApi alloc] init];

[apiInstance mdrSdtmVersionDatasetsDatasetVariablesVarGetWithVersion:version
              dataset:dataset
              var:var
          completionHandler: ^(OAISdtmDatasetVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudyDataTabulationModelSDTMApi->mdrSdtmVersionDatasetsDatasetVariablesVarGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **dataset** | **NSString***| SDTM Dataset Identifier | 
 **var** | **NSString***| SDTM Variable Identifier | 

### Return type

[**OAISdtmDatasetVariable***](OAISdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionDatasetsGet**
```objc
-(NSURLSessionTask*) mdrSdtmVersionDatasetsGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAISdtmDatasets* output, NSError* error)) handler;
```



Get SDTM Dataset List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-8; // CDISC Library Product Version

OAIStudyDataTabulationModelSDTMApi*apiInstance = [[OAIStudyDataTabulationModelSDTMApi alloc] init];

[apiInstance mdrSdtmVersionDatasetsGetWithVersion:version
          completionHandler: ^(OAISdtmDatasets* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudyDataTabulationModelSDTMApi->mdrSdtmVersionDatasetsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAISdtmDatasets***](OAISdtmDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionGet**
```objc
-(NSURLSessionTask*) mdrSdtmVersionGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAISdtmProduct* output, NSError* error)) handler;
```



Get SDTM product

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-8; // CDISC Library Product Version

OAIStudyDataTabulationModelSDTMApi*apiInstance = [[OAIStudyDataTabulationModelSDTMApi alloc] init];

[apiInstance mdrSdtmVersionGetWithVersion:version
          completionHandler: ^(OAISdtmProduct* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudyDataTabulationModelSDTMApi->mdrSdtmVersionGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAISdtmProduct***](OAISdtmProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

