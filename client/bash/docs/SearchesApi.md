# SearchesApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrSearchGet**](SearchesApi.md#mdrSearchGet) | **GET** /mdr/search | 
[**mdrSearchScopesGet**](SearchesApi.md#mdrSearchScopesGet) | **GET** /mdr/search/scopes | 
[**mdrSearchScopesScopeGet**](SearchesApi.md#mdrSearchScopesScopeGet) | **GET** /mdr/search/scopes/{scope} | 



## mdrSearchGet



Get Search Results Across CDISC Library

### Example

```bash
 mdrSearchGet  q=value  highlight=value  start=value  pageSize=value  class=value  codelist=value  conceptId=value  core=value  dataStructure=value  datasetStructure=value  definition=value  description=value  domain=value  effectiveDate=value  extensible=value  href=value  label=value  measureType=value  name=value  preferredTerm=value  product=value  productGroup=value  registrationStatus=value  roleDescription=value  sdtmTarget=value  simpleDatatype=value  submissionValue=value  synonyms=value  type=value  uiHref=value  valueDomain=value  variableSet=value  version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string** | Search Term Expression | [default to null]
 **highlight** | **string** | Search Highlight Expression | [optional] [default to null]
 **start** | **integer** | Initial Search Result Index | [optional] [default to 0]
 **pageSize** | **integer** | Number of Search Results to Return | [optional] [default to 100]
 **class** | **string** | Limit Search by Setting Scope to Class | [optional] [default to null]
 **codelist** | **string** | Limit Search by Setting Scope to Codelist | [optional] [default to null]
 **conceptId** | **string** | Limit Search by Setting Scope to Concept ID | [optional] [default to null]
 **core** | **string** | Limit Search by Setting Scope to Core | [optional] [default to null]
 **dataStructure** | **string** | Limit Search by Setting Scope to Data Structure | [optional] [default to null]
 **datasetStructure** | **string** | Limit Search by Setting Scope to Dataset Structure | [optional] [default to null]
 **definition** | **string** | Limit Search by Setting Scope to Definition | [optional] [default to null]
 **description** | **string** | Limit Search by Setting Scope to Description | [optional] [default to null]
 **domain** | **string** | Limit Search by Setting Scope to Domain | [optional] [default to null]
 **effectiveDate** | **string** | Limit Search by Setting Scope to Effective Date | [optional] [default to null]
 **extensible** | **string** | Limit Search by Setting Scope to Extensible | [optional] [default to null]
 **href** | **string** | Limit Search by Setting Scope to Href | [optional] [default to null]
 **label** | **string** | Limit Search by Setting Scope to Label | [optional] [default to null]
 **measureType** | **string** | SLimit Search by Setting Scope to Measure Type | [optional] [default to null]
 **name** | **string** | Limit Search by Setting Scope to Name | [optional] [default to null]
 **preferredTerm** | **string** | Limit Search by Setting Scope to Preferred Term | [optional] [default to null]
 **product** | **string** | Limit Search by Setting Scope to Product | [optional] [default to null]
 **productGroup** | **string** | Limit Search by Setting Scope to Product Group | [optional] [default to null]
 **registrationStatus** | **string** | Limit Search by Setting Scope to Registration Status | [optional] [default to null]
 **roleDescription** | **string** | Limit Search by Setting Scope to Role Description | [optional] [default to null]
 **sdtmTarget** | **string** | Limit Search by Setting Scope to SDTM Target | [optional] [default to null]
 **simpleDatatype** | **string** | Limit Search by Setting Scope to Simple Datatype | [optional] [default to null]
 **submissionValue** | **string** | Limit Search by Setting Scope to Submission Value | [optional] [default to null]
 **synonyms** | **string** | Limit Search by Setting Scope to Synonyms | [optional] [default to null]
 **type** | **string** | Limit Search by Setting Scope to Type | [optional] [default to null]
 **uiHref** | **string** | Limit Search by Setting Scope to UI Href | [optional] [default to null]
 **valueDomain** | **string** | Limit Search by Setting Scope to Value Domain | [optional] [default to null]
 **variableSet** | **string** | Limit Search by Setting Scope to Variable Set | [optional] [default to null]
 **version** | **string** | Limit Search by Setting Scope to Version | [optional] [default to null]

### Return type

[**DefaultSearchResponse**](DefaultSearchResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSearchScopesGet



Get Search Results Across CDISC Library

### Example

```bash
 mdrSearchScopesGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MdrSearchScopesGet200Response**](MdrSearchScopesGet200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSearchScopesScopeGet



Get Search Results Limited to Scope

### Example

```bash
 mdrSearchScopesScopeGet scope=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | [**DefaultSearchScopes**](.md) | Search Scope | [default to null]

### Return type

[**ScopeValues**](ScopeValues.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

