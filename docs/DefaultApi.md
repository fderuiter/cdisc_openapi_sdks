# DefaultApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrAboutGet**](DefaultApi.md#mdrAboutGet) | **GET** /mdr/about |  |
| [**mdrLastupdatedGet**](DefaultApi.md#mdrLastupdatedGet) | **GET** /mdr/lastupdated |  |
| [**mdrProductsDataAnalysisGet**](DefaultApi.md#mdrProductsDataAnalysisGet) | **GET** /mdr/products/DataAnalysis |  |
| [**mdrProductsDataCollectionGet**](DefaultApi.md#mdrProductsDataCollectionGet) | **GET** /mdr/products/DataCollection |  |
| [**mdrProductsDataTabulationGet**](DefaultApi.md#mdrProductsDataTabulationGet) | **GET** /mdr/products/DataTabulation |  |
| [**mdrProductsGet**](DefaultApi.md#mdrProductsGet) | **GET** /mdr/products |  |
| [**mdrProductsMeasuresGet**](DefaultApi.md#mdrProductsMeasuresGet) | **GET** /mdr/products/Measures |  |
| [**mdrProductsTerminologyGet**](DefaultApi.md#mdrProductsTerminologyGet) | **GET** /mdr/products/Terminology |  |


<a id="mdrAboutGet"></a>
# **mdrAboutGet**
> About mdrAboutGet()



Get Information About CDISC Library

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
try {
    val result : About = apiInstance.mdrAboutGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#mdrAboutGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#mdrAboutGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**About**](About.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrLastupdatedGet"></a>
# **mdrLastupdatedGet**
> Lastupdated mdrLastupdatedGet()



Get CDISC Library Last Updated

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
try {
    val result : Lastupdated = apiInstance.mdrLastupdatedGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#mdrLastupdatedGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#mdrLastupdatedGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Lastupdated**](Lastupdated.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrProductsDataAnalysisGet"></a>
# **mdrProductsDataAnalysisGet**
> ProductgroupDataAnalysis mdrProductsDataAnalysisGet()



Get CDISC Library Product Group Data Analysis

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
try {
    val result : ProductgroupDataAnalysis = apiInstance.mdrProductsDataAnalysisGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#mdrProductsDataAnalysisGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#mdrProductsDataAnalysisGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupDataAnalysis**](ProductgroupDataAnalysis.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrProductsDataCollectionGet"></a>
# **mdrProductsDataCollectionGet**
> ProductgroupDataCollection mdrProductsDataCollectionGet()



Get CDISC Library Product Group Data Collection

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
try {
    val result : ProductgroupDataCollection = apiInstance.mdrProductsDataCollectionGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#mdrProductsDataCollectionGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#mdrProductsDataCollectionGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupDataCollection**](ProductgroupDataCollection.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrProductsDataTabulationGet"></a>
# **mdrProductsDataTabulationGet**
> ProductgroupDataTabulation mdrProductsDataTabulationGet()



Get CDISC Library Product Group Data Tabulation

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
try {
    val result : ProductgroupDataTabulation = apiInstance.mdrProductsDataTabulationGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#mdrProductsDataTabulationGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#mdrProductsDataTabulationGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupDataTabulation**](ProductgroupDataTabulation.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrProductsGet"></a>
# **mdrProductsGet**
> Products mdrProductsGet()



Get CDISC Library Products

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
try {
    val result : Products = apiInstance.mdrProductsGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#mdrProductsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#mdrProductsGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Products**](Products.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrProductsMeasuresGet"></a>
# **mdrProductsMeasuresGet**
> ProductgroupQrs mdrProductsMeasuresGet()



Get CDISC Library Product Group QRS

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
try {
    val result : ProductgroupQrs = apiInstance.mdrProductsMeasuresGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#mdrProductsMeasuresGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#mdrProductsMeasuresGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupQrs**](ProductgroupQrs.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrProductsTerminologyGet"></a>
# **mdrProductsTerminologyGet**
> ProductgroupTerminology mdrProductsTerminologyGet()



Get CDISC Library Product Group Terminology

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DefaultApi()
try {
    val result : ProductgroupTerminology = apiInstance.mdrProductsTerminologyGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#mdrProductsTerminologyGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#mdrProductsTerminologyGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupTerminology**](ProductgroupTerminology.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

