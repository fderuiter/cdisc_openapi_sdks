# ClinicalDataAcquisitionStandardsHarmonizationCdashApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**mdrCdashVersionClassesClassDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdrCdashVersionClassesClassDomainsGet) | **GET** /mdr/cdash/{version}/classes/{class}/domains |  |
| [**mdrCdashVersionClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdrCdashVersionClassesClassFieldsFieldGet) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} |  |
| [**mdrCdashVersionClassesClassGet**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdrCdashVersionClassesClassGet) | **GET** /mdr/cdash/{version}/classes/{class} |  |
| [**mdrCdashVersionClassesGet**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdrCdashVersionClassesGet) | **GET** /mdr/cdash/{version}/classes |  |
| [**mdrCdashVersionDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdrCdashVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} |  |
| [**mdrCdashVersionDomainsDomainFieldsGet**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdrCdashVersionDomainsDomainFieldsGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields |  |
| [**mdrCdashVersionDomainsDomainGet**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdrCdashVersionDomainsDomainGet) | **GET** /mdr/cdash/{version}/domains/{domain} |  |
| [**mdrCdashVersionDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdrCdashVersionDomainsGet) | **GET** /mdr/cdash/{version}/domains |  |
| [**mdrCdashVersionGet**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdrCdashVersionGet) | **GET** /mdr/cdash/{version} |  |
| [**mdrRootCdashClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdrRootCdashClassesClassFieldsFieldGet) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} |  |
| [**mdrRootCdashDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdrRootCdashDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} |  |


<a id="mdrCdashVersionClassesClassDomainsGet"></a>
# **mdrCdashVersionClassesClassDomainsGet**
> CdashClassDomains mdrCdashVersionClassesClassDomainsGet(version, propertyClass)



Get CDASH Class Domain List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCdashApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ClinicalDataAcquisitionStandardsHarmonizationCdashApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCdashApi(defaultClient);
    String version = "1-1"; // String | CDISC Library Product Version
    String propertyClass = "SpecialPurpose"; // String | CDASH Class Identifier
    try {
      CdashClassDomains result = apiInstance.mdrCdashVersionClassesClassDomainsGet(version, propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCdashApi#mdrCdashVersionClassesClassDomainsGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **version** | **String**| CDISC Library Product Version | |
| **propertyClass** | **String**| CDASH Class Identifier | |

### Return type

[**CdashClassDomains**](CdashClassDomains.md)

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

<a id="mdrCdashVersionClassesClassFieldsFieldGet"></a>
# **mdrCdashVersionClassesClassFieldsFieldGet**
> CdashClassField mdrCdashVersionClassesClassFieldsFieldGet(version, propertyClass, field)



Get CDASH Class Field

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCdashApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ClinicalDataAcquisitionStandardsHarmonizationCdashApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCdashApi(defaultClient);
    String version = "1-1"; // String | CDISC Library Product Version
    String propertyClass = "Timing"; // String | CDASH Class Identifier
    String field = "--DAT"; // String | CDASH Field Identifier
    try {
      CdashClassField result = apiInstance.mdrCdashVersionClassesClassFieldsFieldGet(version, propertyClass, field);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCdashApi#mdrCdashVersionClassesClassFieldsFieldGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **version** | **String**| CDISC Library Product Version | |
| **propertyClass** | **String**| CDASH Class Identifier | |
| **field** | **String**| CDASH Field Identifier | |

### Return type

[**CdashClassField**](CdashClassField.md)

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

<a id="mdrCdashVersionClassesClassGet"></a>
# **mdrCdashVersionClassesClassGet**
> CdashClass mdrCdashVersionClassesClassGet(version, propertyClass)



Get CDASH Class

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCdashApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ClinicalDataAcquisitionStandardsHarmonizationCdashApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCdashApi(defaultClient);
    String version = "1-1"; // String | CDISC Library Product Version
    String propertyClass = "Timing"; // String | CDASH Class Identifier
    try {
      CdashClass result = apiInstance.mdrCdashVersionClassesClassGet(version, propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCdashApi#mdrCdashVersionClassesClassGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **version** | **String**| CDISC Library Product Version | |
| **propertyClass** | **String**| CDASH Class Identifier | |

### Return type

[**CdashClass**](CdashClass.md)

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

<a id="mdrCdashVersionClassesGet"></a>
# **mdrCdashVersionClassesGet**
> CdashProductClasses mdrCdashVersionClassesGet(version)



Get CDASH Class List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCdashApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ClinicalDataAcquisitionStandardsHarmonizationCdashApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCdashApi(defaultClient);
    String version = "1-1"; // String | CDISC Library Product Version
    try {
      CdashProductClasses result = apiInstance.mdrCdashVersionClassesGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCdashApi#mdrCdashVersionClassesGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **version** | **String**| CDISC Library Product Version | |

### Return type

[**CdashProductClasses**](CdashProductClasses.md)

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

<a id="mdrCdashVersionDomainsDomainFieldsFieldGet"></a>
# **mdrCdashVersionDomainsDomainFieldsFieldGet**
> CdashDomainField mdrCdashVersionDomainsDomainFieldsFieldGet(version, domain, field)



Get CDASH Domain Field

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCdashApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ClinicalDataAcquisitionStandardsHarmonizationCdashApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCdashApi(defaultClient);
    String version = "1-1"; // String | CDISC Library Product Version
    String domain = "DM"; // String | CDASH Domain Identifier
    String field = "AGE"; // String | CDASH Field Identifier
    try {
      CdashDomainField result = apiInstance.mdrCdashVersionDomainsDomainFieldsFieldGet(version, domain, field);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCdashApi#mdrCdashVersionDomainsDomainFieldsFieldGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **version** | **String**| CDISC Library Product Version | |
| **domain** | **String**| CDASH Domain Identifier | |
| **field** | **String**| CDASH Field Identifier | |

### Return type

[**CdashDomainField**](CdashDomainField.md)

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

<a id="mdrCdashVersionDomainsDomainFieldsGet"></a>
# **mdrCdashVersionDomainsDomainFieldsGet**
> CdashDomainFields mdrCdashVersionDomainsDomainFieldsGet(version, domain)



Get CDASH Domain Field List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCdashApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ClinicalDataAcquisitionStandardsHarmonizationCdashApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCdashApi(defaultClient);
    String version = "1-1"; // String | CDISC Library Product Version
    String domain = "DM"; // String | CDASH Domain Identifier
    try {
      CdashDomainFields result = apiInstance.mdrCdashVersionDomainsDomainFieldsGet(version, domain);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCdashApi#mdrCdashVersionDomainsDomainFieldsGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **version** | **String**| CDISC Library Product Version | |
| **domain** | **String**| CDASH Domain Identifier | |

### Return type

[**CdashDomainFields**](CdashDomainFields.md)

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

<a id="mdrCdashVersionDomainsDomainGet"></a>
# **mdrCdashVersionDomainsDomainGet**
> CdashDomain mdrCdashVersionDomainsDomainGet(version, domain)



Get CDASH Domain

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCdashApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ClinicalDataAcquisitionStandardsHarmonizationCdashApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCdashApi(defaultClient);
    String version = "1-1"; // String | CDISC Library Product Version
    String domain = "DM"; // String | CDASH Domain Identifier
    try {
      CdashDomain result = apiInstance.mdrCdashVersionDomainsDomainGet(version, domain);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCdashApi#mdrCdashVersionDomainsDomainGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **version** | **String**| CDISC Library Product Version | |
| **domain** | **String**| CDASH Domain Identifier | |

### Return type

[**CdashDomain**](CdashDomain.md)

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

<a id="mdrCdashVersionDomainsGet"></a>
# **mdrCdashVersionDomainsGet**
> CdashProductDomains mdrCdashVersionDomainsGet(version)



Get CDASH Domain List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCdashApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ClinicalDataAcquisitionStandardsHarmonizationCdashApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCdashApi(defaultClient);
    String version = "1-1"; // String | CDISC Library Product Version
    try {
      CdashProductDomains result = apiInstance.mdrCdashVersionDomainsGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCdashApi#mdrCdashVersionDomainsGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **version** | **String**| CDISC Library Product Version | |

### Return type

[**CdashProductDomains**](CdashProductDomains.md)

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

<a id="mdrCdashVersionGet"></a>
# **mdrCdashVersionGet**
> CdashProduct mdrCdashVersionGet(version)



Get CDASH Product

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCdashApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ClinicalDataAcquisitionStandardsHarmonizationCdashApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCdashApi(defaultClient);
    String version = "1-1"; // String | CDISC Library Product Version
    try {
      CdashProduct result = apiInstance.mdrCdashVersionGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCdashApi#mdrCdashVersionGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **version** | **String**| CDISC Library Product Version | |

### Return type

[**CdashProduct**](CdashProduct.md)

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

<a id="mdrRootCdashClassesClassFieldsFieldGet"></a>
# **mdrRootCdashClassesClassFieldsFieldGet**
> RootCdashClassField mdrRootCdashClassesClassFieldsFieldGet(propertyClass, field)



Get Root CDASH Class Field

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCdashApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ClinicalDataAcquisitionStandardsHarmonizationCdashApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCdashApi(defaultClient);
    String propertyClass = "Timing"; // String | CDASH Class Identifier
    String field = "--DAT"; // String | CDASH Field Identifier
    try {
      RootCdashClassField result = apiInstance.mdrRootCdashClassesClassFieldsFieldGet(propertyClass, field);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCdashApi#mdrRootCdashClassesClassFieldsFieldGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **propertyClass** | **String**| CDASH Class Identifier | |
| **field** | **String**| CDASH Field Identifier | |

### Return type

[**RootCdashClassField**](RootCdashClassField.md)

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

<a id="mdrRootCdashDomainsDomainFieldsFieldGet"></a>
# **mdrRootCdashDomainsDomainFieldsFieldGet**
> RootCdashDomainField mdrRootCdashDomainsDomainFieldsFieldGet(domain, field)



Get Root CDASH Domain Field

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCdashApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ClinicalDataAcquisitionStandardsHarmonizationCdashApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCdashApi(defaultClient);
    String domain = "DM"; // String | CDASH Domain Identifier
    String field = "AGE"; // String | CDASH Field Identifier
    try {
      RootCdashDomainField result = apiInstance.mdrRootCdashDomainsDomainFieldsFieldGet(domain, field);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCdashApi#mdrRootCdashDomainsDomainFieldsFieldGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **domain** | **String**| CDASH Domain Identifier | |
| **field** | **String**| CDASH Field Identifier | |

### Return type

[**RootCdashDomainField**](RootCdashDomainField.md)

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

