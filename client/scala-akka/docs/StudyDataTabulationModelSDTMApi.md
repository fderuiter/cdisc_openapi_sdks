# StudyDataTabulationModelSDTMApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmClassesClassVariablesVarGet) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**mdrRootSdtmClassesClassVariablesVarGetWithHttpInfo**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmClassesClassVariablesVarGetWithHttpInfo) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**mdrRootSdtmDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**mdrRootSdtmDatasetsDatasetVariablesVarGetWithHttpInfo**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmDatasetsDatasetVariablesVarGetWithHttpInfo) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionClassesClassDatasetsGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassDatasetsGet) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**mdrSdtmVersionClassesClassDatasetsGetWithHttpInfo**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassDatasetsGetWithHttpInfo) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**mdrSdtmVersionClassesClassGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassGet) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**mdrSdtmVersionClassesClassGetWithHttpInfo**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassGetWithHttpInfo) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**mdrSdtmVersionClassesClassVariablesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**mdrSdtmVersionClassesClassVariablesGetWithHttpInfo**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesGetWithHttpInfo) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**mdrSdtmVersionClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesVarGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**mdrSdtmVersionClassesClassVariablesVarGetWithHttpInfo**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesVarGetWithHttpInfo) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**mdrSdtmVersionClassesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesGet) | **GET** /mdr/sdtm/{version}/classes | 
[**mdrSdtmVersionClassesGetWithHttpInfo**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesGetWithHttpInfo) | **GET** /mdr/sdtm/{version}/classes | 
[**mdrSdtmVersionDatasetsDatasetGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**mdrSdtmVersionDatasetsDatasetGetWithHttpInfo**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetGetWithHttpInfo) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**mdrSdtmVersionDatasetsDatasetVariablesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**mdrSdtmVersionDatasetsDatasetVariablesGetWithHttpInfo**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesGetWithHttpInfo) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**mdrSdtmVersionDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionDatasetsDatasetVariablesVarGetWithHttpInfo**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesVarGetWithHttpInfo) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionDatasetsGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsGet) | **GET** /mdr/sdtm/{version}/datasets | 
[**mdrSdtmVersionDatasetsGetWithHttpInfo**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsGetWithHttpInfo) | **GET** /mdr/sdtm/{version}/datasets | 
[**mdrSdtmVersionGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionGet) | **GET** /mdr/sdtm/{version} | 
[**mdrSdtmVersionGetWithHttpInfo**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionGetWithHttpInfo) | **GET** /mdr/sdtm/{version} | 



## mdrRootSdtmClassesClassVariablesVarGet

> mdrRootSdtmClassesClassVariablesVarGet(mdrRootSdtmClassesClassVariablesVarGetRequest): ApiRequest[RootSdtmClassVariable]



Get Root of SDTM Class Variable

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
    val apiInstance = StudyDataTabulationModelSDTMApi("https://library.cdisc.org/api")
    val `class`: String = GeneralObservations // String | SDTM Class Identifier

    val `var`: String = --DTC // String | SDTM Variable Identifier
    
    val request = apiInstance.mdrRootSdtmClassesClassVariablesVarGet(`class`, `var`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrRootSdtmClassesClassVariablesVarGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrRootSdtmClassesClassVariablesVarGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`class`** | **String**| SDTM Class Identifier |
 **`var`** | **String**| SDTM Variable Identifier |

### Return type

ApiRequest[[**RootSdtmClassVariable**](RootSdtmClassVariable.md)]


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


## mdrRootSdtmDatasetsDatasetVariablesVarGet

> mdrRootSdtmDatasetsDatasetVariablesVarGet(mdrRootSdtmDatasetsDatasetVariablesVarGetRequest): ApiRequest[RootSdtmDatasetVariable]



Get Root SDTM Dataset Variable

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
    val apiInstance = StudyDataTabulationModelSDTMApi("https://library.cdisc.org/api")
    val dataset: String = DM // String | SDTM Dataset Identifier

    val `var`: String = SUBJID // String | SDTM Variable Identifier
    
    val request = apiInstance.mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset, `var`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrRootSdtmDatasetsDatasetVariablesVarGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrRootSdtmDatasetsDatasetVariablesVarGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **String**| SDTM Dataset Identifier |
 **`var`** | **String**| SDTM Variable Identifier |

### Return type

ApiRequest[[**RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)]


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


## mdrSdtmVersionClassesClassDatasetsGet

> mdrSdtmVersionClassesClassDatasetsGet(mdrSdtmVersionClassesClassDatasetsGetRequest): ApiRequest[SdtmClassDatasets]



Get SDTM Class Dataset List

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
    val apiInstance = StudyDataTabulationModelSDTMApi("https://library.cdisc.org/api")
    val version: String = 1-8 // String | CDISC Library Product Version

    val `class`: String = SpecialPurpose // String | SDTM Class Identifier
    
    val request = apiInstance.mdrSdtmVersionClassesClassDatasetsGet(version, `class`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassDatasetsGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassDatasetsGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **`class`** | **String**| SDTM Class Identifier |

### Return type

ApiRequest[[**SdtmClassDatasets**](SdtmClassDatasets.md)]


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


## mdrSdtmVersionClassesClassGet

> mdrSdtmVersionClassesClassGet(mdrSdtmVersionClassesClassGetRequest): ApiRequest[SdtmClass]



Get SDTM Class

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
    val apiInstance = StudyDataTabulationModelSDTMApi("https://library.cdisc.org/api")
    val version: String = 1-8 // String | CDISC Library Product Version

    val `class`: String = Findings // String | SDTM Class Identifier
    
    val request = apiInstance.mdrSdtmVersionClassesClassGet(version, `class`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **`class`** | **String**| SDTM Class Identifier |

### Return type

ApiRequest[[**SdtmClass**](SdtmClass.md)]


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


## mdrSdtmVersionClassesClassVariablesGet

> mdrSdtmVersionClassesClassVariablesGet(mdrSdtmVersionClassesClassVariablesGetRequest): ApiRequest[SdtmClassVariables]



Get SDTM Class Variable List

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
    val apiInstance = StudyDataTabulationModelSDTMApi("https://library.cdisc.org/api")
    val version: String = 1-8 // String | CDISC Library Product Version

    val `class`: String = GeneralObservations // String | SDTM Class Identifier
    
    val request = apiInstance.mdrSdtmVersionClassesClassVariablesGet(version, `class`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassVariablesGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassVariablesGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **`class`** | **String**| SDTM Class Identifier |

### Return type

ApiRequest[[**SdtmClassVariables**](SdtmClassVariables.md)]


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


## mdrSdtmVersionClassesClassVariablesVarGet

> mdrSdtmVersionClassesClassVariablesVarGet(mdrSdtmVersionClassesClassVariablesVarGetRequest): ApiRequest[SdtmClassVariable]



Get SDTM Class Variable

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
    val apiInstance = StudyDataTabulationModelSDTMApi("https://library.cdisc.org/api")
    val version: String = 1-8 // String | CDISC Library Product Version

    val `class`: String = GeneralObservations // String | SDTM Class Identifier

    val `var`: String = --DTC // String | SDTM Variable Identifier
    
    val request = apiInstance.mdrSdtmVersionClassesClassVariablesVarGet(version, `class`, `var`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassVariablesVarGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassVariablesVarGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **`class`** | **String**| SDTM Class Identifier |
 **`var`** | **String**| SDTM Variable Identifier |

### Return type

ApiRequest[[**SdtmClassVariable**](SdtmClassVariable.md)]


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


## mdrSdtmVersionClassesGet

> mdrSdtmVersionClassesGet(mdrSdtmVersionClassesGetRequest): ApiRequest[SdtmClasses]



Get SDTM Class List

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
    val apiInstance = StudyDataTabulationModelSDTMApi("https://library.cdisc.org/api")
    val version: String = 1-8 // String | CDISC Library Product Version
    
    val request = apiInstance.mdrSdtmVersionClassesGet(version)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |

### Return type

ApiRequest[[**SdtmClasses**](SdtmClasses.md)]


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


## mdrSdtmVersionDatasetsDatasetGet

> mdrSdtmVersionDatasetsDatasetGet(mdrSdtmVersionDatasetsDatasetGetRequest): ApiRequest[SdtmDataset]



Get SDTM Dataset

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
    val apiInstance = StudyDataTabulationModelSDTMApi("https://library.cdisc.org/api")
    val version: String = 1-8 // String | CDISC Library Product Version

    val dataset: String = DM // String | SDTM Dataset Identifier
    
    val request = apiInstance.mdrSdtmVersionDatasetsDatasetGet(version, dataset)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **dataset** | **String**| SDTM Dataset Identifier |

### Return type

ApiRequest[[**SdtmDataset**](SdtmDataset.md)]


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


## mdrSdtmVersionDatasetsDatasetVariablesGet

> mdrSdtmVersionDatasetsDatasetVariablesGet(mdrSdtmVersionDatasetsDatasetVariablesGetRequest): ApiRequest[SdtmDatasetVariables]



Get SDTM Dataset Variable List

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
    val apiInstance = StudyDataTabulationModelSDTMApi("https://library.cdisc.org/api")
    val version: String = 1-8 // String | CDISC Library Product Version

    val dataset: String = DM // String | SDTM Dataset Identifier
    
    val request = apiInstance.mdrSdtmVersionDatasetsDatasetVariablesGet(version, dataset)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetVariablesGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetVariablesGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **dataset** | **String**| SDTM Dataset Identifier |

### Return type

ApiRequest[[**SdtmDatasetVariables**](SdtmDatasetVariables.md)]


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


## mdrSdtmVersionDatasetsDatasetVariablesVarGet

> mdrSdtmVersionDatasetsDatasetVariablesVarGet(mdrSdtmVersionDatasetsDatasetVariablesVarGetRequest): ApiRequest[SdtmDatasetVariable]



Get SDTM Dataset Variable

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
    val apiInstance = StudyDataTabulationModelSDTMApi("https://library.cdisc.org/api")
    val version: String = 1-8 // String | CDISC Library Product Version

    val dataset: String = DM // String | SDTM Dataset Identifier

    val `var`: String = SUBJID // String | SDTM Variable Identifier
    
    val request = apiInstance.mdrSdtmVersionDatasetsDatasetVariablesVarGet(version, dataset, `var`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetVariablesVarGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetVariablesVarGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **dataset** | **String**| SDTM Dataset Identifier |
 **`var`** | **String**| SDTM Variable Identifier |

### Return type

ApiRequest[[**SdtmDatasetVariable**](SdtmDatasetVariable.md)]


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


## mdrSdtmVersionDatasetsGet

> mdrSdtmVersionDatasetsGet(mdrSdtmVersionDatasetsGetRequest): ApiRequest[SdtmDatasets]



Get SDTM Dataset List

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
    val apiInstance = StudyDataTabulationModelSDTMApi("https://library.cdisc.org/api")
    val version: String = 1-8 // String | CDISC Library Product Version
    
    val request = apiInstance.mdrSdtmVersionDatasetsGet(version)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |

### Return type

ApiRequest[[**SdtmDatasets**](SdtmDatasets.md)]


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


## mdrSdtmVersionGet

> mdrSdtmVersionGet(mdrSdtmVersionGetRequest): ApiRequest[SdtmProduct]



Get SDTM product

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
    val apiInstance = StudyDataTabulationModelSDTMApi("https://library.cdisc.org/api")
    val version: String = 1-8 // String | CDISC Library Product Version
    
    val request = apiInstance.mdrSdtmVersionGet(version)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |

### Return type

ApiRequest[[**SdtmProduct**](SdtmProduct.md)]


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

