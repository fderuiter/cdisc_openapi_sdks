# ClinicalDataAcquisitionStandardsHarmonizationCDASHApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCdashVersionClassesClassDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassDomainsGet) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
[**mdrCdashVersionClassesClassDomainsGetWithHttpInfo**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassDomainsGetWithHttpInfo) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
[**mdrCdashVersionClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassFieldsFieldGet) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**mdrCdashVersionClassesClassFieldsFieldGetWithHttpInfo**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassFieldsFieldGetWithHttpInfo) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**mdrCdashVersionClassesClassGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassGet) | **GET** /mdr/cdash/{version}/classes/{class} | 
[**mdrCdashVersionClassesClassGetWithHttpInfo**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassGetWithHttpInfo) | **GET** /mdr/cdash/{version}/classes/{class} | 
[**mdrCdashVersionClassesGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesGet) | **GET** /mdr/cdash/{version}/classes | 
[**mdrCdashVersionClassesGetWithHttpInfo**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesGetWithHttpInfo) | **GET** /mdr/cdash/{version}/classes | 
[**mdrCdashVersionDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**mdrCdashVersionDomainsDomainFieldsFieldGetWithHttpInfo**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsFieldGetWithHttpInfo) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**mdrCdashVersionDomainsDomainFieldsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
[**mdrCdashVersionDomainsDomainFieldsGetWithHttpInfo**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsGetWithHttpInfo) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
[**mdrCdashVersionDomainsDomainGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainGet) | **GET** /mdr/cdash/{version}/domains/{domain} | 
[**mdrCdashVersionDomainsDomainGetWithHttpInfo**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainGetWithHttpInfo) | **GET** /mdr/cdash/{version}/domains/{domain} | 
[**mdrCdashVersionDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsGet) | **GET** /mdr/cdash/{version}/domains | 
[**mdrCdashVersionDomainsGetWithHttpInfo**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsGetWithHttpInfo) | **GET** /mdr/cdash/{version}/domains | 
[**mdrCdashVersionGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionGet) | **GET** /mdr/cdash/{version} | 
[**mdrCdashVersionGetWithHttpInfo**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionGetWithHttpInfo) | **GET** /mdr/cdash/{version} | 
[**mdrRootCdashClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashClassesClassFieldsFieldGet) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**mdrRootCdashClassesClassFieldsFieldGetWithHttpInfo**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashClassesClassFieldsFieldGetWithHttpInfo) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**mdrRootCdashDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 
[**mdrRootCdashDomainsDomainFieldsFieldGetWithHttpInfo**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashDomainsDomainFieldsFieldGetWithHttpInfo) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 



## mdrCdashVersionClassesClassDomainsGet

> mdrCdashVersionClassesClassDomainsGet(mdrCdashVersionClassesClassDomainsGetRequest): ApiRequest[CdashClassDomains]



Get CDASH Class Domain List

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
    val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi("https://library.cdisc.org/api")
    val version: String = 1-1 // String | CDISC Library Product Version

    val `class`: String = SpecialPurpose // String | CDASH Class Identifier
    
    val request = apiInstance.mdrCdashVersionClassesClassDomainsGet(version, `class`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassDomainsGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassDomainsGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **`class`** | **String**| CDASH Class Identifier |

### Return type

ApiRequest[[**CdashClassDomains**](CdashClassDomains.md)]


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


## mdrCdashVersionClassesClassFieldsFieldGet

> mdrCdashVersionClassesClassFieldsFieldGet(mdrCdashVersionClassesClassFieldsFieldGetRequest): ApiRequest[CdashClassField]



Get CDASH Class Field

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
    val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi("https://library.cdisc.org/api")
    val version: String = 1-1 // String | CDISC Library Product Version

    val `class`: String = Timing // String | CDASH Class Identifier

    val field: String = --DAT // String | CDASH Field Identifier
    
    val request = apiInstance.mdrCdashVersionClassesClassFieldsFieldGet(version, `class`, field)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassFieldsFieldGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassFieldsFieldGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **`class`** | **String**| CDASH Class Identifier |
 **field** | **String**| CDASH Field Identifier |

### Return type

ApiRequest[[**CdashClassField**](CdashClassField.md)]


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


## mdrCdashVersionClassesClassGet

> mdrCdashVersionClassesClassGet(mdrCdashVersionClassesClassGetRequest): ApiRequest[CdashClass]



Get CDASH Class

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
    val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi("https://library.cdisc.org/api")
    val version: String = 1-1 // String | CDISC Library Product Version

    val `class`: String = Timing // String | CDASH Class Identifier
    
    val request = apiInstance.mdrCdashVersionClassesClassGet(version, `class`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **`class`** | **String**| CDASH Class Identifier |

### Return type

ApiRequest[[**CdashClass**](CdashClass.md)]


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


## mdrCdashVersionClassesGet

> mdrCdashVersionClassesGet(mdrCdashVersionClassesGetRequest): ApiRequest[CdashProductClasses]



Get CDASH Class List

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
    val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi("https://library.cdisc.org/api")
    val version: String = 1-1 // String | CDISC Library Product Version
    
    val request = apiInstance.mdrCdashVersionClassesGet(version)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |

### Return type

ApiRequest[[**CdashProductClasses**](CdashProductClasses.md)]


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


## mdrCdashVersionDomainsDomainFieldsFieldGet

> mdrCdashVersionDomainsDomainFieldsFieldGet(mdrCdashVersionDomainsDomainFieldsFieldGetRequest): ApiRequest[CdashDomainField]



Get CDASH Domain Field

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
    val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi("https://library.cdisc.org/api")
    val version: String = 1-1 // String | CDISC Library Product Version

    val domain: String = DM // String | CDASH Domain Identifier

    val field: String = AGE // String | CDASH Field Identifier
    
    val request = apiInstance.mdrCdashVersionDomainsDomainFieldsFieldGet(version, domain, field)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainFieldsFieldGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainFieldsFieldGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **domain** | **String**| CDASH Domain Identifier |
 **field** | **String**| CDASH Field Identifier |

### Return type

ApiRequest[[**CdashDomainField**](CdashDomainField.md)]


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


## mdrCdashVersionDomainsDomainFieldsGet

> mdrCdashVersionDomainsDomainFieldsGet(mdrCdashVersionDomainsDomainFieldsGetRequest): ApiRequest[CdashDomainFields]



Get CDASH Domain Field List

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
    val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi("https://library.cdisc.org/api")
    val version: String = 1-1 // String | CDISC Library Product Version

    val domain: String = DM // String | CDASH Domain Identifier
    
    val request = apiInstance.mdrCdashVersionDomainsDomainFieldsGet(version, domain)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainFieldsGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainFieldsGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **domain** | **String**| CDASH Domain Identifier |

### Return type

ApiRequest[[**CdashDomainFields**](CdashDomainFields.md)]


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


## mdrCdashVersionDomainsDomainGet

> mdrCdashVersionDomainsDomainGet(mdrCdashVersionDomainsDomainGetRequest): ApiRequest[CdashDomain]



Get CDASH Domain

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
    val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi("https://library.cdisc.org/api")
    val version: String = 1-1 // String | CDISC Library Product Version

    val domain: String = DM // String | CDASH Domain Identifier
    
    val request = apiInstance.mdrCdashVersionDomainsDomainGet(version, domain)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |
 **domain** | **String**| CDASH Domain Identifier |

### Return type

ApiRequest[[**CdashDomain**](CdashDomain.md)]


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


## mdrCdashVersionDomainsGet

> mdrCdashVersionDomainsGet(mdrCdashVersionDomainsGetRequest): ApiRequest[CdashProductDomains]



Get CDASH Domain List

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
    val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi("https://library.cdisc.org/api")
    val version: String = 1-1 // String | CDISC Library Product Version
    
    val request = apiInstance.mdrCdashVersionDomainsGet(version)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |

### Return type

ApiRequest[[**CdashProductDomains**](CdashProductDomains.md)]


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


## mdrCdashVersionGet

> mdrCdashVersionGet(mdrCdashVersionGetRequest): ApiRequest[CdashProduct]



Get CDASH Product

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
    val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi("https://library.cdisc.org/api")
    val version: String = 1-1 // String | CDISC Library Product Version
    
    val request = apiInstance.mdrCdashVersionGet(version)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version |

### Return type

ApiRequest[[**CdashProduct**](CdashProduct.md)]


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


## mdrRootCdashClassesClassFieldsFieldGet

> mdrRootCdashClassesClassFieldsFieldGet(mdrRootCdashClassesClassFieldsFieldGetRequest): ApiRequest[RootCdashClassField]



Get Root CDASH Class Field

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
    val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi("https://library.cdisc.org/api")
    val `class`: String = Timing // String | CDASH Class Identifier

    val field: String = --DAT // String | CDASH Field Identifier
    
    val request = apiInstance.mdrRootCdashClassesClassFieldsFieldGet(`class`, field)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrRootCdashClassesClassFieldsFieldGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrRootCdashClassesClassFieldsFieldGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`class`** | **String**| CDASH Class Identifier |
 **field** | **String**| CDASH Field Identifier |

### Return type

ApiRequest[[**RootCdashClassField**](RootCdashClassField.md)]


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


## mdrRootCdashDomainsDomainFieldsFieldGet

> mdrRootCdashDomainsDomainFieldsFieldGet(mdrRootCdashDomainsDomainFieldsFieldGetRequest): ApiRequest[RootCdashDomainField]



Get Root CDASH Domain Field

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
    val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi("https://library.cdisc.org/api")
    val domain: String = DM // String | CDASH Domain Identifier

    val field: String = AGE // String | CDASH Field Identifier
    
    val request = apiInstance.mdrRootCdashDomainsDomainFieldsFieldGet(domain, field)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrRootCdashDomainsDomainFieldsFieldGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrRootCdashDomainsDomainFieldsFieldGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| CDASH Domain Identifier |
 **field** | **String**| CDASH Field Identifier |

### Return type

ApiRequest[[**RootCdashDomainField**](RootCdashDomainField.md)]


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

