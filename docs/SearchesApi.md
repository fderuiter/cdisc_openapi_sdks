# SearchesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrSearchGet**](SearchesApi.md#mdrSearchGet) | **GET** /mdr/search | 
[**mdrSearchGetWithHttpInfo**](SearchesApi.md#mdrSearchGetWithHttpInfo) | **GET** /mdr/search | 
[**mdrSearchScopesGet**](SearchesApi.md#mdrSearchScopesGet) | **GET** /mdr/search/scopes | 
[**mdrSearchScopesGetWithHttpInfo**](SearchesApi.md#mdrSearchScopesGetWithHttpInfo) | **GET** /mdr/search/scopes | 
[**mdrSearchScopesScopeGet**](SearchesApi.md#mdrSearchScopesScopeGet) | **GET** /mdr/search/scopes/{scope} | 
[**mdrSearchScopesScopeGetWithHttpInfo**](SearchesApi.md#mdrSearchScopesScopeGetWithHttpInfo) | **GET** /mdr/search/scopes/{scope} | 



## mdrSearchGet

> mdrSearchGet(mdrSearchGetRequest): ApiRequest[DefaultSearchResponse]



Get Search Results Across CDISC Library

### Example

```scala
// Import classes:
import 
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: basicAuth
    implicit val basicAuth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = SearchesApi("https://library.cdisc.org/api")
    val `q`: String = `q`_example // String | Search Term Expression

    val highlight: String = highlight_example // String | Search Highlight Expression

    val start: BigDecimal = 8.14 // BigDecimal | Initial Search Result Index

    val pageSize: BigDecimal = 8.14 // BigDecimal | Number of Search Results to Return

    val `class`: String = `class`_example // String | Limit Search by Setting Scope to Class

    val codelist: String = codelist_example // String | Limit Search by Setting Scope to Codelist

    val conceptId: String = conceptId_example // String | Limit Search by Setting Scope to Concept ID

    val core: String = core_example // String | Limit Search by Setting Scope to Core

    val dataStructure: String = dataStructure_example // String | Limit Search by Setting Scope to Data Structure

    val datasetStructure: String = datasetStructure_example // String | Limit Search by Setting Scope to Dataset Structure

    val definition: String = definition_example // String | Limit Search by Setting Scope to Definition

    val description: String = description_example // String | Limit Search by Setting Scope to Description

    val domain: String = domain_example // String | Limit Search by Setting Scope to Domain

    val effectiveDate: String = effectiveDate_example // String | Limit Search by Setting Scope to Effective Date

    val extensible: String = extensible_example // String | Limit Search by Setting Scope to Extensible

    val href: String = href_example // String | Limit Search by Setting Scope to Href

    val label: String = label_example // String | Limit Search by Setting Scope to Label

    val measureType: String = measureType_example // String | SLimit Search by Setting Scope to Measure Type

    val name: String = name_example // String | Limit Search by Setting Scope to Name

    val preferredTerm: String = preferredTerm_example // String | Limit Search by Setting Scope to Preferred Term

    val product: String = product_example // String | Limit Search by Setting Scope to Product

    val productGroup: String = productGroup_example // String | Limit Search by Setting Scope to Product Group

    val registrationStatus: String = registrationStatus_example // String | Limit Search by Setting Scope to Registration Status

    val roleDescription: String = roleDescription_example // String | Limit Search by Setting Scope to Role Description

    val sdtmTarget: String = sdtmTarget_example // String | Limit Search by Setting Scope to SDTM Target

    val simpleDatatype: String = simpleDatatype_example // String | Limit Search by Setting Scope to Simple Datatype

    val submissionValue: String = submissionValue_example // String | Limit Search by Setting Scope to Submission Value

    val synonyms: String = synonyms_example // String | Limit Search by Setting Scope to Synonyms

    val `type`: String = `type`_example // String | Limit Search by Setting Scope to Type

    val uiHref: String = uiHref_example // String | Limit Search by Setting Scope to UI Href

    val valueDomain: String = valueDomain_example // String | Limit Search by Setting Scope to Value Domain

    val variableSet: String = variableSet_example // String | Limit Search by Setting Scope to Variable Set

    val version: String = version_example // String | Limit Search by Setting Scope to Version
    
    val request = apiInstance.mdrSearchGet(`q`, highlight, start, pageSize, `class`, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, `type`, uiHref, valueDomain, variableSet, version)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SearchesApi#mdrSearchGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SearchesApi#mdrSearchGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`q`** | **String**| Search Term Expression |
 **highlight** | **String**| Search Highlight Expression | [optional]
 **start** | **BigDecimal**| Initial Search Result Index | [optional]
 **pageSize** | **BigDecimal**| Number of Search Results to Return | [optional]
 **`class`** | **String**| Limit Search by Setting Scope to Class | [optional]
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
 **`type`** | **String**| Limit Search by Setting Scope to Type | [optional]
 **uiHref** | **String**| Limit Search by Setting Scope to UI Href | [optional]
 **valueDomain** | **String**| Limit Search by Setting Scope to Value Domain | [optional]
 **variableSet** | **String**| Limit Search by Setting Scope to Variable Set | [optional]
 **version** | **String**| Limit Search by Setting Scope to Version | [optional]

### Return type

ApiRequest[[**DefaultSearchResponse**](DefaultSearchResponse.md)]


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |


## mdrSearchScopesGet

> mdrSearchScopesGet(): ApiRequest[MdrSearchScopesGet200Response]



Get Search Results Across CDISC Library

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: basicAuth
    implicit val basicAuth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = SearchesApi("https://library.cdisc.org/api")    
    val request = apiInstance.mdrSearchScopesGet()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SearchesApi#mdrSearchScopesGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SearchesApi#mdrSearchScopesGet")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**MdrSearchScopesGet200Response**](MdrSearchScopesGet200Response.md)]


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


## mdrSearchScopesScopeGet

> mdrSearchScopesScopeGet(mdrSearchScopesScopeGetRequest): ApiRequest[ScopeValues]



Get Search Results Limited to Scope

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: basicAuth
    implicit val basicAuth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = SearchesApi("https://library.cdisc.org/api")
    val scope: DefaultSearchScopes =  // DefaultSearchScopes | Search Scope
    
    val request = apiInstance.mdrSearchScopesScopeGet(scope)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SearchesApi#mdrSearchScopesScopeGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SearchesApi#mdrSearchScopesScopeGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | [**DefaultSearchScopes**](.md)| Search Scope | [enum: class, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version]

### Return type

ApiRequest[[**ScopeValues**](ScopeValues.md)]


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

