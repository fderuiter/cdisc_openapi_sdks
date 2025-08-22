# OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCdashVersionClassesClassDomainsGet**](OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionclassesclassdomainsget) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
[**mdrCdashVersionClassesClassFieldsFieldGet**](OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionclassesclassfieldsfieldget) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**mdrCdashVersionClassesClassGet**](OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionclassesclassget) | **GET** /mdr/cdash/{version}/classes/{class} | 
[**mdrCdashVersionClassesGet**](OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionclassesget) | **GET** /mdr/cdash/{version}/classes | 
[**mdrCdashVersionDomainsDomainFieldsFieldGet**](OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversiondomainsdomainfieldsfieldget) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**mdrCdashVersionDomainsDomainFieldsGet**](OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversiondomainsdomainfieldsget) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
[**mdrCdashVersionDomainsDomainGet**](OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversiondomainsdomainget) | **GET** /mdr/cdash/{version}/domains/{domain} | 
[**mdrCdashVersionDomainsGet**](OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversiondomainsget) | **GET** /mdr/cdash/{version}/domains | 
[**mdrCdashVersionGet**](OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionget) | **GET** /mdr/cdash/{version} | 
[**mdrRootCdashClassesClassFieldsFieldGet**](OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrrootcdashclassesclassfieldsfieldget) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**mdrRootCdashDomainsDomainFieldsFieldGet**](OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrrootcdashdomainsdomainfieldsfieldget) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 


# **mdrCdashVersionClassesClassDomainsGet**
```objc
-(NSURLSessionTask*) mdrCdashVersionClassesClassDomainsGetWithVersion: (NSString*) version
    _class: (NSString*) _class
        completionHandler: (void (^)(OAICdashClassDomains* output, NSError* error)) handler;
```



Get CDASH Class Domain List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-1; // CDISC Library Product Version
NSString* _class = SpecialPurpose; // CDASH Class Identifier

OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi*apiInstance = [[OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi alloc] init];

[apiInstance mdrCdashVersionClassesClassDomainsGetWithVersion:version
              _class:_class
          completionHandler: ^(OAICdashClassDomains* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionClassesClassDomainsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| CDASH Class Identifier | 

### Return type

[**OAICdashClassDomains***](OAICdashClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionClassesClassFieldsFieldGet**
```objc
-(NSURLSessionTask*) mdrCdashVersionClassesClassFieldsFieldGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    field: (NSString*) field
        completionHandler: (void (^)(OAICdashClassField* output, NSError* error)) handler;
```



Get CDASH Class Field

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-1; // CDISC Library Product Version
NSString* _class = Timing; // CDASH Class Identifier
NSString* field = --DAT; // CDASH Field Identifier

OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi*apiInstance = [[OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi alloc] init];

[apiInstance mdrCdashVersionClassesClassFieldsFieldGetWithVersion:version
              _class:_class
              field:field
          completionHandler: ^(OAICdashClassField* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionClassesClassFieldsFieldGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| CDASH Class Identifier | 
 **field** | **NSString***| CDASH Field Identifier | 

### Return type

[**OAICdashClassField***](OAICdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionClassesClassGet**
```objc
-(NSURLSessionTask*) mdrCdashVersionClassesClassGetWithVersion: (NSString*) version
    _class: (NSString*) _class
        completionHandler: (void (^)(OAICdashClass* output, NSError* error)) handler;
```



Get CDASH Class

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-1; // CDISC Library Product Version
NSString* _class = Timing; // CDASH Class Identifier

OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi*apiInstance = [[OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi alloc] init];

[apiInstance mdrCdashVersionClassesClassGetWithVersion:version
              _class:_class
          completionHandler: ^(OAICdashClass* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionClassesClassGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| CDASH Class Identifier | 

### Return type

[**OAICdashClass***](OAICdashClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionClassesGet**
```objc
-(NSURLSessionTask*) mdrCdashVersionClassesGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAICdashProductClasses* output, NSError* error)) handler;
```



Get CDASH Class List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-1; // CDISC Library Product Version

OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi*apiInstance = [[OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi alloc] init];

[apiInstance mdrCdashVersionClassesGetWithVersion:version
          completionHandler: ^(OAICdashProductClasses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionClassesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAICdashProductClasses***](OAICdashProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionDomainsDomainFieldsFieldGet**
```objc
-(NSURLSessionTask*) mdrCdashVersionDomainsDomainFieldsFieldGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    field: (NSString*) field
        completionHandler: (void (^)(OAICdashDomainField* output, NSError* error)) handler;
```



Get CDASH Domain Field

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-1; // CDISC Library Product Version
NSString* domain = DM; // CDASH Domain Identifier
NSString* field = AGE; // CDASH Field Identifier

OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi*apiInstance = [[OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi alloc] init];

[apiInstance mdrCdashVersionDomainsDomainFieldsFieldGetWithVersion:version
              domain:domain
              field:field
          completionHandler: ^(OAICdashDomainField* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionDomainsDomainFieldsFieldGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **domain** | **NSString***| CDASH Domain Identifier | 
 **field** | **NSString***| CDASH Field Identifier | 

### Return type

[**OAICdashDomainField***](OAICdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionDomainsDomainFieldsGet**
```objc
-(NSURLSessionTask*) mdrCdashVersionDomainsDomainFieldsGetWithVersion: (NSString*) version
    domain: (NSString*) domain
        completionHandler: (void (^)(OAICdashDomainFields* output, NSError* error)) handler;
```



Get CDASH Domain Field List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-1; // CDISC Library Product Version
NSString* domain = DM; // CDASH Domain Identifier

OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi*apiInstance = [[OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi alloc] init];

[apiInstance mdrCdashVersionDomainsDomainFieldsGetWithVersion:version
              domain:domain
          completionHandler: ^(OAICdashDomainFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionDomainsDomainFieldsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **domain** | **NSString***| CDASH Domain Identifier | 

### Return type

[**OAICdashDomainFields***](OAICdashDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionDomainsDomainGet**
```objc
-(NSURLSessionTask*) mdrCdashVersionDomainsDomainGetWithVersion: (NSString*) version
    domain: (NSString*) domain
        completionHandler: (void (^)(OAICdashDomain* output, NSError* error)) handler;
```



Get CDASH Domain

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-1; // CDISC Library Product Version
NSString* domain = DM; // CDASH Domain Identifier

OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi*apiInstance = [[OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi alloc] init];

[apiInstance mdrCdashVersionDomainsDomainGetWithVersion:version
              domain:domain
          completionHandler: ^(OAICdashDomain* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionDomainsDomainGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **domain** | **NSString***| CDASH Domain Identifier | 

### Return type

[**OAICdashDomain***](OAICdashDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionDomainsGet**
```objc
-(NSURLSessionTask*) mdrCdashVersionDomainsGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAICdashProductDomains* output, NSError* error)) handler;
```



Get CDASH Domain List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-1; // CDISC Library Product Version

OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi*apiInstance = [[OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi alloc] init];

[apiInstance mdrCdashVersionDomainsGetWithVersion:version
          completionHandler: ^(OAICdashProductDomains* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionDomainsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAICdashProductDomains***](OAICdashProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionGet**
```objc
-(NSURLSessionTask*) mdrCdashVersionGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAICdashProduct* output, NSError* error)) handler;
```



Get CDASH Product

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 1-1; // CDISC Library Product Version

OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi*apiInstance = [[OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi alloc] init];

[apiInstance mdrCdashVersionGetWithVersion:version
          completionHandler: ^(OAICdashProduct* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAICdashProduct***](OAICdashProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCdashClassesClassFieldsFieldGet**
```objc
-(NSURLSessionTask*) mdrRootCdashClassesClassFieldsFieldGetWithClass: (NSString*) _class
    field: (NSString*) field
        completionHandler: (void (^)(OAIRootCdashClassField* output, NSError* error)) handler;
```



Get Root CDASH Class Field

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* _class = Timing; // CDASH Class Identifier
NSString* field = --DAT; // CDASH Field Identifier

OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi*apiInstance = [[OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi alloc] init];

[apiInstance mdrRootCdashClassesClassFieldsFieldGetWithClass:_class
              field:field
          completionHandler: ^(OAIRootCdashClassField* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrRootCdashClassesClassFieldsFieldGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **NSString***| CDASH Class Identifier | 
 **field** | **NSString***| CDASH Field Identifier | 

### Return type

[**OAIRootCdashClassField***](OAIRootCdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCdashDomainsDomainFieldsFieldGet**
```objc
-(NSURLSessionTask*) mdrRootCdashDomainsDomainFieldsFieldGetWithDomain: (NSString*) domain
    field: (NSString*) field
        completionHandler: (void (^)(OAIRootCdashDomainField* output, NSError* error)) handler;
```



Get Root CDASH Domain Field

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* domain = DM; // CDASH Domain Identifier
NSString* field = AGE; // CDASH Field Identifier

OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi*apiInstance = [[OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi alloc] init];

[apiInstance mdrRootCdashDomainsDomainFieldsFieldGetWithDomain:domain
              field:field
          completionHandler: ^(OAIRootCdashDomainField* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrRootCdashDomainsDomainFieldsFieldGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **NSString***| CDASH Domain Identifier | 
 **field** | **NSString***| CDASH Field Identifier | 

### Return type

[**OAIRootCdashDomainField***](OAIRootCdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

