# ControlledTerminologyCtApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**mdrCtPackagesGet**](ControlledTerminologyCtApi.md#mdrCtPackagesGet) | **GET** /mdr/ct/packages |  |
| [**mdrCtPackagesPackageCodelistsCodelistGet**](ControlledTerminologyCtApi.md#mdrCtPackagesPackageCodelistsCodelistGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} |  |
| [**mdrCtPackagesPackageCodelistsCodelistTermsGet**](ControlledTerminologyCtApi.md#mdrCtPackagesPackageCodelistsCodelistTermsGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms |  |
| [**mdrCtPackagesPackageCodelistsCodelistTermsTermGet**](ControlledTerminologyCtApi.md#mdrCtPackagesPackageCodelistsCodelistTermsTermGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} |  |
| [**mdrCtPackagesPackageCodelistsGet**](ControlledTerminologyCtApi.md#mdrCtPackagesPackageCodelistsGet) | **GET** /mdr/ct/packages/{package}/codelists |  |
| [**mdrCtPackagesProductGet**](ControlledTerminologyCtApi.md#mdrCtPackagesProductGet) | **GET** /mdr/ct/packages/{product} |  |
| [**mdrRootCtProductGroupCodelistsCodelistGet**](ControlledTerminologyCtApi.md#mdrRootCtProductGroupCodelistsCodelistGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} |  |
| [**mdrRootCtProductGroupCodelistsCodelistTermsTermGet**](ControlledTerminologyCtApi.md#mdrRootCtProductGroupCodelistsCodelistTermsTermGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} |  |


<a id="mdrCtPackagesGet"></a>
# **mdrCtPackagesGet**
> CtPackages mdrCtPackagesGet()



Get CDISC Library CT Package List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ControlledTerminologyCtApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ControlledTerminologyCtApi apiInstance = new ControlledTerminologyCtApi(defaultClient);
    try {
      CtPackages result = apiInstance.mdrCtPackagesGet();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ControlledTerminologyCtApi#mdrCtPackagesGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CtPackages**](CtPackages.md)

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

<a id="mdrCtPackagesPackageCodelistsCodelistGet"></a>
# **mdrCtPackagesPackageCodelistsCodelistGet**
> CtCodelist mdrCtPackagesPackageCodelistsCodelistGet(_package, codelist)



Get CDISC Library CT Package Codelist

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ControlledTerminologyCtApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ControlledTerminologyCtApi apiInstance = new ControlledTerminologyCtApi(defaultClient);
    String _package = "sdtmct-2019-12-20"; // String | CT Package Identifier
    String codelist = "C67154"; // String | CT Codelist Identifier
    try {
      CtCodelist result = apiInstance.mdrCtPackagesPackageCodelistsCodelistGet(_package, codelist);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ControlledTerminologyCtApi#mdrCtPackagesPackageCodelistsCodelistGet");
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
| **_package** | **String**| CT Package Identifier | |
| **codelist** | **String**| CT Codelist Identifier | |

### Return type

[**CtCodelist**](CtCodelist.md)

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

<a id="mdrCtPackagesPackageCodelistsCodelistTermsGet"></a>
# **mdrCtPackagesPackageCodelistsCodelistTermsGet**
> CtCodelistTerms mdrCtPackagesPackageCodelistsCodelistTermsGet(_package, codelist)



Get CDISC Library CT Package Codelist Term List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ControlledTerminologyCtApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ControlledTerminologyCtApi apiInstance = new ControlledTerminologyCtApi(defaultClient);
    String _package = "sdtmct-2019-12-20"; // String | CT Package Identifier
    String codelist = "C67154"; // String | CT Codelist Identifier
    try {
      CtCodelistTerms result = apiInstance.mdrCtPackagesPackageCodelistsCodelistTermsGet(_package, codelist);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ControlledTerminologyCtApi#mdrCtPackagesPackageCodelistsCodelistTermsGet");
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
| **_package** | **String**| CT Package Identifier | |
| **codelist** | **String**| CT Codelist Identifier | |

### Return type

[**CtCodelistTerms**](CtCodelistTerms.md)

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

<a id="mdrCtPackagesPackageCodelistsCodelistTermsTermGet"></a>
# **mdrCtPackagesPackageCodelistsCodelistTermsTermGet**
> CtTerm mdrCtPackagesPackageCodelistsCodelistTermsTermGet(_package, codelist, term)



Get CDISC Library CT Package Codelist Term

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ControlledTerminologyCtApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ControlledTerminologyCtApi apiInstance = new ControlledTerminologyCtApi(defaultClient);
    String _package = "sdtmct-2019-12-20"; // String | CT Package Product Identifier
    String codelist = "C67154"; // String | CT Codelist Identifier
    String term = "C64796"; // String | CT Codelist Term Identifier
    try {
      CtTerm result = apiInstance.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(_package, codelist, term);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ControlledTerminologyCtApi#mdrCtPackagesPackageCodelistsCodelistTermsTermGet");
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
| **_package** | **String**| CT Package Product Identifier | |
| **codelist** | **String**| CT Codelist Identifier | |
| **term** | **String**| CT Codelist Term Identifier | |

### Return type

[**CtTerm**](CtTerm.md)

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

<a id="mdrCtPackagesPackageCodelistsGet"></a>
# **mdrCtPackagesPackageCodelistsGet**
> CtPackageCodelists mdrCtPackagesPackageCodelistsGet(_package)



Get CDISC Library CT Package Codelist List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ControlledTerminologyCtApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ControlledTerminologyCtApi apiInstance = new ControlledTerminologyCtApi(defaultClient);
    String _package = "sdtmct-2019-12-20"; // String | CT Package Identifier
    try {
      CtPackageCodelists result = apiInstance.mdrCtPackagesPackageCodelistsGet(_package);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ControlledTerminologyCtApi#mdrCtPackagesPackageCodelistsGet");
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
| **_package** | **String**| CT Package Identifier | |

### Return type

[**CtPackageCodelists**](CtPackageCodelists.md)

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

<a id="mdrCtPackagesProductGet"></a>
# **mdrCtPackagesProductGet**
> CtPackage mdrCtPackagesProductGet(product)



Get CDISC Library CT Package

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ControlledTerminologyCtApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ControlledTerminologyCtApi apiInstance = new ControlledTerminologyCtApi(defaultClient);
    String product = "sdtmct-2019-12-20"; // String | CT Package Product Identifier
    try {
      CtPackage result = apiInstance.mdrCtPackagesProductGet(product);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ControlledTerminologyCtApi#mdrCtPackagesProductGet");
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
| **product** | **String**| CT Package Product Identifier | |

### Return type

[**CtPackage**](CtPackage.md)

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

<a id="mdrRootCtProductGroupCodelistsCodelistGet"></a>
# **mdrRootCtProductGroupCodelistsCodelistGet**
> RootCtCodelist mdrRootCtProductGroupCodelistsCodelistGet(productGroup, codelist)



Get CDISC Library Root CT Codelist

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ControlledTerminologyCtApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ControlledTerminologyCtApi apiInstance = new ControlledTerminologyCtApi(defaultClient);
    String productGroup = "sdtmct"; // String | CT Product Group Identifier
    String codelist = "C67154"; // String | CT Codelist Identifier
    try {
      RootCtCodelist result = apiInstance.mdrRootCtProductGroupCodelistsCodelistGet(productGroup, codelist);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ControlledTerminologyCtApi#mdrRootCtProductGroupCodelistsCodelistGet");
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
| **productGroup** | **String**| CT Product Group Identifier | |
| **codelist** | **String**| CT Codelist Identifier | |

### Return type

[**RootCtCodelist**](RootCtCodelist.md)

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

<a id="mdrRootCtProductGroupCodelistsCodelistTermsTermGet"></a>
# **mdrRootCtProductGroupCodelistsCodelistTermsTermGet**
> RootCtTerm mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup, codelist, term)



Get CDISC Library Root CT Term

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ControlledTerminologyCtApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    ControlledTerminologyCtApi apiInstance = new ControlledTerminologyCtApi(defaultClient);
    String productGroup = "sdtmct"; // String | CT Product Group Identifier
    String codelist = "C67154"; // String | CT Codelist Identifier
    String term = "C64796"; // String | CT Codelist Term Identifier
    try {
      RootCtTerm result = apiInstance.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup, codelist, term);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ControlledTerminologyCtApi#mdrRootCtProductGroupCodelistsCodelistTermsTermGet");
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
| **productGroup** | **String**| CT Product Group Identifier | |
| **codelist** | **String**| CT Codelist Identifier | |
| **term** | **String**| CT Codelist Term Identifier | |

### Return type

[**RootCtTerm**](RootCtTerm.md)

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

