# StudyDataTabulationModelSDTMApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrRootSdtmClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmClassesClassVariablesVarGet) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} |  |
| [**mdrRootSdtmDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} |  |
| [**mdrSdtmVersionClassesClassDatasetsGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassDatasetsGet) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets |  |
| [**mdrSdtmVersionClassesClassGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassGet) | **GET** /mdr/sdtm/{version}/classes/{class} |  |
| [**mdrSdtmVersionClassesClassVariablesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables |  |
| [**mdrSdtmVersionClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesVarGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} |  |
| [**mdrSdtmVersionClassesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesGet) | **GET** /mdr/sdtm/{version}/classes |  |
| [**mdrSdtmVersionDatasetsDatasetGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset} |  |
| [**mdrSdtmVersionDatasetsDatasetVariablesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables |  |
| [**mdrSdtmVersionDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} |  |
| [**mdrSdtmVersionDatasetsGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsGet) | **GET** /mdr/sdtm/{version}/datasets |  |
| [**mdrSdtmVersionGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionGet) | **GET** /mdr/sdtm/{version} |  |


<a id="mdrRootSdtmClassesClassVariablesVarGet"></a>
# **mdrRootSdtmClassesClassVariablesVarGet**
> RootSdtmClassVariable mdrRootSdtmClassesClassVariablesVarGet(propertyClass, `var`)



Get Root of SDTM Class Variable

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StudyDataTabulationModelSDTMApi()
val propertyClass : kotlin.String = GeneralObservations // kotlin.String | SDTM Class Identifier
val `var` : kotlin.String = --DTC // kotlin.String | SDTM Variable Identifier
try {
    val result : RootSdtmClassVariable = apiInstance.mdrRootSdtmClassesClassVariablesVarGet(propertyClass, `var`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StudyDataTabulationModelSDTMApi#mdrRootSdtmClassesClassVariablesVarGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StudyDataTabulationModelSDTMApi#mdrRootSdtmClassesClassVariablesVarGet")
    e.printStackTrace()
}
```

### Parameters
| **propertyClass** | **kotlin.String**| SDTM Class Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;var&#x60;** | **kotlin.String**| SDTM Variable Identifier | |

### Return type

[**RootSdtmClassVariable**](RootSdtmClassVariable.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrRootSdtmDatasetsDatasetVariablesVarGet"></a>
# **mdrRootSdtmDatasetsDatasetVariablesVarGet**
> RootSdtmDatasetVariable mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset, `var`)



Get Root SDTM Dataset Variable

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StudyDataTabulationModelSDTMApi()
val dataset : kotlin.String = DM // kotlin.String | SDTM Dataset Identifier
val `var` : kotlin.String = SUBJID // kotlin.String | SDTM Variable Identifier
try {
    val result : RootSdtmDatasetVariable = apiInstance.mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset, `var`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StudyDataTabulationModelSDTMApi#mdrRootSdtmDatasetsDatasetVariablesVarGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StudyDataTabulationModelSDTMApi#mdrRootSdtmDatasetsDatasetVariablesVarGet")
    e.printStackTrace()
}
```

### Parameters
| **dataset** | **kotlin.String**| SDTM Dataset Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;var&#x60;** | **kotlin.String**| SDTM Variable Identifier | |

### Return type

[**RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmVersionClassesClassDatasetsGet"></a>
# **mdrSdtmVersionClassesClassDatasetsGet**
> SdtmClassDatasets mdrSdtmVersionClassesClassDatasetsGet(version, propertyClass)



Get SDTM Class Dataset List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StudyDataTabulationModelSDTMApi()
val version : kotlin.String = 1-8 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = SpecialPurpose // kotlin.String | SDTM Class Identifier
try {
    val result : SdtmClassDatasets = apiInstance.mdrSdtmVersionClassesClassDatasetsGet(version, propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassDatasetsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassDatasetsGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **propertyClass** | **kotlin.String**| SDTM Class Identifier | |

### Return type

[**SdtmClassDatasets**](SdtmClassDatasets.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmVersionClassesClassGet"></a>
# **mdrSdtmVersionClassesClassGet**
> SdtmClass mdrSdtmVersionClassesClassGet(version, propertyClass)



Get SDTM Class

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StudyDataTabulationModelSDTMApi()
val version : kotlin.String = 1-8 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = Findings // kotlin.String | SDTM Class Identifier
try {
    val result : SdtmClass = apiInstance.mdrSdtmVersionClassesClassGet(version, propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **propertyClass** | **kotlin.String**| SDTM Class Identifier | |

### Return type

[**SdtmClass**](SdtmClass.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmVersionClassesClassVariablesGet"></a>
# **mdrSdtmVersionClassesClassVariablesGet**
> SdtmClassVariables mdrSdtmVersionClassesClassVariablesGet(version, propertyClass)



Get SDTM Class Variable List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StudyDataTabulationModelSDTMApi()
val version : kotlin.String = 1-8 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = GeneralObservations // kotlin.String | SDTM Class Identifier
try {
    val result : SdtmClassVariables = apiInstance.mdrSdtmVersionClassesClassVariablesGet(version, propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassVariablesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassVariablesGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **propertyClass** | **kotlin.String**| SDTM Class Identifier | |

### Return type

[**SdtmClassVariables**](SdtmClassVariables.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmVersionClassesClassVariablesVarGet"></a>
# **mdrSdtmVersionClassesClassVariablesVarGet**
> SdtmClassVariable mdrSdtmVersionClassesClassVariablesVarGet(version, propertyClass, `var`)



Get SDTM Class Variable

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StudyDataTabulationModelSDTMApi()
val version : kotlin.String = 1-8 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = GeneralObservations // kotlin.String | SDTM Class Identifier
val `var` : kotlin.String = --DTC // kotlin.String | SDTM Variable Identifier
try {
    val result : SdtmClassVariable = apiInstance.mdrSdtmVersionClassesClassVariablesVarGet(version, propertyClass, `var`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassVariablesVarGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassVariablesVarGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| **propertyClass** | **kotlin.String**| SDTM Class Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;var&#x60;** | **kotlin.String**| SDTM Variable Identifier | |

### Return type

[**SdtmClassVariable**](SdtmClassVariable.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmVersionClassesGet"></a>
# **mdrSdtmVersionClassesGet**
> SdtmClasses mdrSdtmVersionClassesGet(version)



Get SDTM Class List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StudyDataTabulationModelSDTMApi()
val version : kotlin.String = 1-8 // kotlin.String | CDISC Library Product Version
try {
    val result : SdtmClasses = apiInstance.mdrSdtmVersionClassesGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**SdtmClasses**](SdtmClasses.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmVersionDatasetsDatasetGet"></a>
# **mdrSdtmVersionDatasetsDatasetGet**
> SdtmDataset mdrSdtmVersionDatasetsDatasetGet(version, dataset)



Get SDTM Dataset

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StudyDataTabulationModelSDTMApi()
val version : kotlin.String = 1-8 // kotlin.String | CDISC Library Product Version
val dataset : kotlin.String = DM // kotlin.String | SDTM Dataset Identifier
try {
    val result : SdtmDataset = apiInstance.mdrSdtmVersionDatasetsDatasetGet(version, dataset)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **dataset** | **kotlin.String**| SDTM Dataset Identifier | |

### Return type

[**SdtmDataset**](SdtmDataset.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmVersionDatasetsDatasetVariablesGet"></a>
# **mdrSdtmVersionDatasetsDatasetVariablesGet**
> SdtmDatasetVariables mdrSdtmVersionDatasetsDatasetVariablesGet(version, dataset)



Get SDTM Dataset Variable List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StudyDataTabulationModelSDTMApi()
val version : kotlin.String = 1-8 // kotlin.String | CDISC Library Product Version
val dataset : kotlin.String = DM // kotlin.String | SDTM Dataset Identifier
try {
    val result : SdtmDatasetVariables = apiInstance.mdrSdtmVersionDatasetsDatasetVariablesGet(version, dataset)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetVariablesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetVariablesGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **dataset** | **kotlin.String**| SDTM Dataset Identifier | |

### Return type

[**SdtmDatasetVariables**](SdtmDatasetVariables.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmVersionDatasetsDatasetVariablesVarGet"></a>
# **mdrSdtmVersionDatasetsDatasetVariablesVarGet**
> SdtmDatasetVariable mdrSdtmVersionDatasetsDatasetVariablesVarGet(version, dataset, `var`)



Get SDTM Dataset Variable

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StudyDataTabulationModelSDTMApi()
val version : kotlin.String = 1-8 // kotlin.String | CDISC Library Product Version
val dataset : kotlin.String = DM // kotlin.String | SDTM Dataset Identifier
val `var` : kotlin.String = SUBJID // kotlin.String | SDTM Variable Identifier
try {
    val result : SdtmDatasetVariable = apiInstance.mdrSdtmVersionDatasetsDatasetVariablesVarGet(version, dataset, `var`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetVariablesVarGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetVariablesVarGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| **dataset** | **kotlin.String**| SDTM Dataset Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;var&#x60;** | **kotlin.String**| SDTM Variable Identifier | |

### Return type

[**SdtmDatasetVariable**](SdtmDatasetVariable.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmVersionDatasetsGet"></a>
# **mdrSdtmVersionDatasetsGet**
> SdtmDatasets mdrSdtmVersionDatasetsGet(version)



Get SDTM Dataset List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StudyDataTabulationModelSDTMApi()
val version : kotlin.String = 1-8 // kotlin.String | CDISC Library Product Version
try {
    val result : SdtmDatasets = apiInstance.mdrSdtmVersionDatasetsGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**SdtmDatasets**](SdtmDatasets.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmVersionGet"></a>
# **mdrSdtmVersionGet**
> SdtmProduct mdrSdtmVersionGet(version)



Get SDTM product

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = StudyDataTabulationModelSDTMApi()
val version : kotlin.String = 1-8 // kotlin.String | CDISC Library Product Version
try {
    val result : SdtmProduct = apiInstance.mdrSdtmVersionGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**SdtmProduct**](SdtmProduct.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

