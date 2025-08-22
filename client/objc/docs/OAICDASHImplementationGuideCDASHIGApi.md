# OAICDASHImplementationGuideCDASHIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCdashigVersionClassesClassDomainsGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionclassesclassdomainsget) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | 
[**mdrCdashigVersionClassesClassGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionclassesclassget) | **GET** /mdr/cdashig/{version}/classes/{class} | 
[**mdrCdashigVersionClassesClassScenariosGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionclassesclassscenariosget) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | 
[**mdrCdashigVersionClassesGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionclassesget) | **GET** /mdr/cdashig/{version}/classes | 
[**mdrCdashigVersionDomainsDomainFieldsFieldGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversiondomainsdomainfieldsfieldget) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
[**mdrCdashigVersionDomainsDomainFieldsGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversiondomainsdomainfieldsget) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | 
[**mdrCdashigVersionDomainsDomainGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversiondomainsdomainget) | **GET** /mdr/cdashig/{version}/domains/{domain} | 
[**mdrCdashigVersionDomainsGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversiondomainsget) | **GET** /mdr/cdashig/{version}/domains | 
[**mdrCdashigVersionGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionget) | **GET** /mdr/cdashig/{version} | 
[**mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionscenariosdomainscenariofieldsfieldget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
[**mdrCdashigVersionScenariosDomainScenarioFieldsGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionscenariosdomainscenariofieldsget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
[**mdrCdashigVersionScenariosDomainScenarioGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionscenariosdomainscenarioget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
[**mdrCdashigVersionScenariosGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionscenariosget) | **GET** /mdr/cdashig/{version}/scenarios | 
[**mdrRootCdashigDomainsDomainFieldsFieldGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrrootcdashigdomainsdomainfieldsfieldget) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
[**mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](OAICDASHImplementationGuideCDASHIGApi.md#mdrrootcdashigscenariosdomainscenariofieldsfieldget) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 


# **mdrCdashigVersionClassesClassDomainsGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionClassesClassDomainsGetWithVersion: (NSString*) version
    _class: (NSString*) _class
        completionHandler: (void (^)(OAICdashigClassDomains* output, NSError* error)) handler;
```



Get CDASHIG Class Domain List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version
NSString* _class = Findings; // CDASHIG Class Identifier

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionClassesClassDomainsGetWithVersion:version
              _class:_class
          completionHandler: ^(OAICdashigClassDomains* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionClassesClassDomainsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| CDASHIG Class Identifier | 

### Return type

[**OAICdashigClassDomains***](OAICdashigClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionClassesClassGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionClassesClassGetWithVersion: (NSString*) version
    _class: (NSString*) _class
        completionHandler: (void (^)(OAICdashigClass* output, NSError* error)) handler;
```



Get CDASHIG Class

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version
NSString* _class = Findings; // CDASHIG Class Identifier

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionClassesClassGetWithVersion:version
              _class:_class
          completionHandler: ^(OAICdashigClass* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionClassesClassGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| CDASHIG Class Identifier | 

### Return type

[**OAICdashigClass***](OAICdashigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionClassesClassScenariosGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionClassesClassScenariosGetWithVersion: (NSString*) version
    _class: (NSString*) _class
        completionHandler: (void (^)(OAICdashigClassScenarios* output, NSError* error)) handler;
```



Get CDASHIG Class Scenario List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version
NSString* _class = Findings; // CDASHIG Class Identifier

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionClassesClassScenariosGetWithVersion:version
              _class:_class
          completionHandler: ^(OAICdashigClassScenarios* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionClassesClassScenariosGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **_class** | **NSString***| CDASHIG Class Identifier | 

### Return type

[**OAICdashigClassScenarios***](OAICdashigClassScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionClassesGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionClassesGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAICdashigProductClasses* output, NSError* error)) handler;
```



Get CDASHIG Class List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionClassesGetWithVersion:version
          completionHandler: ^(OAICdashigProductClasses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionClassesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAICdashigProductClasses***](OAICdashigProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionDomainsDomainFieldsFieldGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionDomainsDomainFieldsFieldGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    field: (NSString*) field
        completionHandler: (void (^)(OAICdashigDomainField* output, NSError* error)) handler;
```



Get CDASHIG Domain Field

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version
NSString* domain = VS; // CDASHIG Domain Identifier
NSString* field = VSDAT; // CDASHIG Field Identifier

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionDomainsDomainFieldsFieldGetWithVersion:version
              domain:domain
              field:field
          completionHandler: ^(OAICdashigDomainField* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionDomainsDomainFieldsFieldGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **domain** | **NSString***| CDASHIG Domain Identifier | 
 **field** | **NSString***| CDASHIG Field Identifier | 

### Return type

[**OAICdashigDomainField***](OAICdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionDomainsDomainFieldsGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionDomainsDomainFieldsGetWithVersion: (NSString*) version
    domain: (NSString*) domain
        completionHandler: (void (^)(OAICdashigDomainFields* output, NSError* error)) handler;
```



Get CDASHIG Domain Field List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version
NSString* domain = VS; // CDASHIG Domain Identifier

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionDomainsDomainFieldsGetWithVersion:version
              domain:domain
          completionHandler: ^(OAICdashigDomainFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionDomainsDomainFieldsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **domain** | **NSString***| CDASHIG Domain Identifier | 

### Return type

[**OAICdashigDomainFields***](OAICdashigDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionDomainsDomainGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionDomainsDomainGetWithVersion: (NSString*) version
    domain: (NSString*) domain
        completionHandler: (void (^)(OAICdashigDomain* output, NSError* error)) handler;
```



Get CDASHIG Domain

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version
NSString* domain = VS; // CDASHIG Domain Identifier

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionDomainsDomainGetWithVersion:version
              domain:domain
          completionHandler: ^(OAICdashigDomain* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionDomainsDomainGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **domain** | **NSString***| CDASHIG Domain Identifier | 

### Return type

[**OAICdashigDomain***](OAICdashigDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionDomainsGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionDomainsGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAICdashigProductDomains* output, NSError* error)) handler;
```



Get CDASHIG Domain List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionDomainsGetWithVersion:version
          completionHandler: ^(OAICdashigProductDomains* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionDomainsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAICdashigProductDomains***](OAICdashigProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAICdashigProduct* output, NSError* error)) handler;
```



Get CDASHIG Product

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionGetWithVersion:version
          completionHandler: ^(OAICdashigProduct* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAICdashigProduct***](OAICdashigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    scenario: (NSString*) scenario
    field: (NSString*) field
        completionHandler: (void (^)(OAICdashigScenarioField* output, NSError* error)) handler;
```



Get CDASHIG Scenario Field

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version
NSString* domain = VS; // CDASHIG Domain Identifier
NSString* scenario = Generic; // CDASHIG Scenario Identifier
NSString* field = VSDAT; // CDASHIG Field Identifier

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetWithVersion:version
              domain:domain
              scenario:scenario
              field:field
          completionHandler: ^(OAICdashigScenarioField* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **domain** | **NSString***| CDASHIG Domain Identifier | 
 **scenario** | **NSString***| CDASHIG Scenario Identifier | 
 **field** | **NSString***| CDASHIG Field Identifier | 

### Return type

[**OAICdashigScenarioField***](OAICdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionScenariosDomainScenarioFieldsGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionScenariosDomainScenarioFieldsGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    scenario: (NSString*) scenario
        completionHandler: (void (^)(OAICdashigScenarioFields* output, NSError* error)) handler;
```



Get CDASHIG Scenario Field List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version
NSString* domain = VS; // CDASHIG Domain Identifier
NSString* scenario = HorizontalGeneric; // CDASHIG Scenario Identifier

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionScenariosDomainScenarioFieldsGetWithVersion:version
              domain:domain
              scenario:scenario
          completionHandler: ^(OAICdashigScenarioFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionScenariosDomainScenarioFieldsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **domain** | **NSString***| CDASHIG Domain Identifier | 
 **scenario** | **NSString***| CDASHIG Scenario Identifier | 

### Return type

[**OAICdashigScenarioFields***](OAICdashigScenarioFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionScenariosDomainScenarioGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionScenariosDomainScenarioGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    scenario: (NSString*) scenario
        completionHandler: (void (^)(OAICdashigScenario* output, NSError* error)) handler;
```



Get CDASHIG Scenario

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version
NSString* domain = VS; // CDASHIG Domain Identifier
NSString* scenario = HorizontalGeneric; // CDASHIG Scenario Identifier

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionScenariosDomainScenarioGetWithVersion:version
              domain:domain
              scenario:scenario
          completionHandler: ^(OAICdashigScenario* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionScenariosDomainScenarioGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 
 **domain** | **NSString***| CDASHIG Domain Identifier | 
 **scenario** | **NSString***| CDASHIG Scenario Identifier | 

### Return type

[**OAICdashigScenario***](OAICdashigScenario.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionScenariosGet**
```objc
-(NSURLSessionTask*) mdrCdashigVersionScenariosGetWithVersion: (NSString*) version
        completionHandler: (void (^)(OAICdashigProductScenarios* output, NSError* error)) handler;
```



Get CDASHIG Scenario List

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* version = 2-1; // CDISC Library Product Version

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrCdashigVersionScenariosGetWithVersion:version
          completionHandler: ^(OAICdashigProductScenarios* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrCdashigVersionScenariosGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **NSString***| CDISC Library Product Version | 

### Return type

[**OAICdashigProductScenarios***](OAICdashigProductScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCdashigDomainsDomainFieldsFieldGet**
```objc
-(NSURLSessionTask*) mdrRootCdashigDomainsDomainFieldsFieldGetWithDomain: (NSString*) domain
    field: (NSString*) field
        completionHandler: (void (^)(OAIRootCdashigDomainField* output, NSError* error)) handler;
```



Get Root CDASHIG Domain Field

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* domain = VS; // CDASHIG Domain Identifier
NSString* field = VSDAT; // CDASHIG Field Identifier

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrRootCdashigDomainsDomainFieldsFieldGetWithDomain:domain
              field:field
          completionHandler: ^(OAIRootCdashigDomainField* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrRootCdashigDomainsDomainFieldsFieldGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **NSString***| CDASHIG Domain Identifier | 
 **field** | **NSString***| CDASHIG Field Identifier | 

### Return type

[**OAIRootCdashigDomainField***](OAIRootCdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**
```objc
-(NSURLSessionTask*) mdrRootCdashigScenariosDomainScenarioFieldsFieldGetWithDomain: (NSString*) domain
    scenario: (NSString*) scenario
    field: (NSString*) field
        completionHandler: (void (^)(OAIRootCdashigScenarioField* output, NSError* error)) handler;
```



Get Root CDASHIG Scenario Field

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* domain = VS; // CDASHIG Domain Identifier
NSString* scenario = Generic; // CDASHIG Scenario Identifier
NSString* field = VSDAT; // CDASHIG Field Identifier

OAICDASHImplementationGuideCDASHIGApi*apiInstance = [[OAICDASHImplementationGuideCDASHIGApi alloc] init];

[apiInstance mdrRootCdashigScenariosDomainScenarioFieldsFieldGetWithDomain:domain
              scenario:scenario
              field:field
          completionHandler: ^(OAIRootCdashigScenarioField* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICDASHImplementationGuideCDASHIGApi->mdrRootCdashigScenariosDomainScenarioFieldsFieldGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **NSString***| CDASHIG Domain Identifier | 
 **scenario** | **NSString***| CDASHIG Scenario Identifier | 
 **field** | **NSString***| CDASHIG Field Identifier | 

### Return type

[**OAIRootCdashigScenarioField***](OAIRootCdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

