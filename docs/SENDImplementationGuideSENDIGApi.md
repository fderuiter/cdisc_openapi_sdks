# SENDImplementationGuideSENDIGApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrRootSendigDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#mdrRootSendigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} |  |
| [**mdrSendigVersionClassesClassDatasetsGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassDatasetsGet) | **GET** /mdr/sendig/{version}/classes/{class}/datasets |  |
| [**mdrSendigVersionClassesClassGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassGet) | **GET** /mdr/sendig/{version}/classes/{class} |  |
| [**mdrSendigVersionClassesGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesGet) | **GET** /mdr/sendig/{version}/classes |  |
| [**mdrSendigVersionDatasetsDatasetGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetGet) | **GET** /mdr/sendig/{version}/datasets/{dataset} |  |
| [**mdrSendigVersionDatasetsDatasetVariablesGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables |  |
| [**mdrSendigVersionDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} |  |
| [**mdrSendigVersionDatasetsGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsGet) | **GET** /mdr/sendig/{version}/datasets |  |
| [**mdrSendigVersionGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionGet) | **GET** /mdr/sendig/{version} |  |


<a id="mdrRootSendigDatasetsDatasetVariablesVarGet"></a>
# **mdrRootSendigDatasetsDatasetVariablesVarGet**
> RootSendigDatasetVariable mdrRootSendigDatasetsDatasetVariablesVarGet(dataset, `var`)



Get Root SENDIG Dataset Variable

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SENDImplementationGuideSENDIGApi()
val dataset : kotlin.String = VS // kotlin.String | SENDIG Dataset Identifier
val `var` : kotlin.String = VSTEST // kotlin.String | SENDIG Variable Identifier
try {
    val result : RootSendigDatasetVariable = apiInstance.mdrRootSendigDatasetsDatasetVariablesVarGet(dataset, `var`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SENDImplementationGuideSENDIGApi#mdrRootSendigDatasetsDatasetVariablesVarGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SENDImplementationGuideSENDIGApi#mdrRootSendigDatasetsDatasetVariablesVarGet")
    e.printStackTrace()
}
```

### Parameters
| **dataset** | **kotlin.String**| SENDIG Dataset Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;var&#x60;** | **kotlin.String**| SENDIG Variable Identifier | |

### Return type

[**RootSendigDatasetVariable**](RootSendigDatasetVariable.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSendigVersionClassesClassDatasetsGet"></a>
# **mdrSendigVersionClassesClassDatasetsGet**
> SendigClassDatasets mdrSendigVersionClassesClassDatasetsGet(version, propertyClass)



Get SENDIG Class Dataset List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SENDImplementationGuideSENDIGApi()
val version : kotlin.String = 3-1 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = Findings // kotlin.String | SENDIG Class Identifier
try {
    val result : SendigClassDatasets = apiInstance.mdrSendigVersionClassesClassDatasetsGet(version, propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesClassDatasetsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesClassDatasetsGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **propertyClass** | **kotlin.String**| SENDIG Class Identifier | |

### Return type

[**SendigClassDatasets**](SendigClassDatasets.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSendigVersionClassesClassGet"></a>
# **mdrSendigVersionClassesClassGet**
> SendigClass mdrSendigVersionClassesClassGet(version, propertyClass)



Get SENDIG Class

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SENDImplementationGuideSENDIGApi()
val version : kotlin.String = 3-1 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = Findings // kotlin.String | SENDIG Class Identifier
try {
    val result : SendigClass = apiInstance.mdrSendigVersionClassesClassGet(version, propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesClassGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesClassGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **propertyClass** | **kotlin.String**| SENDIG Class Identifier | |

### Return type

[**SendigClass**](SendigClass.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSendigVersionClassesGet"></a>
# **mdrSendigVersionClassesGet**
> SendigClasses mdrSendigVersionClassesGet(version)



Get SENDIG Class List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SENDImplementationGuideSENDIGApi()
val version : kotlin.String = 3-1 // kotlin.String | CDISC Library Product Version
try {
    val result : SendigClasses = apiInstance.mdrSendigVersionClassesGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**SendigClasses**](SendigClasses.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSendigVersionDatasetsDatasetGet"></a>
# **mdrSendigVersionDatasetsDatasetGet**
> SendigDataset mdrSendigVersionDatasetsDatasetGet(version, dataset)



Get SENDIG Dataset

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SENDImplementationGuideSENDIGApi()
val version : kotlin.String = 3-1 // kotlin.String | CDISC Library Product Version
val dataset : kotlin.String = VS // kotlin.String | SENDIG Class Identifier
try {
    val result : SendigDataset = apiInstance.mdrSendigVersionDatasetsDatasetGet(version, dataset)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **dataset** | **kotlin.String**| SENDIG Class Identifier | |

### Return type

[**SendigDataset**](SendigDataset.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSendigVersionDatasetsDatasetVariablesGet"></a>
# **mdrSendigVersionDatasetsDatasetVariablesGet**
> SendigDatasetVariables mdrSendigVersionDatasetsDatasetVariablesGet(version, dataset)



Get SENDIG Dataset Variable List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SENDImplementationGuideSENDIGApi()
val version : kotlin.String = 3-1 // kotlin.String | CDISC Library Product Version
val dataset : kotlin.String = VS // kotlin.String | SENDIG Class Identifier
try {
    val result : SendigDatasetVariables = apiInstance.mdrSendigVersionDatasetsDatasetVariablesGet(version, dataset)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetVariablesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetVariablesGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **dataset** | **kotlin.String**| SENDIG Class Identifier | |

### Return type

[**SendigDatasetVariables**](SendigDatasetVariables.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSendigVersionDatasetsDatasetVariablesVarGet"></a>
# **mdrSendigVersionDatasetsDatasetVariablesVarGet**
> SendigDatasetVariable mdrSendigVersionDatasetsDatasetVariablesVarGet(version, dataset, `var`)



Get SENDIG Dataset Variable

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SENDImplementationGuideSENDIGApi()
val version : kotlin.String = 3-1 // kotlin.String | CDISC Library Product Version
val dataset : kotlin.String = VS // kotlin.String | SENDIG Class Identifier
val `var` : kotlin.String = VSTEST // kotlin.String | SENDIG Variable Identifier
try {
    val result : SendigDatasetVariable = apiInstance.mdrSendigVersionDatasetsDatasetVariablesVarGet(version, dataset, `var`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetVariablesVarGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetVariablesVarGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| **dataset** | **kotlin.String**| SENDIG Class Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;var&#x60;** | **kotlin.String**| SENDIG Variable Identifier | |

### Return type

[**SendigDatasetVariable**](SendigDatasetVariable.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSendigVersionDatasetsGet"></a>
# **mdrSendigVersionDatasetsGet**
> SendigDatasets mdrSendigVersionDatasetsGet(version)



Get SENDIG Dataset List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SENDImplementationGuideSENDIGApi()
val version : kotlin.String = 3-1 // kotlin.String | CDISC Library Product Version
try {
    val result : SendigDatasets = apiInstance.mdrSendigVersionDatasetsGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**SendigDatasets**](SendigDatasets.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSendigVersionGet"></a>
# **mdrSendigVersionGet**
> SendigProduct mdrSendigVersionGet(version)



Get SENDIG product

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SENDImplementationGuideSENDIGApi()
val version : kotlin.String = 3-1 // kotlin.String | CDISC Library Product Version
try {
    val result : SendigProduct = apiInstance.mdrSendigVersionGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SENDImplementationGuideSENDIGApi#mdrSendigVersionGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**SendigProduct**](SendigProduct.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

