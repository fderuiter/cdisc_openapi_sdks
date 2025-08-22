# SearchesApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrSearchGet**](SearchesApi.md#mdrSearchGet) | **GET** /mdr/search |  |
| [**mdrSearchScopesGet**](SearchesApi.md#mdrSearchScopesGet) | **GET** /mdr/search/scopes |  |
| [**mdrSearchScopesScopeGet**](SearchesApi.md#mdrSearchScopesScopeGet) | **GET** /mdr/search/scopes/{scope} |  |


<a id="mdrSearchGet"></a>
# **mdrSearchGet**
> DefaultSearchResponse mdrSearchGet(q, highlight, start, pageSize, propertyClass, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version)



Get Search Results Across CDISC Library

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SearchesApi()
val q : kotlin.String = q_example // kotlin.String | Search Term Expression
val highlight : kotlin.String = highlight_example // kotlin.String | Search Highlight Expression
val start : java.math.BigDecimal = 8.14 // java.math.BigDecimal | Initial Search Result Index
val pageSize : java.math.BigDecimal = 8.14 // java.math.BigDecimal | Number of Search Results to Return
val propertyClass : kotlin.String = propertyClass_example // kotlin.String | Limit Search by Setting Scope to Class
val codelist : kotlin.String = codelist_example // kotlin.String | Limit Search by Setting Scope to Codelist
val conceptId : kotlin.String = conceptId_example // kotlin.String | Limit Search by Setting Scope to Concept ID
val core : kotlin.String = core_example // kotlin.String | Limit Search by Setting Scope to Core
val dataStructure : kotlin.String = dataStructure_example // kotlin.String | Limit Search by Setting Scope to Data Structure
val datasetStructure : kotlin.String = datasetStructure_example // kotlin.String | Limit Search by Setting Scope to Dataset Structure
val definition : kotlin.String = definition_example // kotlin.String | Limit Search by Setting Scope to Definition
val description : kotlin.String = description_example // kotlin.String | Limit Search by Setting Scope to Description
val domain : kotlin.String = domain_example // kotlin.String | Limit Search by Setting Scope to Domain
val effectiveDate : kotlin.String = effectiveDate_example // kotlin.String | Limit Search by Setting Scope to Effective Date
val extensible : kotlin.String = extensible_example // kotlin.String | Limit Search by Setting Scope to Extensible
val href : kotlin.String = href_example // kotlin.String | Limit Search by Setting Scope to Href
val label : kotlin.String = label_example // kotlin.String | Limit Search by Setting Scope to Label
val measureType : kotlin.String = measureType_example // kotlin.String | SLimit Search by Setting Scope to Measure Type
val name : kotlin.String = name_example // kotlin.String | Limit Search by Setting Scope to Name
val preferredTerm : kotlin.String = preferredTerm_example // kotlin.String | Limit Search by Setting Scope to Preferred Term
val product : kotlin.String = product_example // kotlin.String | Limit Search by Setting Scope to Product
val productGroup : kotlin.String = productGroup_example // kotlin.String | Limit Search by Setting Scope to Product Group
val registrationStatus : kotlin.String = registrationStatus_example // kotlin.String | Limit Search by Setting Scope to Registration Status
val roleDescription : kotlin.String = roleDescription_example // kotlin.String | Limit Search by Setting Scope to Role Description
val sdtmTarget : kotlin.String = sdtmTarget_example // kotlin.String | Limit Search by Setting Scope to SDTM Target
val simpleDatatype : kotlin.String = simpleDatatype_example // kotlin.String | Limit Search by Setting Scope to Simple Datatype
val submissionValue : kotlin.String = submissionValue_example // kotlin.String | Limit Search by Setting Scope to Submission Value
val synonyms : kotlin.String = synonyms_example // kotlin.String | Limit Search by Setting Scope to Synonyms
val type : kotlin.String = type_example // kotlin.String | Limit Search by Setting Scope to Type
val uiHref : kotlin.String = uiHref_example // kotlin.String | Limit Search by Setting Scope to UI Href
val valueDomain : kotlin.String = valueDomain_example // kotlin.String | Limit Search by Setting Scope to Value Domain
val variableSet : kotlin.String = variableSet_example // kotlin.String | Limit Search by Setting Scope to Variable Set
val version : kotlin.String = version_example // kotlin.String | Limit Search by Setting Scope to Version
try {
    val result : DefaultSearchResponse = apiInstance.mdrSearchGet(q, highlight, start, pageSize, propertyClass, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SearchesApi#mdrSearchGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SearchesApi#mdrSearchGet")
    e.printStackTrace()
}
```

### Parameters
| **q** | **kotlin.String**| Search Term Expression | |
| **highlight** | **kotlin.String**| Search Highlight Expression | [optional] |
| **start** | **java.math.BigDecimal**| Initial Search Result Index | [optional] [default to 0] |
| **pageSize** | **java.math.BigDecimal**| Number of Search Results to Return | [optional] [default to 100] |
| **propertyClass** | **kotlin.String**| Limit Search by Setting Scope to Class | [optional] |
| **codelist** | **kotlin.String**| Limit Search by Setting Scope to Codelist | [optional] |
| **conceptId** | **kotlin.String**| Limit Search by Setting Scope to Concept ID | [optional] |
| **core** | **kotlin.String**| Limit Search by Setting Scope to Core | [optional] |
| **dataStructure** | **kotlin.String**| Limit Search by Setting Scope to Data Structure | [optional] |
| **datasetStructure** | **kotlin.String**| Limit Search by Setting Scope to Dataset Structure | [optional] |
| **definition** | **kotlin.String**| Limit Search by Setting Scope to Definition | [optional] |
| **description** | **kotlin.String**| Limit Search by Setting Scope to Description | [optional] |
| **domain** | **kotlin.String**| Limit Search by Setting Scope to Domain | [optional] |
| **effectiveDate** | **kotlin.String**| Limit Search by Setting Scope to Effective Date | [optional] |
| **extensible** | **kotlin.String**| Limit Search by Setting Scope to Extensible | [optional] |
| **href** | **kotlin.String**| Limit Search by Setting Scope to Href | [optional] |
| **label** | **kotlin.String**| Limit Search by Setting Scope to Label | [optional] |
| **measureType** | **kotlin.String**| SLimit Search by Setting Scope to Measure Type | [optional] |
| **name** | **kotlin.String**| Limit Search by Setting Scope to Name | [optional] |
| **preferredTerm** | **kotlin.String**| Limit Search by Setting Scope to Preferred Term | [optional] |
| **product** | **kotlin.String**| Limit Search by Setting Scope to Product | [optional] |
| **productGroup** | **kotlin.String**| Limit Search by Setting Scope to Product Group | [optional] |
| **registrationStatus** | **kotlin.String**| Limit Search by Setting Scope to Registration Status | [optional] |
| **roleDescription** | **kotlin.String**| Limit Search by Setting Scope to Role Description | [optional] |
| **sdtmTarget** | **kotlin.String**| Limit Search by Setting Scope to SDTM Target | [optional] |
| **simpleDatatype** | **kotlin.String**| Limit Search by Setting Scope to Simple Datatype | [optional] |
| **submissionValue** | **kotlin.String**| Limit Search by Setting Scope to Submission Value | [optional] |
| **synonyms** | **kotlin.String**| Limit Search by Setting Scope to Synonyms | [optional] |
| **type** | **kotlin.String**| Limit Search by Setting Scope to Type | [optional] |
| **uiHref** | **kotlin.String**| Limit Search by Setting Scope to UI Href | [optional] |
| **valueDomain** | **kotlin.String**| Limit Search by Setting Scope to Value Domain | [optional] |
| **variableSet** | **kotlin.String**| Limit Search by Setting Scope to Variable Set | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| Limit Search by Setting Scope to Version | [optional] |

### Return type

[**DefaultSearchResponse**](DefaultSearchResponse.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSearchScopesGet"></a>
# **mdrSearchScopesGet**
> MdrSearchScopesGet200Response mdrSearchScopesGet()



Get Search Results Across CDISC Library

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SearchesApi()
try {
    val result : MdrSearchScopesGet200Response = apiInstance.mdrSearchScopesGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SearchesApi#mdrSearchScopesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SearchesApi#mdrSearchScopesGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MdrSearchScopesGet200Response**](MdrSearchScopesGet200Response.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSearchScopesScopeGet"></a>
# **mdrSearchScopesScopeGet**
> ScopeValues mdrSearchScopesScopeGet(scope)



Get Search Results Limited to Scope

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SearchesApi()
val scope : DefaultSearchScopes =  // DefaultSearchScopes | Search Scope
try {
    val result : ScopeValues = apiInstance.mdrSearchScopesScopeGet(scope)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SearchesApi#mdrSearchScopesScopeGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SearchesApi#mdrSearchScopesScopeGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **scope** | [**DefaultSearchScopes**](.md)| Search Scope | [enum: class, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version] |

### Return type

[**ScopeValues**](ScopeValues.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

