# SearchesAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrSearchGet**](SearchesAPI.md#mdrsearchget) | **GET** /mdr/search | 
[**mdrSearchScopesGet**](SearchesAPI.md#mdrsearchscopesget) | **GET** /mdr/search/scopes | 
[**mdrSearchScopesScopeGet**](SearchesAPI.md#mdrsearchscopesscopeget) | **GET** /mdr/search/scopes/{scope} | 


# **mdrSearchGet**
```swift
    open class func mdrSearchGet(q: String, highlight: String? = nil, start: Double? = nil, pageSize: Double? = nil, _class: String? = nil, codelist: String? = nil, conceptId: String? = nil, core: String? = nil, dataStructure: String? = nil, datasetStructure: String? = nil, definition: String? = nil, description: String? = nil, domain: String? = nil, effectiveDate: String? = nil, extensible: String? = nil, href: String? = nil, label: String? = nil, measureType: String? = nil, name: String? = nil, preferredTerm: String? = nil, product: String? = nil, productGroup: String? = nil, registrationStatus: String? = nil, roleDescription: String? = nil, sdtmTarget: String? = nil, simpleDatatype: String? = nil, submissionValue: String? = nil, synonyms: String? = nil, type: String? = nil, uiHref: String? = nil, valueDomain: String? = nil, variableSet: String? = nil, version: String? = nil, completion: @escaping (_ data: DefaultSearchResponse?, _ error: Error?) -> Void)
```



Get Search Results Across CDISC Library

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let q = "q_example" // String | Search Term Expression
let highlight = "highlight_example" // String | Search Highlight Expression (optional)
let start = 987 // Double | Initial Search Result Index (optional) (default to 0)
let pageSize = 987 // Double | Number of Search Results to Return (optional) (default to 100)
let _class = "_class_example" // String | Limit Search by Setting Scope to Class (optional)
let codelist = "codelist_example" // String | Limit Search by Setting Scope to Codelist (optional)
let conceptId = "conceptId_example" // String | Limit Search by Setting Scope to Concept ID (optional)
let core = "core_example" // String | Limit Search by Setting Scope to Core (optional)
let dataStructure = "dataStructure_example" // String | Limit Search by Setting Scope to Data Structure (optional)
let datasetStructure = "datasetStructure_example" // String | Limit Search by Setting Scope to Dataset Structure (optional)
let definition = "definition_example" // String | Limit Search by Setting Scope to Definition (optional)
let description = "description_example" // String | Limit Search by Setting Scope to Description (optional)
let domain = "domain_example" // String | Limit Search by Setting Scope to Domain (optional)
let effectiveDate = "effectiveDate_example" // String | Limit Search by Setting Scope to Effective Date (optional)
let extensible = "extensible_example" // String | Limit Search by Setting Scope to Extensible (optional)
let href = "href_example" // String | Limit Search by Setting Scope to Href (optional)
let label = "label_example" // String | Limit Search by Setting Scope to Label (optional)
let measureType = "measureType_example" // String | SLimit Search by Setting Scope to Measure Type (optional)
let name = "name_example" // String | Limit Search by Setting Scope to Name (optional)
let preferredTerm = "preferredTerm_example" // String | Limit Search by Setting Scope to Preferred Term (optional)
let product = "product_example" // String | Limit Search by Setting Scope to Product (optional)
let productGroup = "productGroup_example" // String | Limit Search by Setting Scope to Product Group (optional)
let registrationStatus = "registrationStatus_example" // String | Limit Search by Setting Scope to Registration Status (optional)
let roleDescription = "roleDescription_example" // String | Limit Search by Setting Scope to Role Description (optional)
let sdtmTarget = "sdtmTarget_example" // String | Limit Search by Setting Scope to SDTM Target (optional)
let simpleDatatype = "simpleDatatype_example" // String | Limit Search by Setting Scope to Simple Datatype (optional)
let submissionValue = "submissionValue_example" // String | Limit Search by Setting Scope to Submission Value (optional)
let synonyms = "synonyms_example" // String | Limit Search by Setting Scope to Synonyms (optional)
let type = "type_example" // String | Limit Search by Setting Scope to Type (optional)
let uiHref = "uiHref_example" // String | Limit Search by Setting Scope to UI Href (optional)
let valueDomain = "valueDomain_example" // String | Limit Search by Setting Scope to Value Domain (optional)
let variableSet = "variableSet_example" // String | Limit Search by Setting Scope to Variable Set (optional)
let version = "version_example" // String | Limit Search by Setting Scope to Version (optional)

SearchesAPI.mdrSearchGet(q: q, highlight: highlight, start: start, pageSize: pageSize, _class: _class, codelist: codelist, conceptId: conceptId, core: core, dataStructure: dataStructure, datasetStructure: datasetStructure, definition: definition, description: description, domain: domain, effectiveDate: effectiveDate, extensible: extensible, href: href, label: label, measureType: measureType, name: name, preferredTerm: preferredTerm, product: product, productGroup: productGroup, registrationStatus: registrationStatus, roleDescription: roleDescription, sdtmTarget: sdtmTarget, simpleDatatype: simpleDatatype, submissionValue: submissionValue, synonyms: synonyms, type: type, uiHref: uiHref, valueDomain: valueDomain, variableSet: variableSet, version: version) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String** | Search Term Expression | 
 **highlight** | **String** | Search Highlight Expression | [optional] 
 **start** | **Double** | Initial Search Result Index | [optional] [default to 0]
 **pageSize** | **Double** | Number of Search Results to Return | [optional] [default to 100]
 **_class** | **String** | Limit Search by Setting Scope to Class | [optional] 
 **codelist** | **String** | Limit Search by Setting Scope to Codelist | [optional] 
 **conceptId** | **String** | Limit Search by Setting Scope to Concept ID | [optional] 
 **core** | **String** | Limit Search by Setting Scope to Core | [optional] 
 **dataStructure** | **String** | Limit Search by Setting Scope to Data Structure | [optional] 
 **datasetStructure** | **String** | Limit Search by Setting Scope to Dataset Structure | [optional] 
 **definition** | **String** | Limit Search by Setting Scope to Definition | [optional] 
 **description** | **String** | Limit Search by Setting Scope to Description | [optional] 
 **domain** | **String** | Limit Search by Setting Scope to Domain | [optional] 
 **effectiveDate** | **String** | Limit Search by Setting Scope to Effective Date | [optional] 
 **extensible** | **String** | Limit Search by Setting Scope to Extensible | [optional] 
 **href** | **String** | Limit Search by Setting Scope to Href | [optional] 
 **label** | **String** | Limit Search by Setting Scope to Label | [optional] 
 **measureType** | **String** | SLimit Search by Setting Scope to Measure Type | [optional] 
 **name** | **String** | Limit Search by Setting Scope to Name | [optional] 
 **preferredTerm** | **String** | Limit Search by Setting Scope to Preferred Term | [optional] 
 **product** | **String** | Limit Search by Setting Scope to Product | [optional] 
 **productGroup** | **String** | Limit Search by Setting Scope to Product Group | [optional] 
 **registrationStatus** | **String** | Limit Search by Setting Scope to Registration Status | [optional] 
 **roleDescription** | **String** | Limit Search by Setting Scope to Role Description | [optional] 
 **sdtmTarget** | **String** | Limit Search by Setting Scope to SDTM Target | [optional] 
 **simpleDatatype** | **String** | Limit Search by Setting Scope to Simple Datatype | [optional] 
 **submissionValue** | **String** | Limit Search by Setting Scope to Submission Value | [optional] 
 **synonyms** | **String** | Limit Search by Setting Scope to Synonyms | [optional] 
 **type** | **String** | Limit Search by Setting Scope to Type | [optional] 
 **uiHref** | **String** | Limit Search by Setting Scope to UI Href | [optional] 
 **valueDomain** | **String** | Limit Search by Setting Scope to Value Domain | [optional] 
 **variableSet** | **String** | Limit Search by Setting Scope to Variable Set | [optional] 
 **version** | **String** | Limit Search by Setting Scope to Version | [optional] 

### Return type

[**DefaultSearchResponse**](DefaultSearchResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSearchScopesGet**
```swift
    open class func mdrSearchScopesGet(completion: @escaping (_ data: MdrSearchScopesGet200Response?, _ error: Error?) -> Void)
```



Get Search Results Across CDISC Library

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


SearchesAPI.mdrSearchScopesGet() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
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
```swift
    open class func mdrSearchScopesScopeGet(scope: DefaultSearchScopes, completion: @escaping (_ data: ScopeValues?, _ error: Error?) -> Void)
```



Get Search Results Limited to Scope

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let scope = DefaultSearchScopes() // DefaultSearchScopes | Search Scope

SearchesAPI.mdrSearchScopesScopeGet(scope: scope) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | [**DefaultSearchScopes**](.md) | Search Scope | 

### Return type

[**ScopeValues**](ScopeValues.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

