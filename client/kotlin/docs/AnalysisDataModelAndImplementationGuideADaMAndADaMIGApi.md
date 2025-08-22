# AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrAdamProductDatastructuresGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresGet) | **GET** /mdr/adam/{product}/datastructures |  |
| [**mdrAdamProductDatastructuresStructureGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureGet) | **GET** /mdr/adam/{product}/datastructures/{structure} |  |
| [**mdrAdamProductDatastructuresStructureVariablesGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVariablesGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables |  |
| [**mdrAdamProductDatastructuresStructureVariablesVarGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVariablesVarGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} |  |
| [**mdrAdamProductDatastructuresStructureVarsetsGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVarsetsGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets |  |
| [**mdrAdamProductDatastructuresStructureVarsetsVarsetGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVarsetsVarsetGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} |  |
| [**mdrAdamProductGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductGet) | **GET** /mdr/adam/{product} |  |


<a id="mdrAdamProductDatastructuresGet"></a>
# **mdrAdamProductDatastructuresGet**
> AdamProductDatastructures mdrAdamProductDatastructuresGet(product)



Get ADaM Data Structure List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi()
val product : kotlin.String = adamig-1-1 // kotlin.String | CDISC Library Product
try {
    val result : AdamProductDatastructures = apiInstance.mdrAdamProductDatastructuresGet(product)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product** | **kotlin.String**| CDISC Library Product | |

### Return type

[**AdamProductDatastructures**](AdamProductDatastructures.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrAdamProductDatastructuresStructureGet"></a>
# **mdrAdamProductDatastructuresStructureGet**
> AdamDatastructure mdrAdamProductDatastructuresStructureGet(product, structure)



Get ADaM Data Structure

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi()
val product : kotlin.String = adamig-1-1 // kotlin.String | CDISC Library Product
val structure : kotlin.String = ADSL // kotlin.String | Data structure Identifier
try {
    val result : AdamDatastructure = apiInstance.mdrAdamProductDatastructuresStructureGet(product, structure)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureGet")
    e.printStackTrace()
}
```

### Parameters
| **product** | **kotlin.String**| CDISC Library Product | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **structure** | **kotlin.String**| Data structure Identifier | |

### Return type

[**AdamDatastructure**](AdamDatastructure.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrAdamProductDatastructuresStructureVariablesGet"></a>
# **mdrAdamProductDatastructuresStructureVariablesGet**
> AdamDatastructureVariables mdrAdamProductDatastructuresStructureVariablesGet(product, structure)



Get ADaM Variable List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi()
val product : kotlin.String = adamig-1-1 // kotlin.String | CDISC Library Product
val structure : kotlin.String = ADSL // kotlin.String | ADaM Data Structure Identifier
try {
    val result : AdamDatastructureVariables = apiInstance.mdrAdamProductDatastructuresStructureVariablesGet(product, structure)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureVariablesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureVariablesGet")
    e.printStackTrace()
}
```

### Parameters
| **product** | **kotlin.String**| CDISC Library Product | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **structure** | **kotlin.String**| ADaM Data Structure Identifier | |

### Return type

[**AdamDatastructureVariables**](AdamDatastructureVariables.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrAdamProductDatastructuresStructureVariablesVarGet"></a>
# **mdrAdamProductDatastructuresStructureVariablesVarGet**
> AdamVariable mdrAdamProductDatastructuresStructureVariablesVarGet(product, structure, `var`)



Get ADaM Variable

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi()
val product : kotlin.String = adamig-1-1 // kotlin.String | CDISC Library Product
val structure : kotlin.String = ADSL // kotlin.String | ADaM Data Structure Identifier
val `var` : kotlin.String = SITEGRy // kotlin.String | ADaM Variable Identifier
try {
    val result : AdamVariable = apiInstance.mdrAdamProductDatastructuresStructureVariablesVarGet(product, structure, `var`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureVariablesVarGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureVariablesVarGet")
    e.printStackTrace()
}
```

### Parameters
| **product** | **kotlin.String**| CDISC Library Product | |
| **structure** | **kotlin.String**| ADaM Data Structure Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;var&#x60;** | **kotlin.String**| ADaM Variable Identifier | |

### Return type

[**AdamVariable**](AdamVariable.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrAdamProductDatastructuresStructureVarsetsGet"></a>
# **mdrAdamProductDatastructuresStructureVarsetsGet**
> AdamDatastructureVarsets mdrAdamProductDatastructuresStructureVarsetsGet(product, structure)



Get ADaM Variable Set List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi()
val product : kotlin.String = adamig-1-1 // kotlin.String | CDISC Library Product
val structure : kotlin.String = ADSL // kotlin.String | ADaM Data Structure Identifier
try {
    val result : AdamDatastructureVarsets = apiInstance.mdrAdamProductDatastructuresStructureVarsetsGet(product, structure)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureVarsetsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureVarsetsGet")
    e.printStackTrace()
}
```

### Parameters
| **product** | **kotlin.String**| CDISC Library Product | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **structure** | **kotlin.String**| ADaM Data Structure Identifier | |

### Return type

[**AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrAdamProductDatastructuresStructureVarsetsVarsetGet"></a>
# **mdrAdamProductDatastructuresStructureVarsetsVarsetGet**
> AdamVarset mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product, structure, varset)



Get ADaM Variable Set

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi()
val product : kotlin.String = adamig-1-1 // kotlin.String | CDISC Library Product
val structure : kotlin.String = ADSL // kotlin.String | ADaM Data Structure Identifier
val varset : kotlin.String = Identifier // kotlin.String | ADaM Variable Set Identifier
try {
    val result : AdamVarset = apiInstance.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product, structure, varset)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureVarsetsVarsetGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureVarsetsVarsetGet")
    e.printStackTrace()
}
```

### Parameters
| **product** | **kotlin.String**| CDISC Library Product | |
| **structure** | **kotlin.String**| ADaM Data Structure Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **varset** | **kotlin.String**| ADaM Variable Set Identifier | |

### Return type

[**AdamVarset**](AdamVarset.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrAdamProductGet"></a>
# **mdrAdamProductGet**
> AdamProduct mdrAdamProductGet(product)



Get ADaM Product

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi()
val product : kotlin.String = adamig-1-1 // kotlin.String | CDISC Library Product
try {
    val result : AdamProduct = apiInstance.mdrAdamProductGet(product)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product** | **kotlin.String**| CDISC Library Product | |

### Return type

[**AdamProduct**](AdamProduct.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

