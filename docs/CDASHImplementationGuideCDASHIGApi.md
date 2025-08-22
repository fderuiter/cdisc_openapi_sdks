# CDASHImplementationGuideCDASHIGApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrCdashigVersionClassesClassDomainsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassDomainsGet) | **GET** /mdr/cdashig/{version}/classes/{class}/domains |  |
| [**mdrCdashigVersionClassesClassGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassGet) | **GET** /mdr/cdashig/{version}/classes/{class} |  |
| [**mdrCdashigVersionClassesClassScenariosGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassScenariosGet) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios |  |
| [**mdrCdashigVersionClassesGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesGet) | **GET** /mdr/cdashig/{version}/classes |  |
| [**mdrCdashigVersionDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} |  |
| [**mdrCdashigVersionDomainsDomainFieldsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainFieldsGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields |  |
| [**mdrCdashigVersionDomainsDomainGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainGet) | **GET** /mdr/cdashig/{version}/domains/{domain} |  |
| [**mdrCdashigVersionDomainsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsGet) | **GET** /mdr/cdashig/{version}/domains |  |
| [**mdrCdashigVersionGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionGet) | **GET** /mdr/cdashig/{version} |  |
| [**mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} |  |
| [**mdrCdashigVersionScenariosDomainScenarioFieldsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioFieldsGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields |  |
| [**mdrCdashigVersionScenariosDomainScenarioGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} |  |
| [**mdrCdashigVersionScenariosGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosGet) | **GET** /mdr/cdashig/{version}/scenarios |  |
| [**mdrRootCdashigDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrRootCdashigDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} |  |
| [**mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrRootCdashigScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} |  |


<a id="mdrCdashigVersionClassesClassDomainsGet"></a>
# **mdrCdashigVersionClassesClassDomainsGet**
> CdashigClassDomains mdrCdashigVersionClassesClassDomainsGet(version, propertyClass)



Get CDASHIG Class Domain List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = Findings // kotlin.String | CDASHIG Class Identifier
try {
    val result : CdashigClassDomains = apiInstance.mdrCdashigVersionClassesClassDomainsGet(version, propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionClassesClassDomainsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionClassesClassDomainsGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **propertyClass** | **kotlin.String**| CDASHIG Class Identifier | |

### Return type

[**CdashigClassDomains**](CdashigClassDomains.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashigVersionClassesClassGet"></a>
# **mdrCdashigVersionClassesClassGet**
> CdashigClass mdrCdashigVersionClassesClassGet(version, propertyClass)



Get CDASHIG Class

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = Findings // kotlin.String | CDASHIG Class Identifier
try {
    val result : CdashigClass = apiInstance.mdrCdashigVersionClassesClassGet(version, propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionClassesClassGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionClassesClassGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **propertyClass** | **kotlin.String**| CDASHIG Class Identifier | |

### Return type

[**CdashigClass**](CdashigClass.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashigVersionClassesClassScenariosGet"></a>
# **mdrCdashigVersionClassesClassScenariosGet**
> CdashigClassScenarios mdrCdashigVersionClassesClassScenariosGet(version, propertyClass)



Get CDASHIG Class Scenario List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = Findings // kotlin.String | CDASHIG Class Identifier
try {
    val result : CdashigClassScenarios = apiInstance.mdrCdashigVersionClassesClassScenariosGet(version, propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionClassesClassScenariosGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionClassesClassScenariosGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **propertyClass** | **kotlin.String**| CDASHIG Class Identifier | |

### Return type

[**CdashigClassScenarios**](CdashigClassScenarios.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashigVersionClassesGet"></a>
# **mdrCdashigVersionClassesGet**
> CdashigProductClasses mdrCdashigVersionClassesGet(version)



Get CDASHIG Class List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
try {
    val result : CdashigProductClasses = apiInstance.mdrCdashigVersionClassesGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionClassesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionClassesGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**CdashigProductClasses**](CdashigProductClasses.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashigVersionDomainsDomainFieldsFieldGet"></a>
# **mdrCdashigVersionDomainsDomainFieldsFieldGet**
> CdashigDomainField mdrCdashigVersionDomainsDomainFieldsFieldGet(version, domain, `field`)



Get CDASHIG Domain Field

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
val domain : kotlin.String = VS // kotlin.String | CDASHIG Domain Identifier
val `field` : kotlin.String = VSDAT // kotlin.String | CDASHIG Field Identifier
try {
    val result : CdashigDomainField = apiInstance.mdrCdashigVersionDomainsDomainFieldsFieldGet(version, domain, `field`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionDomainsDomainFieldsFieldGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionDomainsDomainFieldsFieldGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| **domain** | **kotlin.String**| CDASHIG Domain Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;field&#x60;** | **kotlin.String**| CDASHIG Field Identifier | |

### Return type

[**CdashigDomainField**](CdashigDomainField.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashigVersionDomainsDomainFieldsGet"></a>
# **mdrCdashigVersionDomainsDomainFieldsGet**
> CdashigDomainFields mdrCdashigVersionDomainsDomainFieldsGet(version, domain)



Get CDASHIG Domain Field List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
val domain : kotlin.String = VS // kotlin.String | CDASHIG Domain Identifier
try {
    val result : CdashigDomainFields = apiInstance.mdrCdashigVersionDomainsDomainFieldsGet(version, domain)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionDomainsDomainFieldsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionDomainsDomainFieldsGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **domain** | **kotlin.String**| CDASHIG Domain Identifier | |

### Return type

[**CdashigDomainFields**](CdashigDomainFields.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashigVersionDomainsDomainGet"></a>
# **mdrCdashigVersionDomainsDomainGet**
> CdashigDomain mdrCdashigVersionDomainsDomainGet(version, domain)



Get CDASHIG Domain

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
val domain : kotlin.String = VS // kotlin.String | CDASHIG Domain Identifier
try {
    val result : CdashigDomain = apiInstance.mdrCdashigVersionDomainsDomainGet(version, domain)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionDomainsDomainGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionDomainsDomainGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **domain** | **kotlin.String**| CDASHIG Domain Identifier | |

### Return type

[**CdashigDomain**](CdashigDomain.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashigVersionDomainsGet"></a>
# **mdrCdashigVersionDomainsGet**
> CdashigProductDomains mdrCdashigVersionDomainsGet(version)



Get CDASHIG Domain List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
try {
    val result : CdashigProductDomains = apiInstance.mdrCdashigVersionDomainsGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionDomainsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionDomainsGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**CdashigProductDomains**](CdashigProductDomains.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashigVersionGet"></a>
# **mdrCdashigVersionGet**
> CdashigProduct mdrCdashigVersionGet(version)



Get CDASHIG Product

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
try {
    val result : CdashigProduct = apiInstance.mdrCdashigVersionGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**CdashigProduct**](CdashigProduct.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet"></a>
# **mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**
> CdashigScenarioField mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version, domain, scenario, `field`)



Get CDASHIG Scenario Field

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
val domain : kotlin.String = VS // kotlin.String | CDASHIG Domain Identifier
val scenario : kotlin.String = Generic // kotlin.String | CDASHIG Scenario Identifier
val `field` : kotlin.String = VSDAT // kotlin.String | CDASHIG Field Identifier
try {
    val result : CdashigScenarioField = apiInstance.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version, domain, scenario, `field`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| **domain** | **kotlin.String**| CDASHIG Domain Identifier | |
| **scenario** | **kotlin.String**| CDASHIG Scenario Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;field&#x60;** | **kotlin.String**| CDASHIG Field Identifier | |

### Return type

[**CdashigScenarioField**](CdashigScenarioField.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashigVersionScenariosDomainScenarioFieldsGet"></a>
# **mdrCdashigVersionScenariosDomainScenarioFieldsGet**
> CdashigScenarioFields mdrCdashigVersionScenariosDomainScenarioFieldsGet(version, domain, scenario)



Get CDASHIG Scenario Field List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
val domain : kotlin.String = VS // kotlin.String | CDASHIG Domain Identifier
val scenario : kotlin.String = HorizontalGeneric // kotlin.String | CDASHIG Scenario Identifier
try {
    val result : CdashigScenarioFields = apiInstance.mdrCdashigVersionScenariosDomainScenarioFieldsGet(version, domain, scenario)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionScenariosDomainScenarioFieldsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionScenariosDomainScenarioFieldsGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| **domain** | **kotlin.String**| CDASHIG Domain Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **scenario** | **kotlin.String**| CDASHIG Scenario Identifier | |

### Return type

[**CdashigScenarioFields**](CdashigScenarioFields.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashigVersionScenariosDomainScenarioGet"></a>
# **mdrCdashigVersionScenariosDomainScenarioGet**
> CdashigScenario mdrCdashigVersionScenariosDomainScenarioGet(version, domain, scenario)



Get CDASHIG Scenario

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
val domain : kotlin.String = VS // kotlin.String | CDASHIG Domain Identifier
val scenario : kotlin.String = HorizontalGeneric // kotlin.String | CDASHIG Scenario Identifier
try {
    val result : CdashigScenario = apiInstance.mdrCdashigVersionScenariosDomainScenarioGet(version, domain, scenario)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionScenariosDomainScenarioGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionScenariosDomainScenarioGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| **domain** | **kotlin.String**| CDASHIG Domain Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **scenario** | **kotlin.String**| CDASHIG Scenario Identifier | |

### Return type

[**CdashigScenario**](CdashigScenario.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashigVersionScenariosGet"></a>
# **mdrCdashigVersionScenariosGet**
> CdashigProductScenarios mdrCdashigVersionScenariosGet(version)



Get CDASHIG Scenario List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val version : kotlin.String = 2-1 // kotlin.String | CDISC Library Product Version
try {
    val result : CdashigProductScenarios = apiInstance.mdrCdashigVersionScenariosGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionScenariosGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionScenariosGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**CdashigProductScenarios**](CdashigProductScenarios.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrRootCdashigDomainsDomainFieldsFieldGet"></a>
# **mdrRootCdashigDomainsDomainFieldsFieldGet**
> RootCdashigDomainField mdrRootCdashigDomainsDomainFieldsFieldGet(domain, `field`)



Get Root CDASHIG Domain Field

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val domain : kotlin.String = VS // kotlin.String | CDASHIG Domain Identifier
val `field` : kotlin.String = VSDAT // kotlin.String | CDASHIG Field Identifier
try {
    val result : RootCdashigDomainField = apiInstance.mdrRootCdashigDomainsDomainFieldsFieldGet(domain, `field`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrRootCdashigDomainsDomainFieldsFieldGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrRootCdashigDomainsDomainFieldsFieldGet")
    e.printStackTrace()
}
```

### Parameters
| **domain** | **kotlin.String**| CDASHIG Domain Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;field&#x60;** | **kotlin.String**| CDASHIG Field Identifier | |

### Return type

[**RootCdashigDomainField**](RootCdashigDomainField.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrRootCdashigScenariosDomainScenarioFieldsFieldGet"></a>
# **mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**
> RootCdashigScenarioField mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain, scenario, `field`)



Get Root CDASHIG Scenario Field

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CDASHImplementationGuideCDASHIGApi()
val domain : kotlin.String = VS // kotlin.String | CDASHIG Domain Identifier
val scenario : kotlin.String = Generic // kotlin.String | CDASHIG Scenario Identifier
val `field` : kotlin.String = VSDAT // kotlin.String | CDASHIG Field Identifier
try {
    val result : RootCdashigScenarioField = apiInstance.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain, scenario, `field`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CDASHImplementationGuideCDASHIGApi#mdrRootCdashigScenariosDomainScenarioFieldsFieldGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CDASHImplementationGuideCDASHIGApi#mdrRootCdashigScenariosDomainScenarioFieldsFieldGet")
    e.printStackTrace()
}
```

### Parameters
| **domain** | **kotlin.String**| CDASHIG Domain Identifier | |
| **scenario** | **kotlin.String**| CDASHIG Scenario Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;field&#x60;** | **kotlin.String**| CDASHIG Field Identifier | |

### Return type

[**RootCdashigScenarioField**](RootCdashigScenarioField.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

