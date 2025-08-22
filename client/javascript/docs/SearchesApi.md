# CdiscLibraryApi.SearchesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrSearchGet**](SearchesApi.md#mdrSearchGet) | **GET** /mdr/search | 
[**mdrSearchScopesGet**](SearchesApi.md#mdrSearchScopesGet) | **GET** /mdr/search/scopes | 
[**mdrSearchScopesScopeGet**](SearchesApi.md#mdrSearchScopesScopeGet) | **GET** /mdr/search/scopes/{scope} | 



## mdrSearchGet

> DefaultSearchResponse mdrSearchGet(q, opts)



Get Search Results Across CDISC Library

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SearchesApi();
let q = "q_example"; // String | Search Term Expression
let opts = {
  'highlight': "highlight_example", // String | Search Highlight Expression
  'start': 0, // Number | Initial Search Result Index
  'pageSize': 100, // Number | Number of Search Results to Return
  '_class': "_class_example", // String | Limit Search by Setting Scope to Class
  'codelist': "codelist_example", // String | Limit Search by Setting Scope to Codelist
  'conceptId': "conceptId_example", // String | Limit Search by Setting Scope to Concept ID
  'core': "core_example", // String | Limit Search by Setting Scope to Core
  'dataStructure': "dataStructure_example", // String | Limit Search by Setting Scope to Data Structure
  'datasetStructure': "datasetStructure_example", // String | Limit Search by Setting Scope to Dataset Structure
  'definition': "definition_example", // String | Limit Search by Setting Scope to Definition
  'description': "description_example", // String | Limit Search by Setting Scope to Description
  'domain': "domain_example", // String | Limit Search by Setting Scope to Domain
  'effectiveDate': "effectiveDate_example", // String | Limit Search by Setting Scope to Effective Date
  'extensible': "extensible_example", // String | Limit Search by Setting Scope to Extensible
  'href': "href_example", // String | Limit Search by Setting Scope to Href
  'label': "label_example", // String | Limit Search by Setting Scope to Label
  'measureType': "measureType_example", // String | SLimit Search by Setting Scope to Measure Type
  'name': "name_example", // String | Limit Search by Setting Scope to Name
  'preferredTerm': "preferredTerm_example", // String | Limit Search by Setting Scope to Preferred Term
  'product': "product_example", // String | Limit Search by Setting Scope to Product
  'productGroup': "productGroup_example", // String | Limit Search by Setting Scope to Product Group
  'registrationStatus': "registrationStatus_example", // String | Limit Search by Setting Scope to Registration Status
  'roleDescription': "roleDescription_example", // String | Limit Search by Setting Scope to Role Description
  'sdtmTarget': "sdtmTarget_example", // String | Limit Search by Setting Scope to SDTM Target
  'simpleDatatype': "simpleDatatype_example", // String | Limit Search by Setting Scope to Simple Datatype
  'submissionValue': "submissionValue_example", // String | Limit Search by Setting Scope to Submission Value
  'synonyms': "synonyms_example", // String | Limit Search by Setting Scope to Synonyms
  'type': "type_example", // String | Limit Search by Setting Scope to Type
  'uiHref': "uiHref_example", // String | Limit Search by Setting Scope to UI Href
  'valueDomain': "valueDomain_example", // String | Limit Search by Setting Scope to Value Domain
  'variableSet': "variableSet_example", // String | Limit Search by Setting Scope to Variable Set
  'version': "version_example" // String | Limit Search by Setting Scope to Version
};
apiInstance.mdrSearchGet(q, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search Term Expression | 
 **highlight** | **String**| Search Highlight Expression | [optional] 
 **start** | **Number**| Initial Search Result Index | [optional] [default to 0]
 **pageSize** | **Number**| Number of Search Results to Return | [optional] [default to 100]
 **_class** | **String**| Limit Search by Setting Scope to Class | [optional] 
 **codelist** | **String**| Limit Search by Setting Scope to Codelist | [optional] 
 **conceptId** | **String**| Limit Search by Setting Scope to Concept ID | [optional] 
 **core** | **String**| Limit Search by Setting Scope to Core | [optional] 
 **dataStructure** | **String**| Limit Search by Setting Scope to Data Structure | [optional] 
 **datasetStructure** | **String**| Limit Search by Setting Scope to Dataset Structure | [optional] 
 **definition** | **String**| Limit Search by Setting Scope to Definition | [optional] 
 **description** | **String**| Limit Search by Setting Scope to Description | [optional] 
 **domain** | **String**| Limit Search by Setting Scope to Domain | [optional] 
 **effectiveDate** | **String**| Limit Search by Setting Scope to Effective Date | [optional] 
 **extensible** | **String**| Limit Search by Setting Scope to Extensible | [optional] 
 **href** | **String**| Limit Search by Setting Scope to Href | [optional] 
 **label** | **String**| Limit Search by Setting Scope to Label | [optional] 
 **measureType** | **String**| SLimit Search by Setting Scope to Measure Type | [optional] 
 **name** | **String**| Limit Search by Setting Scope to Name | [optional] 
 **preferredTerm** | **String**| Limit Search by Setting Scope to Preferred Term | [optional] 
 **product** | **String**| Limit Search by Setting Scope to Product | [optional] 
 **productGroup** | **String**| Limit Search by Setting Scope to Product Group | [optional] 
 **registrationStatus** | **String**| Limit Search by Setting Scope to Registration Status | [optional] 
 **roleDescription** | **String**| Limit Search by Setting Scope to Role Description | [optional] 
 **sdtmTarget** | **String**| Limit Search by Setting Scope to SDTM Target | [optional] 
 **simpleDatatype** | **String**| Limit Search by Setting Scope to Simple Datatype | [optional] 
 **submissionValue** | **String**| Limit Search by Setting Scope to Submission Value | [optional] 
 **synonyms** | **String**| Limit Search by Setting Scope to Synonyms | [optional] 
 **type** | **String**| Limit Search by Setting Scope to Type | [optional] 
 **uiHref** | **String**| Limit Search by Setting Scope to UI Href | [optional] 
 **valueDomain** | **String**| Limit Search by Setting Scope to Value Domain | [optional] 
 **variableSet** | **String**| Limit Search by Setting Scope to Variable Set | [optional] 
 **version** | **String**| Limit Search by Setting Scope to Version | [optional] 

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

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SearchesApi();
apiInstance.mdrSearchScopesGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SearchesApi();
let scope = new CdiscLibraryApi.DefaultSearchScopes(); // DefaultSearchScopes | Search Scope
apiInstance.mdrSearchScopesScopeGet(scope, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | [**DefaultSearchScopes**](.md)| Search Scope | 

### Return type

[**ScopeValues**](ScopeValues.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

