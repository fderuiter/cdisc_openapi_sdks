# OAIControlledTerminologyCTApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCtPackagesGet**](OAIControlledTerminologyCTApi.md#mdrctpackagesget) | **GET** /mdr/ct/packages | 
[**mdrCtPackagesPackageCodelistsCodelistGet**](OAIControlledTerminologyCTApi.md#mdrctpackagespackagecodelistscodelistget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | 
[**mdrCtPackagesPackageCodelistsCodelistTermsGet**](OAIControlledTerminologyCTApi.md#mdrctpackagespackagecodelistscodelisttermsget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
[**mdrCtPackagesPackageCodelistsCodelistTermsTermGet**](OAIControlledTerminologyCTApi.md#mdrctpackagespackagecodelistscodelisttermstermget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
[**mdrCtPackagesPackageCodelistsGet**](OAIControlledTerminologyCTApi.md#mdrctpackagespackagecodelistsget) | **GET** /mdr/ct/packages/{package}/codelists | 
[**mdrCtPackagesProductGet**](OAIControlledTerminologyCTApi.md#mdrctpackagesproductget) | **GET** /mdr/ct/packages/{product} | 
[**mdrRootCtProductGroupCodelistsCodelistGet**](OAIControlledTerminologyCTApi.md#mdrrootctproductgroupcodelistscodelistget) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
[**mdrRootCtProductGroupCodelistsCodelistTermsTermGet**](OAIControlledTerminologyCTApi.md#mdrrootctproductgroupcodelistscodelisttermstermget) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 


# **mdrCtPackagesGet**
```objc
-(NSURLSessionTask*) mdrCtPackagesGetWithCompletionHandler: 
        (void (^)(OAICtPackages* output, NSError* error)) handler;
```



Get CDISC Library CT Package List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIControlledTerminologyCTApi*apiInstance = [[OAIControlledTerminologyCTApi alloc] init];

[apiInstance mdrCtPackagesGetWithCompletionHandler: 
          ^(OAICtPackages* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIControlledTerminologyCTApi->mdrCtPackagesGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAICtPackages***](OAICtPackages.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsCodelistGet**
```objc
-(NSURLSessionTask*) mdrCtPackagesPackageCodelistsCodelistGetWithPackage: (NSString*) package
    codelist: (NSString*) codelist
        completionHandler: (void (^)(OAICtCodelist* output, NSError* error)) handler;
```



Get CDISC Library CT Package Codelist

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* package = sdtmct-2019-12-20; // CT Package Identifier
NSString* codelist = C67154; // CT Codelist Identifier

OAIControlledTerminologyCTApi*apiInstance = [[OAIControlledTerminologyCTApi alloc] init];

[apiInstance mdrCtPackagesPackageCodelistsCodelistGetWithPackage:package
              codelist:codelist
          completionHandler: ^(OAICtCodelist* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIControlledTerminologyCTApi->mdrCtPackagesPackageCodelistsCodelistGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **NSString***| CT Package Identifier | 
 **codelist** | **NSString***| CT Codelist Identifier | 

### Return type

[**OAICtCodelist***](OAICtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsCodelistTermsGet**
```objc
-(NSURLSessionTask*) mdrCtPackagesPackageCodelistsCodelistTermsGetWithPackage: (NSString*) package
    codelist: (NSString*) codelist
        completionHandler: (void (^)(OAICtCodelistTerms* output, NSError* error)) handler;
```



Get CDISC Library CT Package Codelist Term List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* package = sdtmct-2019-12-20; // CT Package Identifier
NSString* codelist = C67154; // CT Codelist Identifier

OAIControlledTerminologyCTApi*apiInstance = [[OAIControlledTerminologyCTApi alloc] init];

[apiInstance mdrCtPackagesPackageCodelistsCodelistTermsGetWithPackage:package
              codelist:codelist
          completionHandler: ^(OAICtCodelistTerms* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIControlledTerminologyCTApi->mdrCtPackagesPackageCodelistsCodelistTermsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **NSString***| CT Package Identifier | 
 **codelist** | **NSString***| CT Codelist Identifier | 

### Return type

[**OAICtCodelistTerms***](OAICtCodelistTerms.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsCodelistTermsTermGet**
```objc
-(NSURLSessionTask*) mdrCtPackagesPackageCodelistsCodelistTermsTermGetWithPackage: (NSString*) package
    codelist: (NSString*) codelist
    term: (NSString*) term
        completionHandler: (void (^)(OAICtTerm* output, NSError* error)) handler;
```



Get CDISC Library CT Package Codelist Term

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* package = sdtmct-2019-12-20; // CT Package Product Identifier
NSString* codelist = C67154; // CT Codelist Identifier
NSString* term = C64796; // CT Codelist Term Identifier

OAIControlledTerminologyCTApi*apiInstance = [[OAIControlledTerminologyCTApi alloc] init];

[apiInstance mdrCtPackagesPackageCodelistsCodelistTermsTermGetWithPackage:package
              codelist:codelist
              term:term
          completionHandler: ^(OAICtTerm* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIControlledTerminologyCTApi->mdrCtPackagesPackageCodelistsCodelistTermsTermGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **NSString***| CT Package Product Identifier | 
 **codelist** | **NSString***| CT Codelist Identifier | 
 **term** | **NSString***| CT Codelist Term Identifier | 

### Return type

[**OAICtTerm***](OAICtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsGet**
```objc
-(NSURLSessionTask*) mdrCtPackagesPackageCodelistsGetWithPackage: (NSString*) package
        completionHandler: (void (^)(OAICtPackageCodelists* output, NSError* error)) handler;
```



Get CDISC Library CT Package Codelist List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* package = sdtmct-2019-12-20; // CT Package Identifier

OAIControlledTerminologyCTApi*apiInstance = [[OAIControlledTerminologyCTApi alloc] init];

[apiInstance mdrCtPackagesPackageCodelistsGetWithPackage:package
          completionHandler: ^(OAICtPackageCodelists* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIControlledTerminologyCTApi->mdrCtPackagesPackageCodelistsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **NSString***| CT Package Identifier | 

### Return type

[**OAICtPackageCodelists***](OAICtPackageCodelists.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesProductGet**
```objc
-(NSURLSessionTask*) mdrCtPackagesProductGetWithProduct: (NSString*) product
        completionHandler: (void (^)(OAICtPackage* output, NSError* error)) handler;
```



Get CDISC Library CT Package

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* product = sdtmct-2019-12-20; // CT Package Product Identifier

OAIControlledTerminologyCTApi*apiInstance = [[OAIControlledTerminologyCTApi alloc] init];

[apiInstance mdrCtPackagesProductGetWithProduct:product
          completionHandler: ^(OAICtPackage* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIControlledTerminologyCTApi->mdrCtPackagesProductGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **NSString***| CT Package Product Identifier | 

### Return type

[**OAICtPackage***](OAICtPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCtProductGroupCodelistsCodelistGet**
```objc
-(NSURLSessionTask*) mdrRootCtProductGroupCodelistsCodelistGetWithProductGroup: (NSString*) productGroup
    codelist: (NSString*) codelist
        completionHandler: (void (^)(OAIRootCtCodelist* output, NSError* error)) handler;
```



Get CDISC Library Root CT Codelist

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* productGroup = sdtmct; // CT Product Group Identifier
NSString* codelist = C67154; // CT Codelist Identifier

OAIControlledTerminologyCTApi*apiInstance = [[OAIControlledTerminologyCTApi alloc] init];

[apiInstance mdrRootCtProductGroupCodelistsCodelistGetWithProductGroup:productGroup
              codelist:codelist
          completionHandler: ^(OAIRootCtCodelist* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIControlledTerminologyCTApi->mdrRootCtProductGroupCodelistsCodelistGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productGroup** | **NSString***| CT Product Group Identifier | 
 **codelist** | **NSString***| CT Codelist Identifier | 

### Return type

[**OAIRootCtCodelist***](OAIRootCtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCtProductGroupCodelistsCodelistTermsTermGet**
```objc
-(NSURLSessionTask*) mdrRootCtProductGroupCodelistsCodelistTermsTermGetWithProductGroup: (NSString*) productGroup
    codelist: (NSString*) codelist
    term: (NSString*) term
        completionHandler: (void (^)(OAIRootCtTerm* output, NSError* error)) handler;
```



Get CDISC Library Root CT Term

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* productGroup = sdtmct; // CT Product Group Identifier
NSString* codelist = C67154; // CT Codelist Identifier
NSString* term = C64796; // CT Codelist Term Identifier

OAIControlledTerminologyCTApi*apiInstance = [[OAIControlledTerminologyCTApi alloc] init];

[apiInstance mdrRootCtProductGroupCodelistsCodelistTermsTermGetWithProductGroup:productGroup
              codelist:codelist
              term:term
          completionHandler: ^(OAIRootCtTerm* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIControlledTerminologyCTApi->mdrRootCtProductGroupCodelistsCodelistTermsTermGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productGroup** | **NSString***| CT Product Group Identifier | 
 **codelist** | **NSString***| CT Codelist Identifier | 
 **term** | **NSString***| CT Codelist Term Identifier | 

### Return type

[**OAIRootCtTerm***](OAIRootCtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

