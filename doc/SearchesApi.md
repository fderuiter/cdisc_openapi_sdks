# openapi.api.SearchesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrSearchGet**](SearchesApi.md#mdrsearchget) | **GET** /mdr/search | 
[**mdrSearchScopesGet**](SearchesApi.md#mdrsearchscopesget) | **GET** /mdr/search/scopes | 
[**mdrSearchScopesScopeGet**](SearchesApi.md#mdrsearchscopesscopeget) | **GET** /mdr/search/scopes/{scope} | 


# **mdrSearchGet**
> DefaultSearchResponse mdrSearchGet(q, highlight, start, pageSize, class_, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version)



Get Search Results Across CDISC Library

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SearchesApi();
final q = q_example; // String | Search Term Expression
final highlight = highlight_example; // String | Search Highlight Expression
final start = 8.14; // num | Initial Search Result Index
final pageSize = 8.14; // num | Number of Search Results to Return
final class_ = class__example; // String | Limit Search by Setting Scope to Class
final codelist = codelist_example; // String | Limit Search by Setting Scope to Codelist
final conceptId = conceptId_example; // String | Limit Search by Setting Scope to Concept ID
final core = core_example; // String | Limit Search by Setting Scope to Core
final dataStructure = dataStructure_example; // String | Limit Search by Setting Scope to Data Structure
final datasetStructure = datasetStructure_example; // String | Limit Search by Setting Scope to Dataset Structure
final definition = definition_example; // String | Limit Search by Setting Scope to Definition
final description = description_example; // String | Limit Search by Setting Scope to Description
final domain = domain_example; // String | Limit Search by Setting Scope to Domain
final effectiveDate = effectiveDate_example; // String | Limit Search by Setting Scope to Effective Date
final extensible = extensible_example; // String | Limit Search by Setting Scope to Extensible
final href = href_example; // String | Limit Search by Setting Scope to Href
final label = label_example; // String | Limit Search by Setting Scope to Label
final measureType = measureType_example; // String | SLimit Search by Setting Scope to Measure Type
final name = name_example; // String | Limit Search by Setting Scope to Name
final preferredTerm = preferredTerm_example; // String | Limit Search by Setting Scope to Preferred Term
final product = product_example; // String | Limit Search by Setting Scope to Product
final productGroup = productGroup_example; // String | Limit Search by Setting Scope to Product Group
final registrationStatus = registrationStatus_example; // String | Limit Search by Setting Scope to Registration Status
final roleDescription = roleDescription_example; // String | Limit Search by Setting Scope to Role Description
final sdtmTarget = sdtmTarget_example; // String | Limit Search by Setting Scope to SDTM Target
final simpleDatatype = simpleDatatype_example; // String | Limit Search by Setting Scope to Simple Datatype
final submissionValue = submissionValue_example; // String | Limit Search by Setting Scope to Submission Value
final synonyms = synonyms_example; // String | Limit Search by Setting Scope to Synonyms
final type = type_example; // String | Limit Search by Setting Scope to Type
final uiHref = uiHref_example; // String | Limit Search by Setting Scope to UI Href
final valueDomain = valueDomain_example; // String | Limit Search by Setting Scope to Value Domain
final variableSet = variableSet_example; // String | Limit Search by Setting Scope to Variable Set
final version = version_example; // String | Limit Search by Setting Scope to Version

try {
    final result = api_instance.mdrSearchGet(q, highlight, start, pageSize, class_, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version);
    print(result);
} catch (e) {
    print('Exception when calling SearchesApi->mdrSearchGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search Term Expression | 
 **highlight** | **String**| Search Highlight Expression | [optional] 
 **start** | **num**| Initial Search Result Index | [optional] [default to 0]
 **pageSize** | **num**| Number of Search Results to Return | [optional] [default to 100]
 **class_** | **String**| Limit Search by Setting Scope to Class | [optional] 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSearchScopesGet**
> MdrSearchScopesGet200Response mdrSearchScopesGet()



Get Search Results Across CDISC Library

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SearchesApi();

try {
    final result = api_instance.mdrSearchScopesGet();
    print(result);
} catch (e) {
    print('Exception when calling SearchesApi->mdrSearchScopesGet: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSearchScopesScopeGet**
> ScopeValues mdrSearchScopesScopeGet(scope)



Get Search Results Limited to Scope

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SearchesApi();
final scope = ; // DefaultSearchScopes | Search Scope

try {
    final result = api_instance.mdrSearchScopesScopeGet(scope);
    print(result);
} catch (e) {
    print('Exception when calling SearchesApi->mdrSearchScopesScopeGet: $e\n');
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

