# ControlledTerminologyCTApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrCtPackagesGet**](ControlledTerminologyCTApi.md#mdrCtPackagesGet) | **GET** /mdr/ct/packages |  |
| [**mdrCtPackagesPackageCodelistsCodelistGet**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} |  |
| [**mdrCtPackagesPackageCodelistsCodelistTermsGet**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistTermsGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms |  |
| [**mdrCtPackagesPackageCodelistsCodelistTermsTermGet**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistTermsTermGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} |  |
| [**mdrCtPackagesPackageCodelistsGet**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsGet) | **GET** /mdr/ct/packages/{package}/codelists |  |
| [**mdrCtPackagesProductGet**](ControlledTerminologyCTApi.md#mdrCtPackagesProductGet) | **GET** /mdr/ct/packages/{product} |  |
| [**mdrRootCtProductGroupCodelistsCodelistGet**](ControlledTerminologyCTApi.md#mdrRootCtProductGroupCodelistsCodelistGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} |  |
| [**mdrRootCtProductGroupCodelistsCodelistTermsTermGet**](ControlledTerminologyCTApi.md#mdrRootCtProductGroupCodelistsCodelistTermsTermGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} |  |


<a id="mdrCtPackagesGet"></a>
# **mdrCtPackagesGet**
> CtPackages mdrCtPackagesGet()



Get CDISC Library CT Package List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ControlledTerminologyCTApi()
try {
    val result : CtPackages = apiInstance.mdrCtPackagesGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ControlledTerminologyCTApi#mdrCtPackagesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ControlledTerminologyCTApi#mdrCtPackagesGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CtPackages**](CtPackages.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCtPackagesPackageCodelistsCodelistGet"></a>
# **mdrCtPackagesPackageCodelistsCodelistGet**
> CtCodelist mdrCtPackagesPackageCodelistsCodelistGet(`package`, codelist)



Get CDISC Library CT Package Codelist

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ControlledTerminologyCTApi()
val `package` : kotlin.String = sdtmct-2019-12-20 // kotlin.String | CT Package Identifier
val codelist : kotlin.String = C67154 // kotlin.String | CT Codelist Identifier
try {
    val result : CtCodelist = apiInstance.mdrCtPackagesPackageCodelistsCodelistGet(`package`, codelist)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ControlledTerminologyCTApi#mdrCtPackagesPackageCodelistsCodelistGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ControlledTerminologyCTApi#mdrCtPackagesPackageCodelistsCodelistGet")
    e.printStackTrace()
}
```

### Parameters
| **&#x60;package&#x60;** | **kotlin.String**| CT Package Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **codelist** | **kotlin.String**| CT Codelist Identifier | |

### Return type

[**CtCodelist**](CtCodelist.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCtPackagesPackageCodelistsCodelistTermsGet"></a>
# **mdrCtPackagesPackageCodelistsCodelistTermsGet**
> CtCodelistTerms mdrCtPackagesPackageCodelistsCodelistTermsGet(`package`, codelist)



Get CDISC Library CT Package Codelist Term List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ControlledTerminologyCTApi()
val `package` : kotlin.String = sdtmct-2019-12-20 // kotlin.String | CT Package Identifier
val codelist : kotlin.String = C67154 // kotlin.String | CT Codelist Identifier
try {
    val result : CtCodelistTerms = apiInstance.mdrCtPackagesPackageCodelistsCodelistTermsGet(`package`, codelist)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ControlledTerminologyCTApi#mdrCtPackagesPackageCodelistsCodelistTermsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ControlledTerminologyCTApi#mdrCtPackagesPackageCodelistsCodelistTermsGet")
    e.printStackTrace()
}
```

### Parameters
| **&#x60;package&#x60;** | **kotlin.String**| CT Package Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **codelist** | **kotlin.String**| CT Codelist Identifier | |

### Return type

[**CtCodelistTerms**](CtCodelistTerms.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCtPackagesPackageCodelistsCodelistTermsTermGet"></a>
# **mdrCtPackagesPackageCodelistsCodelistTermsTermGet**
> CtTerm mdrCtPackagesPackageCodelistsCodelistTermsTermGet(`package`, codelist, term)



Get CDISC Library CT Package Codelist Term

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ControlledTerminologyCTApi()
val `package` : kotlin.String = sdtmct-2019-12-20 // kotlin.String | CT Package Product Identifier
val codelist : kotlin.String = C67154 // kotlin.String | CT Codelist Identifier
val term : kotlin.String = C64796 // kotlin.String | CT Codelist Term Identifier
try {
    val result : CtTerm = apiInstance.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(`package`, codelist, term)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ControlledTerminologyCTApi#mdrCtPackagesPackageCodelistsCodelistTermsTermGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ControlledTerminologyCTApi#mdrCtPackagesPackageCodelistsCodelistTermsTermGet")
    e.printStackTrace()
}
```

### Parameters
| **&#x60;package&#x60;** | **kotlin.String**| CT Package Product Identifier | |
| **codelist** | **kotlin.String**| CT Codelist Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **term** | **kotlin.String**| CT Codelist Term Identifier | |

### Return type

[**CtTerm**](CtTerm.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCtPackagesPackageCodelistsGet"></a>
# **mdrCtPackagesPackageCodelistsGet**
> CtPackageCodelists mdrCtPackagesPackageCodelistsGet(`package`)



Get CDISC Library CT Package Codelist List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ControlledTerminologyCTApi()
val `package` : kotlin.String = sdtmct-2019-12-20 // kotlin.String | CT Package Identifier
try {
    val result : CtPackageCodelists = apiInstance.mdrCtPackagesPackageCodelistsGet(`package`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ControlledTerminologyCTApi#mdrCtPackagesPackageCodelistsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ControlledTerminologyCTApi#mdrCtPackagesPackageCodelistsGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;package&#x60;** | **kotlin.String**| CT Package Identifier | |

### Return type

[**CtPackageCodelists**](CtPackageCodelists.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCtPackagesProductGet"></a>
# **mdrCtPackagesProductGet**
> CtPackage mdrCtPackagesProductGet(product)



Get CDISC Library CT Package

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ControlledTerminologyCTApi()
val product : kotlin.String = sdtmct-2019-12-20 // kotlin.String | CT Package Product Identifier
try {
    val result : CtPackage = apiInstance.mdrCtPackagesProductGet(product)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ControlledTerminologyCTApi#mdrCtPackagesProductGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ControlledTerminologyCTApi#mdrCtPackagesProductGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product** | **kotlin.String**| CT Package Product Identifier | |

### Return type

[**CtPackage**](CtPackage.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrRootCtProductGroupCodelistsCodelistGet"></a>
# **mdrRootCtProductGroupCodelistsCodelistGet**
> RootCtCodelist mdrRootCtProductGroupCodelistsCodelistGet(productGroup, codelist)



Get CDISC Library Root CT Codelist

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ControlledTerminologyCTApi()
val productGroup : kotlin.String = sdtmct // kotlin.String | CT Product Group Identifier
val codelist : kotlin.String = C67154 // kotlin.String | CT Codelist Identifier
try {
    val result : RootCtCodelist = apiInstance.mdrRootCtProductGroupCodelistsCodelistGet(productGroup, codelist)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ControlledTerminologyCTApi#mdrRootCtProductGroupCodelistsCodelistGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ControlledTerminologyCTApi#mdrRootCtProductGroupCodelistsCodelistGet")
    e.printStackTrace()
}
```

### Parameters
| **productGroup** | **kotlin.String**| CT Product Group Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **codelist** | **kotlin.String**| CT Codelist Identifier | |

### Return type

[**RootCtCodelist**](RootCtCodelist.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrRootCtProductGroupCodelistsCodelistTermsTermGet"></a>
# **mdrRootCtProductGroupCodelistsCodelistTermsTermGet**
> RootCtTerm mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup, codelist, term)



Get CDISC Library Root CT Term

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ControlledTerminologyCTApi()
val productGroup : kotlin.String = sdtmct // kotlin.String | CT Product Group Identifier
val codelist : kotlin.String = C67154 // kotlin.String | CT Codelist Identifier
val term : kotlin.String = C64796 // kotlin.String | CT Codelist Term Identifier
try {
    val result : RootCtTerm = apiInstance.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup, codelist, term)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ControlledTerminologyCTApi#mdrRootCtProductGroupCodelistsCodelistTermsTermGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ControlledTerminologyCTApi#mdrRootCtProductGroupCodelistsCodelistTermsTermGet")
    e.printStackTrace()
}
```

### Parameters
| **productGroup** | **kotlin.String**| CT Product Group Identifier | |
| **codelist** | **kotlin.String**| CT Codelist Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **term** | **kotlin.String**| CT Codelist Term Identifier | |

### Return type

[**RootCtTerm**](RootCtTerm.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

