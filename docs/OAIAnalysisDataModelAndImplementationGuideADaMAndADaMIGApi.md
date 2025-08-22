# OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrAdamProductDatastructuresGet**](OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresget) | **GET** /mdr/adam/{product}/datastructures | 
[**mdrAdamProductDatastructuresStructureGet**](OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructureget) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
[**mdrAdamProductDatastructuresStructureVariablesGet**](OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructurevariablesget) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**mdrAdamProductDatastructuresStructureVariablesVarGet**](OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructurevariablesvarget) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**mdrAdamProductDatastructuresStructureVarsetsGet**](OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructurevarsetsget) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**mdrAdamProductDatastructuresStructureVarsetsVarsetGet**](OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructurevarsetsvarsetget) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**mdrAdamProductGet**](OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductget) | **GET** /mdr/adam/{product} | 


# **mdrAdamProductDatastructuresGet**
```objc
-(NSURLSessionTask*) mdrAdamProductDatastructuresGetWithProduct: (NSString*) product
        completionHandler: (void (^)(OAIAdamProductDatastructures* output, NSError* error)) handler;
```



Get ADaM Data Structure List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* product = adamig-1-1; // CDISC Library Product

OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi*apiInstance = [[OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi alloc] init];

[apiInstance mdrAdamProductDatastructuresGetWithProduct:product
          completionHandler: ^(OAIAdamProductDatastructures* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **NSString***| CDISC Library Product | 

### Return type

[**OAIAdamProductDatastructures***](OAIAdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureGet**
```objc
-(NSURLSessionTask*) mdrAdamProductDatastructuresStructureGetWithProduct: (NSString*) product
    structure: (NSString*) structure
        completionHandler: (void (^)(OAIAdamDatastructure* output, NSError* error)) handler;
```



Get ADaM Data Structure

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* product = adamig-1-1; // CDISC Library Product
NSString* structure = ADSL; // Data structure Identifier

OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi*apiInstance = [[OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi alloc] init];

[apiInstance mdrAdamProductDatastructuresStructureGetWithProduct:product
              structure:structure
          completionHandler: ^(OAIAdamDatastructure* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **NSString***| CDISC Library Product | 
 **structure** | **NSString***| Data structure Identifier | 

### Return type

[**OAIAdamDatastructure***](OAIAdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureVariablesGet**
```objc
-(NSURLSessionTask*) mdrAdamProductDatastructuresStructureVariablesGetWithProduct: (NSString*) product
    structure: (NSString*) structure
        completionHandler: (void (^)(OAIAdamDatastructureVariables* output, NSError* error)) handler;
```



Get ADaM Variable List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* product = adamig-1-1; // CDISC Library Product
NSString* structure = ADSL; // ADaM Data Structure Identifier

OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi*apiInstance = [[OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi alloc] init];

[apiInstance mdrAdamProductDatastructuresStructureVariablesGetWithProduct:product
              structure:structure
          completionHandler: ^(OAIAdamDatastructureVariables* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureVariablesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **NSString***| CDISC Library Product | 
 **structure** | **NSString***| ADaM Data Structure Identifier | 

### Return type

[**OAIAdamDatastructureVariables***](OAIAdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureVariablesVarGet**
```objc
-(NSURLSessionTask*) mdrAdamProductDatastructuresStructureVariablesVarGetWithProduct: (NSString*) product
    structure: (NSString*) structure
    var: (NSString*) var
        completionHandler: (void (^)(OAIAdamVariable* output, NSError* error)) handler;
```



Get ADaM Variable

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* product = adamig-1-1; // CDISC Library Product
NSString* structure = ADSL; // ADaM Data Structure Identifier
NSString* var = SITEGRy; // ADaM Variable Identifier

OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi*apiInstance = [[OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi alloc] init];

[apiInstance mdrAdamProductDatastructuresStructureVariablesVarGetWithProduct:product
              structure:structure
              var:var
          completionHandler: ^(OAIAdamVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureVariablesVarGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **NSString***| CDISC Library Product | 
 **structure** | **NSString***| ADaM Data Structure Identifier | 
 **var** | **NSString***| ADaM Variable Identifier | 

### Return type

[**OAIAdamVariable***](OAIAdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureVarsetsGet**
```objc
-(NSURLSessionTask*) mdrAdamProductDatastructuresStructureVarsetsGetWithProduct: (NSString*) product
    structure: (NSString*) structure
        completionHandler: (void (^)(OAIAdamDatastructureVarsets* output, NSError* error)) handler;
```



Get ADaM Variable Set List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* product = adamig-1-1; // CDISC Library Product
NSString* structure = ADSL; // ADaM Data Structure Identifier

OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi*apiInstance = [[OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi alloc] init];

[apiInstance mdrAdamProductDatastructuresStructureVarsetsGetWithProduct:product
              structure:structure
          completionHandler: ^(OAIAdamDatastructureVarsets* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureVarsetsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **NSString***| CDISC Library Product | 
 **structure** | **NSString***| ADaM Data Structure Identifier | 

### Return type

[**OAIAdamDatastructureVarsets***](OAIAdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureVarsetsVarsetGet**
```objc
-(NSURLSessionTask*) mdrAdamProductDatastructuresStructureVarsetsVarsetGetWithProduct: (NSString*) product
    structure: (NSString*) structure
    varset: (NSString*) varset
        completionHandler: (void (^)(OAIAdamVarset* output, NSError* error)) handler;
```



Get ADaM Variable Set

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* product = adamig-1-1; // CDISC Library Product
NSString* structure = ADSL; // ADaM Data Structure Identifier
NSString* varset = Identifier; // ADaM Variable Set Identifier

OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi*apiInstance = [[OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi alloc] init];

[apiInstance mdrAdamProductDatastructuresStructureVarsetsVarsetGetWithProduct:product
              structure:structure
              varset:varset
          completionHandler: ^(OAIAdamVarset* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureVarsetsVarsetGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **NSString***| CDISC Library Product | 
 **structure** | **NSString***| ADaM Data Structure Identifier | 
 **varset** | **NSString***| ADaM Variable Set Identifier | 

### Return type

[**OAIAdamVarset***](OAIAdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductGet**
```objc
-(NSURLSessionTask*) mdrAdamProductGetWithProduct: (NSString*) product
        completionHandler: (void (^)(OAIAdamProduct* output, NSError* error)) handler;
```



Get ADaM Product

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* product = adamig-1-1; // CDISC Library Product

OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi*apiInstance = [[OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi alloc] init];

[apiInstance mdrAdamProductGetWithProduct:product
          completionHandler: ^(OAIAdamProduct* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **NSString***| CDISC Library Product | 

### Return type

[**OAIAdamProduct***](OAIAdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

