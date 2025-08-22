# SearchesAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SearchesAPI_mdrSearchGet**](SearchesAPI.md#SearchesAPI_mdrSearchGet) | **GET** /mdr/search | 
[**SearchesAPI_mdrSearchScopesGet**](SearchesAPI.md#SearchesAPI_mdrSearchScopesGet) | **GET** /mdr/search/scopes | 
[**SearchesAPI_mdrSearchScopesScopeGet**](SearchesAPI.md#SearchesAPI_mdrSearchScopesScopeGet) | **GET** /mdr/search/scopes/{scope} | 


# **SearchesAPI_mdrSearchGet**
```c
// Get Search Results Across CDISC Library
//
default_search_response_t* SearchesAPI_mdrSearchGet(apiClient_t *apiClient, char *q, char *highlight, double start, double pageSize, char *_class, char *codelist, char *conceptId, char *core, char *dataStructure, char *datasetStructure, char *definition, char *description, char *domain, char *effectiveDate, char *extensible, char *href, char *label, char *measureType, char *name, char *preferredTerm, char *product, char *productGroup, char *registrationStatus, char *roleDescription, char *sdtmTarget, char *simpleDatatype, char *submissionValue, char *synonyms, char *type, char *uiHref, char *valueDomain, char *variableSet, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**q** | **char \*** | Search Term Expression | 
**highlight** | **char \*** | Search Highlight Expression | [optional] 
**start** | **double** | Initial Search Result Index | [optional] [default to 0]
**pageSize** | **double** | Number of Search Results to Return | [optional] [default to 100]
**_class** | **char \*** | Limit Search by Setting Scope to Class | [optional] 
**codelist** | **char \*** | Limit Search by Setting Scope to Codelist | [optional] 
**conceptId** | **char \*** | Limit Search by Setting Scope to Concept ID | [optional] 
**core** | **char \*** | Limit Search by Setting Scope to Core | [optional] 
**dataStructure** | **char \*** | Limit Search by Setting Scope to Data Structure | [optional] 
**datasetStructure** | **char \*** | Limit Search by Setting Scope to Dataset Structure | [optional] 
**definition** | **char \*** | Limit Search by Setting Scope to Definition | [optional] 
**description** | **char \*** | Limit Search by Setting Scope to Description | [optional] 
**domain** | **char \*** | Limit Search by Setting Scope to Domain | [optional] 
**effectiveDate** | **char \*** | Limit Search by Setting Scope to Effective Date | [optional] 
**extensible** | **char \*** | Limit Search by Setting Scope to Extensible | [optional] 
**href** | **char \*** | Limit Search by Setting Scope to Href | [optional] 
**label** | **char \*** | Limit Search by Setting Scope to Label | [optional] 
**measureType** | **char \*** | SLimit Search by Setting Scope to Measure Type | [optional] 
**name** | **char \*** | Limit Search by Setting Scope to Name | [optional] 
**preferredTerm** | **char \*** | Limit Search by Setting Scope to Preferred Term | [optional] 
**product** | **char \*** | Limit Search by Setting Scope to Product | [optional] 
**productGroup** | **char \*** | Limit Search by Setting Scope to Product Group | [optional] 
**registrationStatus** | **char \*** | Limit Search by Setting Scope to Registration Status | [optional] 
**roleDescription** | **char \*** | Limit Search by Setting Scope to Role Description | [optional] 
**sdtmTarget** | **char \*** | Limit Search by Setting Scope to SDTM Target | [optional] 
**simpleDatatype** | **char \*** | Limit Search by Setting Scope to Simple Datatype | [optional] 
**submissionValue** | **char \*** | Limit Search by Setting Scope to Submission Value | [optional] 
**synonyms** | **char \*** | Limit Search by Setting Scope to Synonyms | [optional] 
**type** | **char \*** | Limit Search by Setting Scope to Type | [optional] 
**uiHref** | **char \*** | Limit Search by Setting Scope to UI Href | [optional] 
**valueDomain** | **char \*** | Limit Search by Setting Scope to Value Domain | [optional] 
**variableSet** | **char \*** | Limit Search by Setting Scope to Variable Set | [optional] 
**version** | **char \*** | Limit Search by Setting Scope to Version | [optional] 

### Return type

[default_search_response_t](default_search_response.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SearchesAPI_mdrSearchScopesGet**
```c
// Get Search Results Across CDISC Library
//
_mdr_search_scopes_get_200_response_t* SearchesAPI_mdrSearchScopesGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[_mdr_search_scopes_get_200_response_t](_mdr_search_scopes_get_200_response.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SearchesAPI_mdrSearchScopesScopeGet**
```c
// Get Search Results Limited to Scope
//
scope_values_t* SearchesAPI_mdrSearchScopesScopeGet(apiClient_t *apiClient, default_search_scopes_e scope);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**scope** | **default_search_scopes_e** | Search Scope | 

### Return type

[scope_values_t](scope_values.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

