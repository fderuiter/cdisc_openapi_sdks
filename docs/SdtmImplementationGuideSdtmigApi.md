# SdtmImplementationGuideSdtmigApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**mdrRootSdtmigDatasetsDatasetVariablesVarGet**](SdtmImplementationGuideSdtmigApi.md#mdrRootSdtmigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} |  |
| [**mdrSdtmigVersionClassesClassDatasetsGet**](SdtmImplementationGuideSdtmigApi.md#mdrSdtmigVersionClassesClassDatasetsGet) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets |  |
| [**mdrSdtmigVersionClassesClassGet**](SdtmImplementationGuideSdtmigApi.md#mdrSdtmigVersionClassesClassGet) | **GET** /mdr/sdtmig/{version}/classes/{class} |  |
| [**mdrSdtmigVersionClassesGet**](SdtmImplementationGuideSdtmigApi.md#mdrSdtmigVersionClassesGet) | **GET** /mdr/sdtmig/{version}/classes |  |
| [**mdrSdtmigVersionDatasetsDatasetGet**](SdtmImplementationGuideSdtmigApi.md#mdrSdtmigVersionDatasetsDatasetGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} |  |
| [**mdrSdtmigVersionDatasetsDatasetVariablesGet**](SdtmImplementationGuideSdtmigApi.md#mdrSdtmigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables |  |
| [**mdrSdtmigVersionDatasetsDatasetVariablesVarGet**](SdtmImplementationGuideSdtmigApi.md#mdrSdtmigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} |  |
| [**mdrSdtmigVersionDatasetsGet**](SdtmImplementationGuideSdtmigApi.md#mdrSdtmigVersionDatasetsGet) | **GET** /mdr/sdtmig/{version}/datasets |  |
| [**mdrSdtmigVersionGet**](SdtmImplementationGuideSdtmigApi.md#mdrSdtmigVersionGet) | **GET** /mdr/sdtmig/{version} |  |


<a id="mdrRootSdtmigDatasetsDatasetVariablesVarGet"></a>
# **mdrRootSdtmigDatasetsDatasetVariablesVarGet**
> RootSdtmigDatasetVariable mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset, var)



Get Root SDTMIG Dataset Variable

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SdtmImplementationGuideSdtmigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SdtmImplementationGuideSdtmigApi apiInstance = new SdtmImplementationGuideSdtmigApi(defaultClient);
    String dataset = "DM"; // String | SDTMIG Dataset Identifier
    String var = "SUBJID"; // String | SDTMIG Variable Identifier
    try {
      RootSdtmigDatasetVariable result = apiInstance.mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset, var);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SdtmImplementationGuideSdtmigApi#mdrRootSdtmigDatasetsDatasetVariablesVarGet");
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
| **dataset** | **String**| SDTMIG Dataset Identifier | |
| **var** | **String**| SDTMIG Variable Identifier | |

### Return type

[**RootSdtmigDatasetVariable**](RootSdtmigDatasetVariable.md)

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

<a id="mdrSdtmigVersionClassesClassDatasetsGet"></a>
# **mdrSdtmigVersionClassesClassDatasetsGet**
> SdtmigClassDatasets mdrSdtmigVersionClassesClassDatasetsGet(version, propertyClass)



Get SDTMIG Class Dataset List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SdtmImplementationGuideSdtmigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SdtmImplementationGuideSdtmigApi apiInstance = new SdtmImplementationGuideSdtmigApi(defaultClient);
    String version = "3-3"; // String | CDISC Library Product Version
    String propertyClass = "Findings"; // String | SDTMIG Class Identifier
    try {
      SdtmigClassDatasets result = apiInstance.mdrSdtmigVersionClassesClassDatasetsGet(version, propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SdtmImplementationGuideSdtmigApi#mdrSdtmigVersionClassesClassDatasetsGet");
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
| **propertyClass** | **String**| SDTMIG Class Identifier | |

### Return type

[**SdtmigClassDatasets**](SdtmigClassDatasets.md)

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

<a id="mdrSdtmigVersionClassesClassGet"></a>
# **mdrSdtmigVersionClassesClassGet**
> SdtmigClass mdrSdtmigVersionClassesClassGet(version, propertyClass)



Get SDTMIG Class

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SdtmImplementationGuideSdtmigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SdtmImplementationGuideSdtmigApi apiInstance = new SdtmImplementationGuideSdtmigApi(defaultClient);
    String version = "3-3"; // String | CDISC Library Product Version
    String propertyClass = "Findings"; // String | SDTMIG Class Identifier
    try {
      SdtmigClass result = apiInstance.mdrSdtmigVersionClassesClassGet(version, propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SdtmImplementationGuideSdtmigApi#mdrSdtmigVersionClassesClassGet");
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
| **propertyClass** | **String**| SDTMIG Class Identifier | |

### Return type

[**SdtmigClass**](SdtmigClass.md)

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

<a id="mdrSdtmigVersionClassesGet"></a>
# **mdrSdtmigVersionClassesGet**
> SdtmigClasses mdrSdtmigVersionClassesGet(version)



Get SDTMIG Class List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SdtmImplementationGuideSdtmigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SdtmImplementationGuideSdtmigApi apiInstance = new SdtmImplementationGuideSdtmigApi(defaultClient);
    String version = "3-3"; // String | CDISC Library Product Version
    try {
      SdtmigClasses result = apiInstance.mdrSdtmigVersionClassesGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SdtmImplementationGuideSdtmigApi#mdrSdtmigVersionClassesGet");
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

[**SdtmigClasses**](SdtmigClasses.md)

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

<a id="mdrSdtmigVersionDatasetsDatasetGet"></a>
# **mdrSdtmigVersionDatasetsDatasetGet**
> SdtmigDataset mdrSdtmigVersionDatasetsDatasetGet(version, dataset)



Get SDTMIG Dataset

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SdtmImplementationGuideSdtmigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SdtmImplementationGuideSdtmigApi apiInstance = new SdtmImplementationGuideSdtmigApi(defaultClient);
    String version = "3-3"; // String | CDISC Library Product Version
    String dataset = "LB"; // String | SDTMIG Dataset Identifier
    try {
      SdtmigDataset result = apiInstance.mdrSdtmigVersionDatasetsDatasetGet(version, dataset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SdtmImplementationGuideSdtmigApi#mdrSdtmigVersionDatasetsDatasetGet");
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
| **dataset** | **String**| SDTMIG Dataset Identifier | |

### Return type

[**SdtmigDataset**](SdtmigDataset.md)

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

<a id="mdrSdtmigVersionDatasetsDatasetVariablesGet"></a>
# **mdrSdtmigVersionDatasetsDatasetVariablesGet**
> SdtmigDatasetVariables mdrSdtmigVersionDatasetsDatasetVariablesGet(version, dataset)



Get SDTMIG Dataset Variable List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SdtmImplementationGuideSdtmigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SdtmImplementationGuideSdtmigApi apiInstance = new SdtmImplementationGuideSdtmigApi(defaultClient);
    String version = "3-3"; // String | CDISC Library Product Version
    String dataset = "LB"; // String | SDTMIG Dataset Identifier
    try {
      SdtmigDatasetVariables result = apiInstance.mdrSdtmigVersionDatasetsDatasetVariablesGet(version, dataset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SdtmImplementationGuideSdtmigApi#mdrSdtmigVersionDatasetsDatasetVariablesGet");
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
| **dataset** | **String**| SDTMIG Dataset Identifier | |

### Return type

[**SdtmigDatasetVariables**](SdtmigDatasetVariables.md)

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

<a id="mdrSdtmigVersionDatasetsDatasetVariablesVarGet"></a>
# **mdrSdtmigVersionDatasetsDatasetVariablesVarGet**
> SdtmigDatasetVariable mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version, dataset, var)



Get SDTMIG Dataset Variable

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SdtmImplementationGuideSdtmigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SdtmImplementationGuideSdtmigApi apiInstance = new SdtmImplementationGuideSdtmigApi(defaultClient);
    String version = "3-3"; // String | CDISC Library Product Version
    String dataset = "LB"; // String | SDTMIG Dataset Identifier
    String var = "LBDTC"; // String | SDTMIG Variable Identifier
    try {
      SdtmigDatasetVariable result = apiInstance.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version, dataset, var);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SdtmImplementationGuideSdtmigApi#mdrSdtmigVersionDatasetsDatasetVariablesVarGet");
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
| **dataset** | **String**| SDTMIG Dataset Identifier | |
| **var** | **String**| SDTMIG Variable Identifier | |

### Return type

[**SdtmigDatasetVariable**](SdtmigDatasetVariable.md)

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

<a id="mdrSdtmigVersionDatasetsGet"></a>
# **mdrSdtmigVersionDatasetsGet**
> SdtmigDatasets mdrSdtmigVersionDatasetsGet(version)



Get SDTMIG Dataset List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SdtmImplementationGuideSdtmigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SdtmImplementationGuideSdtmigApi apiInstance = new SdtmImplementationGuideSdtmigApi(defaultClient);
    String version = "3-3"; // String | CDISC Library Product Version
    try {
      SdtmigDatasets result = apiInstance.mdrSdtmigVersionDatasetsGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SdtmImplementationGuideSdtmigApi#mdrSdtmigVersionDatasetsGet");
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

[**SdtmigDatasets**](SdtmigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

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

<a id="mdrSdtmigVersionGet"></a>
# **mdrSdtmigVersionGet**
> SdtmigProduct mdrSdtmigVersionGet(version)



Get SDTMIG product

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SdtmImplementationGuideSdtmigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SdtmImplementationGuideSdtmigApi apiInstance = new SdtmImplementationGuideSdtmigApi(defaultClient);
    String version = "3-3"; // String | CDISC Library Product Version
    try {
      SdtmigProduct result = apiInstance.mdrSdtmigVersionGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SdtmImplementationGuideSdtmigApi#mdrSdtmigVersionGet");
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

[**SdtmigProduct**](SdtmigProduct.md)

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

