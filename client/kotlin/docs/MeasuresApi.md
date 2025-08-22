# MeasuresApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrQrsMeasureVersionGet**](MeasuresApi.md#mdrQrsMeasureVersionGet) | **GET** /mdr/qrs/{measure}/{version} |  |
| [**mdrQrsMeasureVersionItemsGet**](MeasuresApi.md#mdrQrsMeasureVersionItemsGet) | **GET** /mdr/qrs/{measure}/{version}/items |  |
| [**mdrQrsMeasureVersionItemsItemGet**](MeasuresApi.md#mdrQrsMeasureVersionItemsItemGet) | **GET** /mdr/qrs/{measure}/{version}/items/{item} |  |
| [**mdrQrsMeasureVersionResponsegroupsGet**](MeasuresApi.md#mdrQrsMeasureVersionResponsegroupsGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups |  |
| [**mdrQrsMeasureVersionResponsegroupsResponsegroupGet**](MeasuresApi.md#mdrQrsMeasureVersionResponsegroupsResponsegroupGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} |  |


<a id="mdrQrsMeasureVersionGet"></a>
# **mdrQrsMeasureVersionGet**
> QrsProduct mdrQrsMeasureVersionGet(measure, version)



Get QRS Product

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MeasuresApi()
val measure : kotlin.String = AIMS1 // kotlin.String | QRS Measure Identifier
val version : kotlin.String = 1-0 // kotlin.String | CDISC Library Product Version
try {
    val result : QrsProduct = apiInstance.mdrQrsMeasureVersionGet(measure, version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MeasuresApi#mdrQrsMeasureVersionGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MeasuresApi#mdrQrsMeasureVersionGet")
    e.printStackTrace()
}
```

### Parameters
| **measure** | **kotlin.String**| QRS Measure Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**QrsProduct**](QrsProduct.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrQrsMeasureVersionItemsGet"></a>
# **mdrQrsMeasureVersionItemsGet**
> QrsItems mdrQrsMeasureVersionItemsGet(measure, version)



Get QRS Item List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MeasuresApi()
val measure : kotlin.String = AIMS1 // kotlin.String | QRS Measure Identifier
val version : kotlin.String = 1-0 // kotlin.String | CDISC Library Product Version
try {
    val result : QrsItems = apiInstance.mdrQrsMeasureVersionItemsGet(measure, version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MeasuresApi#mdrQrsMeasureVersionItemsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MeasuresApi#mdrQrsMeasureVersionItemsGet")
    e.printStackTrace()
}
```

### Parameters
| **measure** | **kotlin.String**| QRS Measure Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**QrsItems**](QrsItems.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrQrsMeasureVersionItemsItemGet"></a>
# **mdrQrsMeasureVersionItemsItemGet**
> QrsItem mdrQrsMeasureVersionItemsItemGet(measure, version, item)



Get QRS Item

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MeasuresApi()
val measure : kotlin.String = AIMS1 // kotlin.String | QRS Measure Identifier
val version : kotlin.String = 1-0 // kotlin.String | CDISC Library Product Version
val item : kotlin.String = AIMS01.001 // kotlin.String | QRS Measure Item Identifier
try {
    val result : QrsItem = apiInstance.mdrQrsMeasureVersionItemsItemGet(measure, version, item)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MeasuresApi#mdrQrsMeasureVersionItemsItemGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MeasuresApi#mdrQrsMeasureVersionItemsItemGet")
    e.printStackTrace()
}
```

### Parameters
| **measure** | **kotlin.String**| QRS Measure Identifier | |
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **item** | **kotlin.String**| QRS Measure Item Identifier | |

### Return type

[**QrsItem**](QrsItem.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrQrsMeasureVersionResponsegroupsGet"></a>
# **mdrQrsMeasureVersionResponsegroupsGet**
> QrsResponsegroups mdrQrsMeasureVersionResponsegroupsGet(measure, version)



Get QRS Response Group List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MeasuresApi()
val measure : kotlin.String = AIMS1 // kotlin.String | QRS Measure Identifier
val version : kotlin.String = 1-0 // kotlin.String | CDISC Library Product Version
try {
    val result : QrsResponsegroups = apiInstance.mdrQrsMeasureVersionResponsegroupsGet(measure, version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MeasuresApi#mdrQrsMeasureVersionResponsegroupsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MeasuresApi#mdrQrsMeasureVersionResponsegroupsGet")
    e.printStackTrace()
}
```

### Parameters
| **measure** | **kotlin.String**| QRS Measure Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**QrsResponsegroups**](QrsResponsegroups.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrQrsMeasureVersionResponsegroupsResponsegroupGet"></a>
# **mdrQrsMeasureVersionResponsegroupsResponsegroupGet**
> QrsResponsegroup mdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure, version, responsegroup)



Get QRS Response Group

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MeasuresApi()
val measure : kotlin.String = AIMS1 // kotlin.String | QRS Measure Identifier
val version : kotlin.String = 1-0 // kotlin.String | CDISC Library Product Version
val responsegroup : kotlin.String = AIMS1.11to12 // kotlin.String | QRS Measure's Response Group Identifier
try {
    val result : QrsResponsegroup = apiInstance.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure, version, responsegroup)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MeasuresApi#mdrQrsMeasureVersionResponsegroupsResponsegroupGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MeasuresApi#mdrQrsMeasureVersionResponsegroupsResponsegroupGet")
    e.printStackTrace()
}
```

### Parameters
| **measure** | **kotlin.String**| QRS Measure Identifier | |
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **responsegroup** | **kotlin.String**| QRS Measure&#39;s Response Group Identifier | |

### Return type

[**QrsResponsegroup**](QrsResponsegroup.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

