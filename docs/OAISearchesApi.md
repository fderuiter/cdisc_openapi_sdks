# OAISearchesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrSearchGet**](OAISearchesApi.md#mdrsearchget) | **GET** /mdr/search | 
[**mdrSearchScopesGet**](OAISearchesApi.md#mdrsearchscopesget) | **GET** /mdr/search/scopes | 
[**mdrSearchScopesScopeGet**](OAISearchesApi.md#mdrsearchscopesscopeget) | **GET** /mdr/search/scopes/{scope} | 


# **mdrSearchGet**
```objc
-(NSURLSessionTask*) mdrSearchGetWithQ: (NSString*) q
    highlight: (NSString*) highlight
    start: (NSNumber*) start
    pageSize: (NSNumber*) pageSize
    _class: (NSString*) _class
    codelist: (NSString*) codelist
    conceptId: (NSString*) conceptId
    core: (NSString*) core
    dataStructure: (NSString*) dataStructure
    datasetStructure: (NSString*) datasetStructure
    definition: (NSString*) definition
    _description: (NSString*) _description
    domain: (NSString*) domain
    effectiveDate: (NSString*) effectiveDate
    extensible: (NSString*) extensible
    href: (NSString*) href
    label: (NSString*) label
    measureType: (NSString*) measureType
    name: (NSString*) name
    preferredTerm: (NSString*) preferredTerm
    product: (NSString*) product
    productGroup: (NSString*) productGroup
    registrationStatus: (NSString*) registrationStatus
    roleDescription: (NSString*) roleDescription
    sdtmTarget: (NSString*) sdtmTarget
    simpleDatatype: (NSString*) simpleDatatype
    submissionValue: (NSString*) submissionValue
    synonyms: (NSString*) synonyms
    type: (NSString*) type
    uiHref: (NSString*) uiHref
    valueDomain: (NSString*) valueDomain
    variableSet: (NSString*) variableSet
    version: (NSString*) version
        completionHandler: (void (^)(OAIDefaultSearchResponse* output, NSError* error)) handler;
```



Get Search Results Across CDISC Library

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* q = @"q_example"; // Search Term Expression
NSString* highlight = @"highlight_example"; // Search Highlight Expression (optional)
NSNumber* start = @0; // Initial Search Result Index (optional) (default to @0)
NSNumber* pageSize = @100; // Number of Search Results to Return (optional) (default to @100)
NSString* _class = @"_class_example"; // Limit Search by Setting Scope to Class (optional)
NSString* codelist = @"codelist_example"; // Limit Search by Setting Scope to Codelist (optional)
NSString* conceptId = @"conceptId_example"; // Limit Search by Setting Scope to Concept ID (optional)
NSString* core = @"core_example"; // Limit Search by Setting Scope to Core (optional)
NSString* dataStructure = @"dataStructure_example"; // Limit Search by Setting Scope to Data Structure (optional)
NSString* datasetStructure = @"datasetStructure_example"; // Limit Search by Setting Scope to Dataset Structure (optional)
NSString* definition = @"definition_example"; // Limit Search by Setting Scope to Definition (optional)
NSString* _description = @"_description_example"; // Limit Search by Setting Scope to Description (optional)
NSString* domain = @"domain_example"; // Limit Search by Setting Scope to Domain (optional)
NSString* effectiveDate = @"effectiveDate_example"; // Limit Search by Setting Scope to Effective Date (optional)
NSString* extensible = @"extensible_example"; // Limit Search by Setting Scope to Extensible (optional)
NSString* href = @"href_example"; // Limit Search by Setting Scope to Href (optional)
NSString* label = @"label_example"; // Limit Search by Setting Scope to Label (optional)
NSString* measureType = @"measureType_example"; // SLimit Search by Setting Scope to Measure Type (optional)
NSString* name = @"name_example"; // Limit Search by Setting Scope to Name (optional)
NSString* preferredTerm = @"preferredTerm_example"; // Limit Search by Setting Scope to Preferred Term (optional)
NSString* product = @"product_example"; // Limit Search by Setting Scope to Product (optional)
NSString* productGroup = @"productGroup_example"; // Limit Search by Setting Scope to Product Group (optional)
NSString* registrationStatus = @"registrationStatus_example"; // Limit Search by Setting Scope to Registration Status (optional)
NSString* roleDescription = @"roleDescription_example"; // Limit Search by Setting Scope to Role Description (optional)
NSString* sdtmTarget = @"sdtmTarget_example"; // Limit Search by Setting Scope to SDTM Target (optional)
NSString* simpleDatatype = @"simpleDatatype_example"; // Limit Search by Setting Scope to Simple Datatype (optional)
NSString* submissionValue = @"submissionValue_example"; // Limit Search by Setting Scope to Submission Value (optional)
NSString* synonyms = @"synonyms_example"; // Limit Search by Setting Scope to Synonyms (optional)
NSString* type = @"type_example"; // Limit Search by Setting Scope to Type (optional)
NSString* uiHref = @"uiHref_example"; // Limit Search by Setting Scope to UI Href (optional)
NSString* valueDomain = @"valueDomain_example"; // Limit Search by Setting Scope to Value Domain (optional)
NSString* variableSet = @"variableSet_example"; // Limit Search by Setting Scope to Variable Set (optional)
NSString* version = @"version_example"; // Limit Search by Setting Scope to Version (optional)

OAISearchesApi*apiInstance = [[OAISearchesApi alloc] init];

[apiInstance mdrSearchGetWithQ:q
              highlight:highlight
              start:start
              pageSize:pageSize
              _class:_class
              codelist:codelist
              conceptId:conceptId
              core:core
              dataStructure:dataStructure
              datasetStructure:datasetStructure
              definition:definition
              _description:_description
              domain:domain
              effectiveDate:effectiveDate
              extensible:extensible
              href:href
              label:label
              measureType:measureType
              name:name
              preferredTerm:preferredTerm
              product:product
              productGroup:productGroup
              registrationStatus:registrationStatus
              roleDescription:roleDescription
              sdtmTarget:sdtmTarget
              simpleDatatype:simpleDatatype
              submissionValue:submissionValue
              synonyms:synonyms
              type:type
              uiHref:uiHref
              valueDomain:valueDomain
              variableSet:variableSet
              version:version
          completionHandler: ^(OAIDefaultSearchResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISearchesApi->mdrSearchGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| Search Term Expression | 
 **highlight** | **NSString***| Search Highlight Expression | [optional] 
 **start** | **NSNumber***| Initial Search Result Index | [optional] [default to @0]
 **pageSize** | **NSNumber***| Number of Search Results to Return | [optional] [default to @100]
 **_class** | **NSString***| Limit Search by Setting Scope to Class | [optional] 
 **codelist** | **NSString***| Limit Search by Setting Scope to Codelist | [optional] 
 **conceptId** | **NSString***| Limit Search by Setting Scope to Concept ID | [optional] 
 **core** | **NSString***| Limit Search by Setting Scope to Core | [optional] 
 **dataStructure** | **NSString***| Limit Search by Setting Scope to Data Structure | [optional] 
 **datasetStructure** | **NSString***| Limit Search by Setting Scope to Dataset Structure | [optional] 
 **definition** | **NSString***| Limit Search by Setting Scope to Definition | [optional] 
 **_description** | **NSString***| Limit Search by Setting Scope to Description | [optional] 
 **domain** | **NSString***| Limit Search by Setting Scope to Domain | [optional] 
 **effectiveDate** | **NSString***| Limit Search by Setting Scope to Effective Date | [optional] 
 **extensible** | **NSString***| Limit Search by Setting Scope to Extensible | [optional] 
 **href** | **NSString***| Limit Search by Setting Scope to Href | [optional] 
 **label** | **NSString***| Limit Search by Setting Scope to Label | [optional] 
 **measureType** | **NSString***| SLimit Search by Setting Scope to Measure Type | [optional] 
 **name** | **NSString***| Limit Search by Setting Scope to Name | [optional] 
 **preferredTerm** | **NSString***| Limit Search by Setting Scope to Preferred Term | [optional] 
 **product** | **NSString***| Limit Search by Setting Scope to Product | [optional] 
 **productGroup** | **NSString***| Limit Search by Setting Scope to Product Group | [optional] 
 **registrationStatus** | **NSString***| Limit Search by Setting Scope to Registration Status | [optional] 
 **roleDescription** | **NSString***| Limit Search by Setting Scope to Role Description | [optional] 
 **sdtmTarget** | **NSString***| Limit Search by Setting Scope to SDTM Target | [optional] 
 **simpleDatatype** | **NSString***| Limit Search by Setting Scope to Simple Datatype | [optional] 
 **submissionValue** | **NSString***| Limit Search by Setting Scope to Submission Value | [optional] 
 **synonyms** | **NSString***| Limit Search by Setting Scope to Synonyms | [optional] 
 **type** | **NSString***| Limit Search by Setting Scope to Type | [optional] 
 **uiHref** | **NSString***| Limit Search by Setting Scope to UI Href | [optional] 
 **valueDomain** | **NSString***| Limit Search by Setting Scope to Value Domain | [optional] 
 **variableSet** | **NSString***| Limit Search by Setting Scope to Variable Set | [optional] 
 **version** | **NSString***| Limit Search by Setting Scope to Version | [optional] 

### Return type

[**OAIDefaultSearchResponse***](OAIDefaultSearchResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSearchScopesGet**
```objc
-(NSURLSessionTask*) mdrSearchScopesGetWithCompletionHandler: 
        (void (^)(OAIMdrSearchScopesGet200Response* output, NSError* error)) handler;
```



Get Search Results Across CDISC Library

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAISearchesApi*apiInstance = [[OAISearchesApi alloc] init];

[apiInstance mdrSearchScopesGetWithCompletionHandler: 
          ^(OAIMdrSearchScopesGet200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISearchesApi->mdrSearchScopesGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIMdrSearchScopesGet200Response***](OAIMdrSearchScopesGet200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSearchScopesScopeGet**
```objc
-(NSURLSessionTask*) mdrSearchScopesScopeGetWithScope: (OAIDefaultSearchScopes) scope
        completionHandler: (void (^)(OAIScopeValues* output, NSError* error)) handler;
```



Get Search Results Limited to Scope

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: basicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


OAIDefaultSearchScopes scope = [[OAIDefaultSearchScopes alloc] init]; // Search Scope

OAISearchesApi*apiInstance = [[OAISearchesApi alloc] init];

[apiInstance mdrSearchScopesScopeGetWithScope:scope
          completionHandler: ^(OAIScopeValues* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISearchesApi->mdrSearchScopesScopeGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | [**OAIDefaultSearchScopes**](.md)| Search Scope | 

### Return type

[**OAIScopeValues***](OAIScopeValues.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

