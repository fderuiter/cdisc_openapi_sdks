# CdashImplementationGuideCdashigApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**mdrCdashigVersionClassesClassDomainsGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionClassesClassDomainsGet) | **GET** /mdr/cdashig/{version}/classes/{class}/domains |  |
| [**mdrCdashigVersionClassesClassGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionClassesClassGet) | **GET** /mdr/cdashig/{version}/classes/{class} |  |
| [**mdrCdashigVersionClassesClassScenariosGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionClassesClassScenariosGet) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios |  |
| [**mdrCdashigVersionClassesGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionClassesGet) | **GET** /mdr/cdashig/{version}/classes |  |
| [**mdrCdashigVersionDomainsDomainFieldsFieldGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} |  |
| [**mdrCdashigVersionDomainsDomainFieldsGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionDomainsDomainFieldsGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields |  |
| [**mdrCdashigVersionDomainsDomainGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionDomainsDomainGet) | **GET** /mdr/cdashig/{version}/domains/{domain} |  |
| [**mdrCdashigVersionDomainsGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionDomainsGet) | **GET** /mdr/cdashig/{version}/domains |  |
| [**mdrCdashigVersionGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionGet) | **GET** /mdr/cdashig/{version} |  |
| [**mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} |  |
| [**mdrCdashigVersionScenariosDomainScenarioFieldsGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionScenariosDomainScenarioFieldsGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields |  |
| [**mdrCdashigVersionScenariosDomainScenarioGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionScenariosDomainScenarioGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} |  |
| [**mdrCdashigVersionScenariosGet**](CdashImplementationGuideCdashigApi.md#mdrCdashigVersionScenariosGet) | **GET** /mdr/cdashig/{version}/scenarios |  |
| [**mdrRootCdashigDomainsDomainFieldsFieldGet**](CdashImplementationGuideCdashigApi.md#mdrRootCdashigDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} |  |
| [**mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](CdashImplementationGuideCdashigApi.md#mdrRootCdashigScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} |  |


<a id="mdrCdashigVersionClassesClassDomainsGet"></a>
# **mdrCdashigVersionClassesClassDomainsGet**
> CdashigClassDomains mdrCdashigVersionClassesClassDomainsGet(version, propertyClass)



Get CDASHIG Class Domain List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    String propertyClass = "Findings"; // String | CDASHIG Class Identifier
    try {
      CdashigClassDomains result = apiInstance.mdrCdashigVersionClassesClassDomainsGet(version, propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionClassesClassDomainsGet");
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
| **propertyClass** | **String**| CDASHIG Class Identifier | |

### Return type

[**CdashigClassDomains**](CdashigClassDomains.md)

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

<a id="mdrCdashigVersionClassesClassGet"></a>
# **mdrCdashigVersionClassesClassGet**
> CdashigClass mdrCdashigVersionClassesClassGet(version, propertyClass)



Get CDASHIG Class

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    String propertyClass = "Findings"; // String | CDASHIG Class Identifier
    try {
      CdashigClass result = apiInstance.mdrCdashigVersionClassesClassGet(version, propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionClassesClassGet");
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
| **propertyClass** | **String**| CDASHIG Class Identifier | |

### Return type

[**CdashigClass**](CdashigClass.md)

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

<a id="mdrCdashigVersionClassesClassScenariosGet"></a>
# **mdrCdashigVersionClassesClassScenariosGet**
> CdashigClassScenarios mdrCdashigVersionClassesClassScenariosGet(version, propertyClass)



Get CDASHIG Class Scenario List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    String propertyClass = "Findings"; // String | CDASHIG Class Identifier
    try {
      CdashigClassScenarios result = apiInstance.mdrCdashigVersionClassesClassScenariosGet(version, propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionClassesClassScenariosGet");
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
| **propertyClass** | **String**| CDASHIG Class Identifier | |

### Return type

[**CdashigClassScenarios**](CdashigClassScenarios.md)

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

<a id="mdrCdashigVersionClassesGet"></a>
# **mdrCdashigVersionClassesGet**
> CdashigProductClasses mdrCdashigVersionClassesGet(version)



Get CDASHIG Class List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    try {
      CdashigProductClasses result = apiInstance.mdrCdashigVersionClassesGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionClassesGet");
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

[**CdashigProductClasses**](CdashigProductClasses.md)

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

<a id="mdrCdashigVersionDomainsDomainFieldsFieldGet"></a>
# **mdrCdashigVersionDomainsDomainFieldsFieldGet**
> CdashigDomainField mdrCdashigVersionDomainsDomainFieldsFieldGet(version, domain, field)



Get CDASHIG Domain Field

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    String domain = "VS"; // String | CDASHIG Domain Identifier
    String field = "VSDAT"; // String | CDASHIG Field Identifier
    try {
      CdashigDomainField result = apiInstance.mdrCdashigVersionDomainsDomainFieldsFieldGet(version, domain, field);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionDomainsDomainFieldsFieldGet");
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
| **domain** | **String**| CDASHIG Domain Identifier | |
| **field** | **String**| CDASHIG Field Identifier | |

### Return type

[**CdashigDomainField**](CdashigDomainField.md)

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

<a id="mdrCdashigVersionDomainsDomainFieldsGet"></a>
# **mdrCdashigVersionDomainsDomainFieldsGet**
> CdashigDomainFields mdrCdashigVersionDomainsDomainFieldsGet(version, domain)



Get CDASHIG Domain Field List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    String domain = "VS"; // String | CDASHIG Domain Identifier
    try {
      CdashigDomainFields result = apiInstance.mdrCdashigVersionDomainsDomainFieldsGet(version, domain);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionDomainsDomainFieldsGet");
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
| **domain** | **String**| CDASHIG Domain Identifier | |

### Return type

[**CdashigDomainFields**](CdashigDomainFields.md)

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

<a id="mdrCdashigVersionDomainsDomainGet"></a>
# **mdrCdashigVersionDomainsDomainGet**
> CdashigDomain mdrCdashigVersionDomainsDomainGet(version, domain)



Get CDASHIG Domain

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    String domain = "VS"; // String | CDASHIG Domain Identifier
    try {
      CdashigDomain result = apiInstance.mdrCdashigVersionDomainsDomainGet(version, domain);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionDomainsDomainGet");
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
| **domain** | **String**| CDASHIG Domain Identifier | |

### Return type

[**CdashigDomain**](CdashigDomain.md)

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

<a id="mdrCdashigVersionDomainsGet"></a>
# **mdrCdashigVersionDomainsGet**
> CdashigProductDomains mdrCdashigVersionDomainsGet(version)



Get CDASHIG Domain List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    try {
      CdashigProductDomains result = apiInstance.mdrCdashigVersionDomainsGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionDomainsGet");
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

[**CdashigProductDomains**](CdashigProductDomains.md)

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

<a id="mdrCdashigVersionGet"></a>
# **mdrCdashigVersionGet**
> CdashigProduct mdrCdashigVersionGet(version)



Get CDASHIG Product

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    try {
      CdashigProduct result = apiInstance.mdrCdashigVersionGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionGet");
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

[**CdashigProduct**](CdashigProduct.md)

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

<a id="mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet"></a>
# **mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**
> CdashigScenarioField mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version, domain, scenario, field)



Get CDASHIG Scenario Field

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    String domain = "VS"; // String | CDASHIG Domain Identifier
    String scenario = "Generic"; // String | CDASHIG Scenario Identifier
    String field = "VSDAT"; // String | CDASHIG Field Identifier
    try {
      CdashigScenarioField result = apiInstance.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version, domain, scenario, field);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet");
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
| **domain** | **String**| CDASHIG Domain Identifier | |
| **scenario** | **String**| CDASHIG Scenario Identifier | |
| **field** | **String**| CDASHIG Field Identifier | |

### Return type

[**CdashigScenarioField**](CdashigScenarioField.md)

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

<a id="mdrCdashigVersionScenariosDomainScenarioFieldsGet"></a>
# **mdrCdashigVersionScenariosDomainScenarioFieldsGet**
> CdashigScenarioFields mdrCdashigVersionScenariosDomainScenarioFieldsGet(version, domain, scenario)



Get CDASHIG Scenario Field List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    String domain = "VS"; // String | CDASHIG Domain Identifier
    String scenario = "HorizontalGeneric"; // String | CDASHIG Scenario Identifier
    try {
      CdashigScenarioFields result = apiInstance.mdrCdashigVersionScenariosDomainScenarioFieldsGet(version, domain, scenario);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionScenariosDomainScenarioFieldsGet");
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
| **domain** | **String**| CDASHIG Domain Identifier | |
| **scenario** | **String**| CDASHIG Scenario Identifier | |

### Return type

[**CdashigScenarioFields**](CdashigScenarioFields.md)

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

<a id="mdrCdashigVersionScenariosDomainScenarioGet"></a>
# **mdrCdashigVersionScenariosDomainScenarioGet**
> CdashigScenario mdrCdashigVersionScenariosDomainScenarioGet(version, domain, scenario)



Get CDASHIG Scenario

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    String domain = "VS"; // String | CDASHIG Domain Identifier
    String scenario = "HorizontalGeneric"; // String | CDASHIG Scenario Identifier
    try {
      CdashigScenario result = apiInstance.mdrCdashigVersionScenariosDomainScenarioGet(version, domain, scenario);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionScenariosDomainScenarioGet");
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
| **domain** | **String**| CDASHIG Domain Identifier | |
| **scenario** | **String**| CDASHIG Scenario Identifier | |

### Return type

[**CdashigScenario**](CdashigScenario.md)

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

<a id="mdrCdashigVersionScenariosGet"></a>
# **mdrCdashigVersionScenariosGet**
> CdashigProductScenarios mdrCdashigVersionScenariosGet(version)



Get CDASHIG Scenario List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String version = "2-1"; // String | CDISC Library Product Version
    try {
      CdashigProductScenarios result = apiInstance.mdrCdashigVersionScenariosGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrCdashigVersionScenariosGet");
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

[**CdashigProductScenarios**](CdashigProductScenarios.md)

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

<a id="mdrRootCdashigDomainsDomainFieldsFieldGet"></a>
# **mdrRootCdashigDomainsDomainFieldsFieldGet**
> RootCdashigDomainField mdrRootCdashigDomainsDomainFieldsFieldGet(domain, field)



Get Root CDASHIG Domain Field

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String domain = "VS"; // String | CDASHIG Domain Identifier
    String field = "VSDAT"; // String | CDASHIG Field Identifier
    try {
      RootCdashigDomainField result = apiInstance.mdrRootCdashigDomainsDomainFieldsFieldGet(domain, field);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrRootCdashigDomainsDomainFieldsFieldGet");
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
| **domain** | **String**| CDASHIG Domain Identifier | |
| **field** | **String**| CDASHIG Field Identifier | |

### Return type

[**RootCdashigDomainField**](RootCdashigDomainField.md)

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

<a id="mdrRootCdashigScenariosDomainScenarioFieldsFieldGet"></a>
# **mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**
> RootCdashigScenarioField mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain, scenario, field)



Get Root CDASHIG Scenario Field

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CdashImplementationGuideCdashigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CdashImplementationGuideCdashigApi apiInstance = new CdashImplementationGuideCdashigApi(defaultClient);
    String domain = "VS"; // String | CDASHIG Domain Identifier
    String scenario = "Generic"; // String | CDASHIG Scenario Identifier
    String field = "VSDAT"; // String | CDASHIG Field Identifier
    try {
      RootCdashigScenarioField result = apiInstance.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain, scenario, field);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CdashImplementationGuideCdashigApi#mdrRootCdashigScenariosDomainScenarioFieldsFieldGet");
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
| **domain** | **String**| CDASHIG Domain Identifier | |
| **scenario** | **String**| CDASHIG Scenario Identifier | |
| **field** | **String**| CDASHIG Field Identifier | |

### Return type

[**RootCdashigScenarioField**](RootCdashigScenarioField.md)

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

