# SearchesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrSearchGet**](SearchesApi.md#mdrSearchGet) | **GET** /mdr/search | 
[**mdrSearchScopesGet**](SearchesApi.md#mdrSearchScopesGet) | **GET** /mdr/search/scopes | 
[**mdrSearchScopesScopeGet**](SearchesApi.md#mdrSearchScopesScopeGet) | **GET** /mdr/search/scopes/{scope} | 



## mdrSearchGet

> DefaultSearchResponse mdrSearchGet(q, highlight, start, pageSize, _class, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version)



Get Search Results Across CDISC Library

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchesApi;

SearchesApi apiInstance = new SearchesApi();
String q = null; // String | Search Term Expression
String highlight = null; // String | Search Highlight Expression
BigDecimal start = 0; // BigDecimal | Initial Search Result Index
BigDecimal pageSize = 100; // BigDecimal | Number of Search Results to Return
String _class = null; // String | Limit Search by Setting Scope to Class
String codelist = null; // String | Limit Search by Setting Scope to Codelist
String conceptId = null; // String | Limit Search by Setting Scope to Concept ID
String core = null; // String | Limit Search by Setting Scope to Core
String dataStructure = null; // String | Limit Search by Setting Scope to Data Structure
String datasetStructure = null; // String | Limit Search by Setting Scope to Dataset Structure
String definition = null; // String | Limit Search by Setting Scope to Definition
String description = null; // String | Limit Search by Setting Scope to Description
String domain = null; // String | Limit Search by Setting Scope to Domain
String effectiveDate = null; // String | Limit Search by Setting Scope to Effective Date
String extensible = null; // String | Limit Search by Setting Scope to Extensible
String href = null; // String | Limit Search by Setting Scope to Href
String label = null; // String | Limit Search by Setting Scope to Label
String measureType = null; // String | SLimit Search by Setting Scope to Measure Type
String name = null; // String | Limit Search by Setting Scope to Name
String preferredTerm = null; // String | Limit Search by Setting Scope to Preferred Term
String product = null; // String | Limit Search by Setting Scope to Product
String productGroup = null; // String | Limit Search by Setting Scope to Product Group
String registrationStatus = null; // String | Limit Search by Setting Scope to Registration Status
String roleDescription = null; // String | Limit Search by Setting Scope to Role Description
String sdtmTarget = null; // String | Limit Search by Setting Scope to SDTM Target
String simpleDatatype = null; // String | Limit Search by Setting Scope to Simple Datatype
String submissionValue = null; // String | Limit Search by Setting Scope to Submission Value
String synonyms = null; // String | Limit Search by Setting Scope to Synonyms
String type = null; // String | Limit Search by Setting Scope to Type
String uiHref = null; // String | Limit Search by Setting Scope to UI Href
String valueDomain = null; // String | Limit Search by Setting Scope to Value Domain
String variableSet = null; // String | Limit Search by Setting Scope to Variable Set
String version = null; // String | Limit Search by Setting Scope to Version
try {
    DefaultSearchResponse result = apiInstance.mdrSearchGet(q, highlight, start, pageSize, _class, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchesApi#mdrSearchGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search Term Expression | [default to null]
 **highlight** | **String**| Search Highlight Expression | [optional] [default to null]
 **start** | **BigDecimal**| Initial Search Result Index | [optional] [default to 0]
 **pageSize** | **BigDecimal**| Number of Search Results to Return | [optional] [default to 100]
 **_class** | **String**| Limit Search by Setting Scope to Class | [optional] [default to null]
 **codelist** | **String**| Limit Search by Setting Scope to Codelist | [optional] [default to null]
 **conceptId** | **String**| Limit Search by Setting Scope to Concept ID | [optional] [default to null]
 **core** | **String**| Limit Search by Setting Scope to Core | [optional] [default to null]
 **dataStructure** | **String**| Limit Search by Setting Scope to Data Structure | [optional] [default to null]
 **datasetStructure** | **String**| Limit Search by Setting Scope to Dataset Structure | [optional] [default to null]
 **definition** | **String**| Limit Search by Setting Scope to Definition | [optional] [default to null]
 **description** | **String**| Limit Search by Setting Scope to Description | [optional] [default to null]
 **domain** | **String**| Limit Search by Setting Scope to Domain | [optional] [default to null]
 **effectiveDate** | **String**| Limit Search by Setting Scope to Effective Date | [optional] [default to null]
 **extensible** | **String**| Limit Search by Setting Scope to Extensible | [optional] [default to null]
 **href** | **String**| Limit Search by Setting Scope to Href | [optional] [default to null]
 **label** | **String**| Limit Search by Setting Scope to Label | [optional] [default to null]
 **measureType** | **String**| SLimit Search by Setting Scope to Measure Type | [optional] [default to null]
 **name** | **String**| Limit Search by Setting Scope to Name | [optional] [default to null]
 **preferredTerm** | **String**| Limit Search by Setting Scope to Preferred Term | [optional] [default to null]
 **product** | **String**| Limit Search by Setting Scope to Product | [optional] [default to null]
 **productGroup** | **String**| Limit Search by Setting Scope to Product Group | [optional] [default to null]
 **registrationStatus** | **String**| Limit Search by Setting Scope to Registration Status | [optional] [default to null]
 **roleDescription** | **String**| Limit Search by Setting Scope to Role Description | [optional] [default to null]
 **sdtmTarget** | **String**| Limit Search by Setting Scope to SDTM Target | [optional] [default to null]
 **simpleDatatype** | **String**| Limit Search by Setting Scope to Simple Datatype | [optional] [default to null]
 **submissionValue** | **String**| Limit Search by Setting Scope to Submission Value | [optional] [default to null]
 **synonyms** | **String**| Limit Search by Setting Scope to Synonyms | [optional] [default to null]
 **type** | **String**| Limit Search by Setting Scope to Type | [optional] [default to null]
 **uiHref** | **String**| Limit Search by Setting Scope to UI Href | [optional] [default to null]
 **valueDomain** | **String**| Limit Search by Setting Scope to Value Domain | [optional] [default to null]
 **variableSet** | **String**| Limit Search by Setting Scope to Variable Set | [optional] [default to null]
 **version** | **String**| Limit Search by Setting Scope to Version | [optional] [default to null]

### Return type

[**DefaultSearchResponse**](DefaultSearchResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mdrSearchScopesGet

> MdrSearchScopesGet200Response mdrSearchScopesGet()



Get Search Results Across CDISC Library

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchesApi;

SearchesApi apiInstance = new SearchesApi();
try {
    MdrSearchScopesGet200Response result = apiInstance.mdrSearchScopesGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchesApi#mdrSearchScopesGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MdrSearchScopesGet200Response**](MdrSearchScopesGet200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mdrSearchScopesScopeGet

> ScopeValues mdrSearchScopesScopeGet(scope)



Get Search Results Limited to Scope

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchesApi;

SearchesApi apiInstance = new SearchesApi();
DefaultSearchScopes scope = null; // DefaultSearchScopes | Search Scope
try {
    ScopeValues result = apiInstance.mdrSearchScopesScopeGet(scope);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchesApi#mdrSearchScopesScopeGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | [**DefaultSearchScopes**](.md)| Search Scope | [default to null] [enum: class, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version]

### Return type

[**ScopeValues**](ScopeValues.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

