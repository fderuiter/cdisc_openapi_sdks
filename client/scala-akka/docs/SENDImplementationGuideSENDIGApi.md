# SENDImplementationGuideSENDIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSendigDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#mdrRootSendigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**mdrRootSendigDatasetsDatasetVariablesVarGetWithHttpInfo**](SENDImplementationGuideSENDIGApi.md#mdrRootSendigDatasetsDatasetVariablesVarGetWithHttpInfo) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionClassesClassDatasetsGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassDatasetsGet) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**mdrSendigVersionClassesClassDatasetsGetWithHttpInfo**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassDatasetsGetWithHttpInfo) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**mdrSendigVersionClassesClassGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassGet) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**mdrSendigVersionClassesClassGetWithHttpInfo**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassGetWithHttpInfo) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**mdrSendigVersionClassesGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesGet) | **GET** /mdr/sendig/{version}/classes | 
[**mdrSendigVersionClassesGetWithHttpInfo**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesGetWithHttpInfo) | **GET** /mdr/sendig/{version}/classes | 
[**mdrSendigVersionDatasetsDatasetGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetGet) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**mdrSendigVersionDatasetsDatasetGetWithHttpInfo**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetGetWithHttpInfo) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**mdrSendigVersionDatasetsDatasetVariablesGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**mdrSendigVersionDatasetsDatasetVariablesGetWithHttpInfo**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesGetWithHttpInfo) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**mdrSendigVersionDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionDatasetsDatasetVariablesVarGetWithHttpInfo**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesVarGetWithHttpInfo) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionDatasetsGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsGet) | **GET** /mdr/sendig/{version}/datasets | 
[**mdrSendigVersionDatasetsGetWithHttpInfo**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsGetWithHttpInfo) | **GET** /mdr/sendig/{version}/datasets | 
[**mdrSendigVersionGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionGet) | **GET** /mdr/sendig/{version} | 
[**mdrSendigVersionGetWithHttpInfo**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionGetWithHttpInfo) | **GET** /mdr/sendig/{version} | 



## mdrRootSendigDatasetsDatasetVariablesVarGet

> mdrRootSendigDatasetsDatasetVariablesVarGet(mdrRootSendigDatasetsDatasetVariablesVarGetRequest): ApiRequest[RootSendigDatasetVariable]



Get Root SENDIG Dataset Variable

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
    val apiInstance = SENDImplementationGuideSENDIGApi("https://library.cdisc.org/api")
    val dataset: String = VS // String | SENDIG Dataset Identifier

    val `var`: String = VSTEST // String | SENDIG Variable Identifier
    
    val request = apiInstance.mdrRootSendigDatasetsDatasetVariablesVarGet(dataset, `var`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrRootSendigDatasetsDatasetVariablesVarGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrRootSendigDatasetsDatasetVariablesVarGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **String**| SENDIG Dataset Identifier |
 **`var`** | **String**| SENDIG Variable Identifier |

### Return type

ApiRequest[[**RootSendigDatasetVariable**](RootSendigDatasetVariable.md)]


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

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


## mdrSendigVersionClassesClassDatasetsGet

> mdrSendigVersionClassesClassDatasetsGet(mdrSendigVersionClassesClassDatasetsGetRequest): ApiRequest[SendigClassDatasets]



Get SENDIG Class Dataset List

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
    val apiInstance = SENDImplementationGuideSENDIGApi("https://library.cdisc.org/api")
    val version: String = 3-1 // String | CDISC Library Product Version

    val `class`: String = Findings // String | SENDIG Class Identifier
    
    val request = apiInstance.mdrSendigVersionClassesClassDatasetsGet(version, `class`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesClassDatasetsGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesClassDatasetsGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **`class`** | **String**| SENDIG Class Identifier |

### Return type

ApiRequest[[**SendigClassDatasets**](SendigClassDatasets.md)]


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

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


## mdrSendigVersionClassesClassGet

> mdrSendigVersionClassesClassGet(mdrSendigVersionClassesClassGetRequest): ApiRequest[SendigClass]



Get SENDIG Class

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
    val apiInstance = SENDImplementationGuideSENDIGApi("https://library.cdisc.org/api")
    val version: String = 3-1 // String | CDISC Library Product Version

    val `class`: String = Findings // String | SENDIG Class Identifier
    
    val request = apiInstance.mdrSendigVersionClassesClassGet(version, `class`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesClassGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesClassGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **`class`** | **String**| SENDIG Class Identifier |

### Return type

ApiRequest[[**SendigClass**](SendigClass.md)]


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

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


## mdrSendigVersionClassesGet

> mdrSendigVersionClassesGet(mdrSendigVersionClassesGetRequest): ApiRequest[SendigClasses]



Get SENDIG Class List

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
    val apiInstance = SENDImplementationGuideSENDIGApi("https://library.cdisc.org/api")
    val version: String = 3-1 // String | CDISC Library Product Version
    
    val request = apiInstance.mdrSendigVersionClassesGet(version)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |

### Return type

ApiRequest[[**SendigClasses**](SendigClasses.md)]


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

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


## mdrSendigVersionDatasetsDatasetGet

> mdrSendigVersionDatasetsDatasetGet(mdrSendigVersionDatasetsDatasetGetRequest): ApiRequest[SendigDataset]



Get SENDIG Dataset

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
    val apiInstance = SENDImplementationGuideSENDIGApi("https://library.cdisc.org/api")
    val version: String = 3-1 // String | CDISC Library Product Version

    val dataset: String = VS // String | SENDIG Class Identifier
    
    val request = apiInstance.mdrSendigVersionDatasetsDatasetGet(version, dataset)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **dataset** | **String**| SENDIG Class Identifier |

### Return type

ApiRequest[[**SendigDataset**](SendigDataset.md)]


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

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


## mdrSendigVersionDatasetsDatasetVariablesGet

> mdrSendigVersionDatasetsDatasetVariablesGet(mdrSendigVersionDatasetsDatasetVariablesGetRequest): ApiRequest[SendigDatasetVariables]



Get SENDIG Dataset Variable List

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
    val apiInstance = SENDImplementationGuideSENDIGApi("https://library.cdisc.org/api")
    val version: String = 3-1 // String | CDISC Library Product Version

    val dataset: String = VS // String | SENDIG Class Identifier
    
    val request = apiInstance.mdrSendigVersionDatasetsDatasetVariablesGet(version, dataset)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetVariablesGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetVariablesGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **dataset** | **String**| SENDIG Class Identifier |

### Return type

ApiRequest[[**SendigDatasetVariables**](SendigDatasetVariables.md)]


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

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


## mdrSendigVersionDatasetsDatasetVariablesVarGet

> mdrSendigVersionDatasetsDatasetVariablesVarGet(mdrSendigVersionDatasetsDatasetVariablesVarGetRequest): ApiRequest[SendigDatasetVariable]



Get SENDIG Dataset Variable

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
    val apiInstance = SENDImplementationGuideSENDIGApi("https://library.cdisc.org/api")
    val version: String = 3-1 // String | CDISC Library Product Version

    val dataset: String = VS // String | SENDIG Class Identifier

    val `var`: String = VSTEST // String | SENDIG Variable Identifier
    
    val request = apiInstance.mdrSendigVersionDatasetsDatasetVariablesVarGet(version, dataset, `var`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetVariablesVarGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetVariablesVarGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **dataset** | **String**| SENDIG Class Identifier |
 **`var`** | **String**| SENDIG Variable Identifier |

### Return type

ApiRequest[[**SendigDatasetVariable**](SendigDatasetVariable.md)]


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

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


## mdrSendigVersionDatasetsGet

> mdrSendigVersionDatasetsGet(mdrSendigVersionDatasetsGetRequest): ApiRequest[SendigDatasets]



Get SENDIG Dataset List

### Example

```scala
// Import classes:
import 
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
    val apiInstance = SENDImplementationGuideSENDIGApi("https://library.cdisc.org/api")
    val version: String = 3-1 // String | CDISC Library Product Version
    
    val request = apiInstance.mdrSendigVersionDatasetsGet(version)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |

### Return type

ApiRequest[[**SendigDatasets**](SendigDatasets.md)]


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv

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


## mdrSendigVersionGet

> mdrSendigVersionGet(mdrSendigVersionGetRequest): ApiRequest[SendigProduct]



Get SENDIG product

### Example

```scala
// Import classes:
import 
import 
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
    val apiInstance = SENDImplementationGuideSENDIGApi("https://library.cdisc.org/api")
    val version: String = 3-1 // String | CDISC Library Product Version
    
    val request = apiInstance.mdrSendigVersionGet(version)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |

### Return type

ApiRequest[[**SendigProduct**](SendigProduct.md)]


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

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

