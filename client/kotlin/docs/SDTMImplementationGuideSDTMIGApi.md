# SDTMImplementationGuideSDTMIGApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrRootSdtmigDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGApi.md#mdrRootSdtmigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} |  |
| [**mdrSdtmigVersionClassesClassDatasetsGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesClassDatasetsGet) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets |  |
| [**mdrSdtmigVersionClassesClassGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesClassGet) | **GET** /mdr/sdtmig/{version}/classes/{class} |  |
| [**mdrSdtmigVersionClassesGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesGet) | **GET** /mdr/sdtmig/{version}/classes |  |
| [**mdrSdtmigVersionDatasetsDatasetGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} |  |
| [**mdrSdtmigVersionDatasetsDatasetVariablesGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables |  |
| [**mdrSdtmigVersionDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} |  |
| [**mdrSdtmigVersionDatasetsGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsGet) | **GET** /mdr/sdtmig/{version}/datasets |  |
| [**mdrSdtmigVersionGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionGet) | **GET** /mdr/sdtmig/{version} |  |


<a id="mdrRootSdtmigDatasetsDatasetVariablesVarGet"></a>
# **mdrRootSdtmigDatasetsDatasetVariablesVarGet**
> RootSdtmigDatasetVariable mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset, `var`)



Get Root SDTMIG Dataset Variable

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SDTMImplementationGuideSDTMIGApi()
val dataset : kotlin.String = DM // kotlin.String | SDTMIG Dataset Identifier
val `var` : kotlin.String = SUBJID // kotlin.String | SDTMIG Variable Identifier
try {
    val result : RootSdtmigDatasetVariable = apiInstance.mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset, `var`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SDTMImplementationGuideSDTMIGApi#mdrRootSdtmigDatasetsDatasetVariablesVarGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SDTMImplementationGuideSDTMIGApi#mdrRootSdtmigDatasetsDatasetVariablesVarGet")
    e.printStackTrace()
}
```

### Parameters
| **dataset** | **kotlin.String**| SDTMIG Dataset Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;var&#x60;** | **kotlin.String**| SDTMIG Variable Identifier | |

### Return type

[**RootSdtmigDatasetVariable**](RootSdtmigDatasetVariable.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmigVersionClassesClassDatasetsGet"></a>
# **mdrSdtmigVersionClassesClassDatasetsGet**
> SdtmigClassDatasets mdrSdtmigVersionClassesClassDatasetsGet(version, propertyClass)



Get SDTMIG Class Dataset List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SDTMImplementationGuideSDTMIGApi()
val version : kotlin.String = 3-3 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = Findings // kotlin.String | SDTMIG Class Identifier
try {
    val result : SdtmigClassDatasets = apiInstance.mdrSdtmigVersionClassesClassDatasetsGet(version, propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionClassesClassDatasetsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionClassesClassDatasetsGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **propertyClass** | **kotlin.String**| SDTMIG Class Identifier | |

### Return type

[**SdtmigClassDatasets**](SdtmigClassDatasets.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmigVersionClassesClassGet"></a>
# **mdrSdtmigVersionClassesClassGet**
> SdtmigClass mdrSdtmigVersionClassesClassGet(version, propertyClass)



Get SDTMIG Class

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SDTMImplementationGuideSDTMIGApi()
val version : kotlin.String = 3-3 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = Findings // kotlin.String | SDTMIG Class Identifier
try {
    val result : SdtmigClass = apiInstance.mdrSdtmigVersionClassesClassGet(version, propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionClassesClassGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionClassesClassGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **propertyClass** | **kotlin.String**| SDTMIG Class Identifier | |

### Return type

[**SdtmigClass**](SdtmigClass.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmigVersionClassesGet"></a>
# **mdrSdtmigVersionClassesGet**
> SdtmigClasses mdrSdtmigVersionClassesGet(version)



Get SDTMIG Class List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SDTMImplementationGuideSDTMIGApi()
val version : kotlin.String = 3-3 // kotlin.String | CDISC Library Product Version
try {
    val result : SdtmigClasses = apiInstance.mdrSdtmigVersionClassesGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionClassesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionClassesGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**SdtmigClasses**](SdtmigClasses.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmigVersionDatasetsDatasetGet"></a>
# **mdrSdtmigVersionDatasetsDatasetGet**
> SdtmigDataset mdrSdtmigVersionDatasetsDatasetGet(version, dataset)



Get SDTMIG Dataset

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SDTMImplementationGuideSDTMIGApi()
val version : kotlin.String = 3-3 // kotlin.String | CDISC Library Product Version
val dataset : kotlin.String = LB // kotlin.String | SDTMIG Dataset Identifier
try {
    val result : SdtmigDataset = apiInstance.mdrSdtmigVersionDatasetsDatasetGet(version, dataset)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionDatasetsDatasetGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionDatasetsDatasetGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **dataset** | **kotlin.String**| SDTMIG Dataset Identifier | |

### Return type

[**SdtmigDataset**](SdtmigDataset.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmigVersionDatasetsDatasetVariablesGet"></a>
# **mdrSdtmigVersionDatasetsDatasetVariablesGet**
> SdtmigDatasetVariables mdrSdtmigVersionDatasetsDatasetVariablesGet(version, dataset)



Get SDTMIG Dataset Variable List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SDTMImplementationGuideSDTMIGApi()
val version : kotlin.String = 3-3 // kotlin.String | CDISC Library Product Version
val dataset : kotlin.String = LB // kotlin.String | SDTMIG Dataset Identifier
try {
    val result : SdtmigDatasetVariables = apiInstance.mdrSdtmigVersionDatasetsDatasetVariablesGet(version, dataset)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionDatasetsDatasetVariablesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionDatasetsDatasetVariablesGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **dataset** | **kotlin.String**| SDTMIG Dataset Identifier | |

### Return type

[**SdtmigDatasetVariables**](SdtmigDatasetVariables.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmigVersionDatasetsDatasetVariablesVarGet"></a>
# **mdrSdtmigVersionDatasetsDatasetVariablesVarGet**
> SdtmigDatasetVariable mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version, dataset, `var`)



Get SDTMIG Dataset Variable

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SDTMImplementationGuideSDTMIGApi()
val version : kotlin.String = 3-3 // kotlin.String | CDISC Library Product Version
val dataset : kotlin.String = LB // kotlin.String | SDTMIG Dataset Identifier
val `var` : kotlin.String = LBDTC // kotlin.String | SDTMIG Variable Identifier
try {
    val result : SdtmigDatasetVariable = apiInstance.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version, dataset, `var`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionDatasetsDatasetVariablesVarGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionDatasetsDatasetVariablesVarGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| **dataset** | **kotlin.String**| SDTMIG Dataset Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;var&#x60;** | **kotlin.String**| SDTMIG Variable Identifier | |

### Return type

[**SdtmigDatasetVariable**](SdtmigDatasetVariable.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmigVersionDatasetsGet"></a>
# **mdrSdtmigVersionDatasetsGet**
> SdtmigDatasets mdrSdtmigVersionDatasetsGet(version)



Get SDTMIG Dataset List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SDTMImplementationGuideSDTMIGApi()
val version : kotlin.String = 3-3 // kotlin.String | CDISC Library Product Version
try {
    val result : SdtmigDatasets = apiInstance.mdrSdtmigVersionDatasetsGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionDatasetsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionDatasetsGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**SdtmigDatasets**](SdtmigDatasets.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrSdtmigVersionGet"></a>
# **mdrSdtmigVersionGet**
> SdtmigProduct mdrSdtmigVersionGet(version)



Get SDTMIG product

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SDTMImplementationGuideSDTMIGApi()
val version : kotlin.String = 3-3 // kotlin.String | CDISC Library Product Version
try {
    val result : SdtmigProduct = apiInstance.mdrSdtmigVersionGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**SdtmigProduct**](SdtmigProduct.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

