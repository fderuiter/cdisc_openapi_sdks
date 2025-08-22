# ClinicalDataAcquisitionStandardsHarmonizationCDASHApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrCdashVersionClassesClassDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassDomainsGet) | **GET** /mdr/cdash/{version}/classes/{class}/domains |  |
| [**mdrCdashVersionClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassFieldsFieldGet) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} |  |
| [**mdrCdashVersionClassesClassGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassGet) | **GET** /mdr/cdash/{version}/classes/{class} |  |
| [**mdrCdashVersionClassesGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesGet) | **GET** /mdr/cdash/{version}/classes |  |
| [**mdrCdashVersionDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} |  |
| [**mdrCdashVersionDomainsDomainFieldsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields |  |
| [**mdrCdashVersionDomainsDomainGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainGet) | **GET** /mdr/cdash/{version}/domains/{domain} |  |
| [**mdrCdashVersionDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsGet) | **GET** /mdr/cdash/{version}/domains |  |
| [**mdrCdashVersionGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionGet) | **GET** /mdr/cdash/{version} |  |
| [**mdrRootCdashClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashClassesClassFieldsFieldGet) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} |  |
| [**mdrRootCdashDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} |  |


<a id="mdrCdashVersionClassesClassDomainsGet"></a>
# **mdrCdashVersionClassesClassDomainsGet**
> CdashClassDomains mdrCdashVersionClassesClassDomainsGet(version, propertyClass)



Get CDASH Class Domain List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi()
val version : kotlin.String = 1-1 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = SpecialPurpose // kotlin.String | CDASH Class Identifier
try {
    val result : CdashClassDomains = apiInstance.mdrCdashVersionClassesClassDomainsGet(version, propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassDomainsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassDomainsGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **propertyClass** | **kotlin.String**| CDASH Class Identifier | |

### Return type

[**CdashClassDomains**](CdashClassDomains.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashVersionClassesClassFieldsFieldGet"></a>
# **mdrCdashVersionClassesClassFieldsFieldGet**
> CdashClassField mdrCdashVersionClassesClassFieldsFieldGet(version, propertyClass, `field`)



Get CDASH Class Field

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi()
val version : kotlin.String = 1-1 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = Timing // kotlin.String | CDASH Class Identifier
val `field` : kotlin.String = --DAT // kotlin.String | CDASH Field Identifier
try {
    val result : CdashClassField = apiInstance.mdrCdashVersionClassesClassFieldsFieldGet(version, propertyClass, `field`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassFieldsFieldGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassFieldsFieldGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| **propertyClass** | **kotlin.String**| CDASH Class Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;field&#x60;** | **kotlin.String**| CDASH Field Identifier | |

### Return type

[**CdashClassField**](CdashClassField.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashVersionClassesClassGet"></a>
# **mdrCdashVersionClassesClassGet**
> CdashClass mdrCdashVersionClassesClassGet(version, propertyClass)



Get CDASH Class

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi()
val version : kotlin.String = 1-1 // kotlin.String | CDISC Library Product Version
val propertyClass : kotlin.String = Timing // kotlin.String | CDASH Class Identifier
try {
    val result : CdashClass = apiInstance.mdrCdashVersionClassesClassGet(version, propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **propertyClass** | **kotlin.String**| CDASH Class Identifier | |

### Return type

[**CdashClass**](CdashClass.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashVersionClassesGet"></a>
# **mdrCdashVersionClassesGet**
> CdashProductClasses mdrCdashVersionClassesGet(version)



Get CDASH Class List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi()
val version : kotlin.String = 1-1 // kotlin.String | CDISC Library Product Version
try {
    val result : CdashProductClasses = apiInstance.mdrCdashVersionClassesGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**CdashProductClasses**](CdashProductClasses.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashVersionDomainsDomainFieldsFieldGet"></a>
# **mdrCdashVersionDomainsDomainFieldsFieldGet**
> CdashDomainField mdrCdashVersionDomainsDomainFieldsFieldGet(version, domain, `field`)



Get CDASH Domain Field

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi()
val version : kotlin.String = 1-1 // kotlin.String | CDISC Library Product Version
val domain : kotlin.String = DM // kotlin.String | CDASH Domain Identifier
val `field` : kotlin.String = AGE // kotlin.String | CDASH Field Identifier
try {
    val result : CdashDomainField = apiInstance.mdrCdashVersionDomainsDomainFieldsFieldGet(version, domain, `field`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainFieldsFieldGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainFieldsFieldGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| **domain** | **kotlin.String**| CDASH Domain Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;field&#x60;** | **kotlin.String**| CDASH Field Identifier | |

### Return type

[**CdashDomainField**](CdashDomainField.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashVersionDomainsDomainFieldsGet"></a>
# **mdrCdashVersionDomainsDomainFieldsGet**
> CdashDomainFields mdrCdashVersionDomainsDomainFieldsGet(version, domain)



Get CDASH Domain Field List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi()
val version : kotlin.String = 1-1 // kotlin.String | CDISC Library Product Version
val domain : kotlin.String = DM // kotlin.String | CDASH Domain Identifier
try {
    val result : CdashDomainFields = apiInstance.mdrCdashVersionDomainsDomainFieldsGet(version, domain)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainFieldsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainFieldsGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **domain** | **kotlin.String**| CDASH Domain Identifier | |

### Return type

[**CdashDomainFields**](CdashDomainFields.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashVersionDomainsDomainGet"></a>
# **mdrCdashVersionDomainsDomainGet**
> CdashDomain mdrCdashVersionDomainsDomainGet(version, domain)



Get CDASH Domain

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi()
val version : kotlin.String = 1-1 // kotlin.String | CDISC Library Product Version
val domain : kotlin.String = DM // kotlin.String | CDASH Domain Identifier
try {
    val result : CdashDomain = apiInstance.mdrCdashVersionDomainsDomainGet(version, domain)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainGet")
    e.printStackTrace()
}
```

### Parameters
| **version** | **kotlin.String**| CDISC Library Product Version | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **domain** | **kotlin.String**| CDASH Domain Identifier | |

### Return type

[**CdashDomain**](CdashDomain.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashVersionDomainsGet"></a>
# **mdrCdashVersionDomainsGet**
> CdashProductDomains mdrCdashVersionDomainsGet(version)



Get CDASH Domain List

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi()
val version : kotlin.String = 1-1 // kotlin.String | CDISC Library Product Version
try {
    val result : CdashProductDomains = apiInstance.mdrCdashVersionDomainsGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**CdashProductDomains**](CdashProductDomains.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrCdashVersionGet"></a>
# **mdrCdashVersionGet**
> CdashProduct mdrCdashVersionGet(version)



Get CDASH Product

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi()
val version : kotlin.String = 1-1 // kotlin.String | CDISC Library Product Version
try {
    val result : CdashProduct = apiInstance.mdrCdashVersionGet(version)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **kotlin.String**| CDISC Library Product Version | |

### Return type

[**CdashProduct**](CdashProduct.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrRootCdashClassesClassFieldsFieldGet"></a>
# **mdrRootCdashClassesClassFieldsFieldGet**
> RootCdashClassField mdrRootCdashClassesClassFieldsFieldGet(propertyClass, `field`)



Get Root CDASH Class Field

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi()
val propertyClass : kotlin.String = Timing // kotlin.String | CDASH Class Identifier
val `field` : kotlin.String = --DAT // kotlin.String | CDASH Field Identifier
try {
    val result : RootCdashClassField = apiInstance.mdrRootCdashClassesClassFieldsFieldGet(propertyClass, `field`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrRootCdashClassesClassFieldsFieldGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrRootCdashClassesClassFieldsFieldGet")
    e.printStackTrace()
}
```

### Parameters
| **propertyClass** | **kotlin.String**| CDASH Class Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;field&#x60;** | **kotlin.String**| CDASH Field Identifier | |

### Return type

[**RootCdashClassField**](RootCdashClassField.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="mdrRootCdashDomainsDomainFieldsFieldGet"></a>
# **mdrRootCdashDomainsDomainFieldsFieldGet**
> RootCdashDomainField mdrRootCdashDomainsDomainFieldsFieldGet(domain, `field`)



Get Root CDASH Domain Field

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi()
val domain : kotlin.String = DM // kotlin.String | CDASH Domain Identifier
val `field` : kotlin.String = AGE // kotlin.String | CDASH Field Identifier
try {
    val result : RootCdashDomainField = apiInstance.mdrRootCdashDomainsDomainFieldsFieldGet(domain, `field`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrRootCdashDomainsDomainFieldsFieldGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrRootCdashDomainsDomainFieldsFieldGet")
    e.printStackTrace()
}
```

### Parameters
| **domain** | **kotlin.String**| CDASH Domain Identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;field&#x60;** | **kotlin.String**| CDASH Field Identifier | |

### Return type

[**RootCdashDomainField**](RootCdashDomainField.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

