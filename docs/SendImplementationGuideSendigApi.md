# SendImplementationGuideSendigApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**mdrRootSendigDatasetsDatasetVariablesVarGet**](SendImplementationGuideSendigApi.md#mdrRootSendigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} |  |
| [**mdrSendigVersionClassesClassDatasetsGet**](SendImplementationGuideSendigApi.md#mdrSendigVersionClassesClassDatasetsGet) | **GET** /mdr/sendig/{version}/classes/{class}/datasets |  |
| [**mdrSendigVersionClassesClassGet**](SendImplementationGuideSendigApi.md#mdrSendigVersionClassesClassGet) | **GET** /mdr/sendig/{version}/classes/{class} |  |
| [**mdrSendigVersionClassesGet**](SendImplementationGuideSendigApi.md#mdrSendigVersionClassesGet) | **GET** /mdr/sendig/{version}/classes |  |
| [**mdrSendigVersionDatasetsDatasetGet**](SendImplementationGuideSendigApi.md#mdrSendigVersionDatasetsDatasetGet) | **GET** /mdr/sendig/{version}/datasets/{dataset} |  |
| [**mdrSendigVersionDatasetsDatasetVariablesGet**](SendImplementationGuideSendigApi.md#mdrSendigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables |  |
| [**mdrSendigVersionDatasetsDatasetVariablesVarGet**](SendImplementationGuideSendigApi.md#mdrSendigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} |  |
| [**mdrSendigVersionDatasetsGet**](SendImplementationGuideSendigApi.md#mdrSendigVersionDatasetsGet) | **GET** /mdr/sendig/{version}/datasets |  |
| [**mdrSendigVersionGet**](SendImplementationGuideSendigApi.md#mdrSendigVersionGet) | **GET** /mdr/sendig/{version} |  |


<a id="mdrRootSendigDatasetsDatasetVariablesVarGet"></a>
# **mdrRootSendigDatasetsDatasetVariablesVarGet**
> RootSendigDatasetVariable mdrRootSendigDatasetsDatasetVariablesVarGet(dataset, var)



Get Root SENDIG Dataset Variable

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SendImplementationGuideSendigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SendImplementationGuideSendigApi apiInstance = new SendImplementationGuideSendigApi(defaultClient);
    String dataset = "VS"; // String | SENDIG Dataset Identifier
    String var = "VSTEST"; // String | SENDIG Variable Identifier
    try {
      RootSendigDatasetVariable result = apiInstance.mdrRootSendigDatasetsDatasetVariablesVarGet(dataset, var);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendImplementationGuideSendigApi#mdrRootSendigDatasetsDatasetVariablesVarGet");
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
| **dataset** | **String**| SENDIG Dataset Identifier | |
| **var** | **String**| SENDIG Variable Identifier | |

### Return type

[**RootSendigDatasetVariable**](RootSendigDatasetVariable.md)

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

<a id="mdrSendigVersionClassesClassDatasetsGet"></a>
# **mdrSendigVersionClassesClassDatasetsGet**
> SendigClassDatasets mdrSendigVersionClassesClassDatasetsGet(version, propertyClass)



Get SENDIG Class Dataset List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SendImplementationGuideSendigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SendImplementationGuideSendigApi apiInstance = new SendImplementationGuideSendigApi(defaultClient);
    String version = "3-1"; // String | CDISC Library Product Version
    String propertyClass = "Findings"; // String | SENDIG Class Identifier
    try {
      SendigClassDatasets result = apiInstance.mdrSendigVersionClassesClassDatasetsGet(version, propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendImplementationGuideSendigApi#mdrSendigVersionClassesClassDatasetsGet");
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
| **propertyClass** | **String**| SENDIG Class Identifier | |

### Return type

[**SendigClassDatasets**](SendigClassDatasets.md)

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

<a id="mdrSendigVersionClassesClassGet"></a>
# **mdrSendigVersionClassesClassGet**
> SendigClass mdrSendigVersionClassesClassGet(version, propertyClass)



Get SENDIG Class

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SendImplementationGuideSendigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SendImplementationGuideSendigApi apiInstance = new SendImplementationGuideSendigApi(defaultClient);
    String version = "3-1"; // String | CDISC Library Product Version
    String propertyClass = "Findings"; // String | SENDIG Class Identifier
    try {
      SendigClass result = apiInstance.mdrSendigVersionClassesClassGet(version, propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendImplementationGuideSendigApi#mdrSendigVersionClassesClassGet");
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
| **propertyClass** | **String**| SENDIG Class Identifier | |

### Return type

[**SendigClass**](SendigClass.md)

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

<a id="mdrSendigVersionClassesGet"></a>
# **mdrSendigVersionClassesGet**
> SendigClasses mdrSendigVersionClassesGet(version)



Get SENDIG Class List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SendImplementationGuideSendigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SendImplementationGuideSendigApi apiInstance = new SendImplementationGuideSendigApi(defaultClient);
    String version = "3-1"; // String | CDISC Library Product Version
    try {
      SendigClasses result = apiInstance.mdrSendigVersionClassesGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendImplementationGuideSendigApi#mdrSendigVersionClassesGet");
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

[**SendigClasses**](SendigClasses.md)

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

<a id="mdrSendigVersionDatasetsDatasetGet"></a>
# **mdrSendigVersionDatasetsDatasetGet**
> SendigDataset mdrSendigVersionDatasetsDatasetGet(version, dataset)



Get SENDIG Dataset

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SendImplementationGuideSendigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SendImplementationGuideSendigApi apiInstance = new SendImplementationGuideSendigApi(defaultClient);
    String version = "3-1"; // String | CDISC Library Product Version
    String dataset = "VS"; // String | SENDIG Class Identifier
    try {
      SendigDataset result = apiInstance.mdrSendigVersionDatasetsDatasetGet(version, dataset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendImplementationGuideSendigApi#mdrSendigVersionDatasetsDatasetGet");
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
| **dataset** | **String**| SENDIG Class Identifier | |

### Return type

[**SendigDataset**](SendigDataset.md)

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

<a id="mdrSendigVersionDatasetsDatasetVariablesGet"></a>
# **mdrSendigVersionDatasetsDatasetVariablesGet**
> SendigDatasetVariables mdrSendigVersionDatasetsDatasetVariablesGet(version, dataset)



Get SENDIG Dataset Variable List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SendImplementationGuideSendigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SendImplementationGuideSendigApi apiInstance = new SendImplementationGuideSendigApi(defaultClient);
    String version = "3-1"; // String | CDISC Library Product Version
    String dataset = "VS"; // String | SENDIG Class Identifier
    try {
      SendigDatasetVariables result = apiInstance.mdrSendigVersionDatasetsDatasetVariablesGet(version, dataset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendImplementationGuideSendigApi#mdrSendigVersionDatasetsDatasetVariablesGet");
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
| **dataset** | **String**| SENDIG Class Identifier | |

### Return type

[**SendigDatasetVariables**](SendigDatasetVariables.md)

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

<a id="mdrSendigVersionDatasetsDatasetVariablesVarGet"></a>
# **mdrSendigVersionDatasetsDatasetVariablesVarGet**
> SendigDatasetVariable mdrSendigVersionDatasetsDatasetVariablesVarGet(version, dataset, var)



Get SENDIG Dataset Variable

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SendImplementationGuideSendigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SendImplementationGuideSendigApi apiInstance = new SendImplementationGuideSendigApi(defaultClient);
    String version = "3-1"; // String | CDISC Library Product Version
    String dataset = "VS"; // String | SENDIG Class Identifier
    String var = "VSTEST"; // String | SENDIG Variable Identifier
    try {
      SendigDatasetVariable result = apiInstance.mdrSendigVersionDatasetsDatasetVariablesVarGet(version, dataset, var);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendImplementationGuideSendigApi#mdrSendigVersionDatasetsDatasetVariablesVarGet");
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
| **dataset** | **String**| SENDIG Class Identifier | |
| **var** | **String**| SENDIG Variable Identifier | |

### Return type

[**SendigDatasetVariable**](SendigDatasetVariable.md)

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

<a id="mdrSendigVersionDatasetsGet"></a>
# **mdrSendigVersionDatasetsGet**
> SendigDatasets mdrSendigVersionDatasetsGet(version)



Get SENDIG Dataset List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SendImplementationGuideSendigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SendImplementationGuideSendigApi apiInstance = new SendImplementationGuideSendigApi(defaultClient);
    String version = "3-1"; // String | CDISC Library Product Version
    try {
      SendigDatasets result = apiInstance.mdrSendigVersionDatasetsGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendImplementationGuideSendigApi#mdrSendigVersionDatasetsGet");
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

[**SendigDatasets**](SendigDatasets.md)

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

<a id="mdrSendigVersionGet"></a>
# **mdrSendigVersionGet**
> SendigProduct mdrSendigVersionGet(version)



Get SENDIG product

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SendImplementationGuideSendigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SendImplementationGuideSendigApi apiInstance = new SendImplementationGuideSendigApi(defaultClient);
    String version = "3-1"; // String | CDISC Library Product Version
    try {
      SendigProduct result = apiInstance.mdrSendigVersionGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendImplementationGuideSendigApi#mdrSendigVersionGet");
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

[**SendigProduct**](SendigProduct.md)

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

