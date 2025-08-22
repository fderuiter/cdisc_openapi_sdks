# StudyDataTabulationModelSdtmApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**mdrRootSdtmClassesClassVariablesVarGet**](StudyDataTabulationModelSdtmApi.md#mdrRootSdtmClassesClassVariablesVarGet) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} |  |
| [**mdrRootSdtmDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSdtmApi.md#mdrRootSdtmDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} |  |
| [**mdrSdtmVersionClassesClassDatasetsGet**](StudyDataTabulationModelSdtmApi.md#mdrSdtmVersionClassesClassDatasetsGet) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets |  |
| [**mdrSdtmVersionClassesClassGet**](StudyDataTabulationModelSdtmApi.md#mdrSdtmVersionClassesClassGet) | **GET** /mdr/sdtm/{version}/classes/{class} |  |
| [**mdrSdtmVersionClassesClassVariablesGet**](StudyDataTabulationModelSdtmApi.md#mdrSdtmVersionClassesClassVariablesGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables |  |
| [**mdrSdtmVersionClassesClassVariablesVarGet**](StudyDataTabulationModelSdtmApi.md#mdrSdtmVersionClassesClassVariablesVarGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} |  |
| [**mdrSdtmVersionClassesGet**](StudyDataTabulationModelSdtmApi.md#mdrSdtmVersionClassesGet) | **GET** /mdr/sdtm/{version}/classes |  |
| [**mdrSdtmVersionDatasetsDatasetGet**](StudyDataTabulationModelSdtmApi.md#mdrSdtmVersionDatasetsDatasetGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset} |  |
| [**mdrSdtmVersionDatasetsDatasetVariablesGet**](StudyDataTabulationModelSdtmApi.md#mdrSdtmVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables |  |
| [**mdrSdtmVersionDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSdtmApi.md#mdrSdtmVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} |  |
| [**mdrSdtmVersionDatasetsGet**](StudyDataTabulationModelSdtmApi.md#mdrSdtmVersionDatasetsGet) | **GET** /mdr/sdtm/{version}/datasets |  |
| [**mdrSdtmVersionGet**](StudyDataTabulationModelSdtmApi.md#mdrSdtmVersionGet) | **GET** /mdr/sdtm/{version} |  |


<a id="mdrRootSdtmClassesClassVariablesVarGet"></a>
# **mdrRootSdtmClassesClassVariablesVarGet**
> RootSdtmClassVariable mdrRootSdtmClassesClassVariablesVarGet(propertyClass, var)



Get Root of SDTM Class Variable

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.StudyDataTabulationModelSdtmApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    StudyDataTabulationModelSdtmApi apiInstance = new StudyDataTabulationModelSdtmApi(defaultClient);
    String propertyClass = "GeneralObservations"; // String | SDTM Class Identifier
    String var = "--DTC"; // String | SDTM Variable Identifier
    try {
      RootSdtmClassVariable result = apiInstance.mdrRootSdtmClassesClassVariablesVarGet(propertyClass, var);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StudyDataTabulationModelSdtmApi#mdrRootSdtmClassesClassVariablesVarGet");
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
| **propertyClass** | **String**| SDTM Class Identifier | |
| **var** | **String**| SDTM Variable Identifier | |

### Return type

[**RootSdtmClassVariable**](RootSdtmClassVariable.md)

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

<a id="mdrRootSdtmDatasetsDatasetVariablesVarGet"></a>
# **mdrRootSdtmDatasetsDatasetVariablesVarGet**
> RootSdtmDatasetVariable mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset, var)



Get Root SDTM Dataset Variable

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.StudyDataTabulationModelSdtmApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    StudyDataTabulationModelSdtmApi apiInstance = new StudyDataTabulationModelSdtmApi(defaultClient);
    String dataset = "DM"; // String | SDTM Dataset Identifier
    String var = "SUBJID"; // String | SDTM Variable Identifier
    try {
      RootSdtmDatasetVariable result = apiInstance.mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset, var);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StudyDataTabulationModelSdtmApi#mdrRootSdtmDatasetsDatasetVariablesVarGet");
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
| **dataset** | **String**| SDTM Dataset Identifier | |
| **var** | **String**| SDTM Variable Identifier | |

### Return type

[**RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)

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

<a id="mdrSdtmVersionClassesClassDatasetsGet"></a>
# **mdrSdtmVersionClassesClassDatasetsGet**
> SdtmClassDatasets mdrSdtmVersionClassesClassDatasetsGet(version, propertyClass)



Get SDTM Class Dataset List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.StudyDataTabulationModelSdtmApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    StudyDataTabulationModelSdtmApi apiInstance = new StudyDataTabulationModelSdtmApi(defaultClient);
    String version = "1-8"; // String | CDISC Library Product Version
    String propertyClass = "SpecialPurpose"; // String | SDTM Class Identifier
    try {
      SdtmClassDatasets result = apiInstance.mdrSdtmVersionClassesClassDatasetsGet(version, propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StudyDataTabulationModelSdtmApi#mdrSdtmVersionClassesClassDatasetsGet");
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
| **propertyClass** | **String**| SDTM Class Identifier | |

### Return type

[**SdtmClassDatasets**](SdtmClassDatasets.md)

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

<a id="mdrSdtmVersionClassesClassGet"></a>
# **mdrSdtmVersionClassesClassGet**
> SdtmClass mdrSdtmVersionClassesClassGet(version, propertyClass)



Get SDTM Class

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.StudyDataTabulationModelSdtmApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    StudyDataTabulationModelSdtmApi apiInstance = new StudyDataTabulationModelSdtmApi(defaultClient);
    String version = "1-8"; // String | CDISC Library Product Version
    String propertyClass = "Findings"; // String | SDTM Class Identifier
    try {
      SdtmClass result = apiInstance.mdrSdtmVersionClassesClassGet(version, propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StudyDataTabulationModelSdtmApi#mdrSdtmVersionClassesClassGet");
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
| **propertyClass** | **String**| SDTM Class Identifier | |

### Return type

[**SdtmClass**](SdtmClass.md)

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

<a id="mdrSdtmVersionClassesClassVariablesGet"></a>
# **mdrSdtmVersionClassesClassVariablesGet**
> SdtmClassVariables mdrSdtmVersionClassesClassVariablesGet(version, propertyClass)



Get SDTM Class Variable List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.StudyDataTabulationModelSdtmApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    StudyDataTabulationModelSdtmApi apiInstance = new StudyDataTabulationModelSdtmApi(defaultClient);
    String version = "1-8"; // String | CDISC Library Product Version
    String propertyClass = "GeneralObservations"; // String | SDTM Class Identifier
    try {
      SdtmClassVariables result = apiInstance.mdrSdtmVersionClassesClassVariablesGet(version, propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StudyDataTabulationModelSdtmApi#mdrSdtmVersionClassesClassVariablesGet");
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
| **propertyClass** | **String**| SDTM Class Identifier | |

### Return type

[**SdtmClassVariables**](SdtmClassVariables.md)

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

<a id="mdrSdtmVersionClassesClassVariablesVarGet"></a>
# **mdrSdtmVersionClassesClassVariablesVarGet**
> SdtmClassVariable mdrSdtmVersionClassesClassVariablesVarGet(version, propertyClass, var)



Get SDTM Class Variable

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.StudyDataTabulationModelSdtmApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    StudyDataTabulationModelSdtmApi apiInstance = new StudyDataTabulationModelSdtmApi(defaultClient);
    String version = "1-8"; // String | CDISC Library Product Version
    String propertyClass = "GeneralObservations"; // String | SDTM Class Identifier
    String var = "--DTC"; // String | SDTM Variable Identifier
    try {
      SdtmClassVariable result = apiInstance.mdrSdtmVersionClassesClassVariablesVarGet(version, propertyClass, var);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StudyDataTabulationModelSdtmApi#mdrSdtmVersionClassesClassVariablesVarGet");
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
| **propertyClass** | **String**| SDTM Class Identifier | |
| **var** | **String**| SDTM Variable Identifier | |

### Return type

[**SdtmClassVariable**](SdtmClassVariable.md)

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

<a id="mdrSdtmVersionClassesGet"></a>
# **mdrSdtmVersionClassesGet**
> SdtmClasses mdrSdtmVersionClassesGet(version)



Get SDTM Class List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.StudyDataTabulationModelSdtmApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    StudyDataTabulationModelSdtmApi apiInstance = new StudyDataTabulationModelSdtmApi(defaultClient);
    String version = "1-8"; // String | CDISC Library Product Version
    try {
      SdtmClasses result = apiInstance.mdrSdtmVersionClassesGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StudyDataTabulationModelSdtmApi#mdrSdtmVersionClassesGet");
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

[**SdtmClasses**](SdtmClasses.md)

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

<a id="mdrSdtmVersionDatasetsDatasetGet"></a>
# **mdrSdtmVersionDatasetsDatasetGet**
> SdtmDataset mdrSdtmVersionDatasetsDatasetGet(version, dataset)



Get SDTM Dataset

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.StudyDataTabulationModelSdtmApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    StudyDataTabulationModelSdtmApi apiInstance = new StudyDataTabulationModelSdtmApi(defaultClient);
    String version = "1-8"; // String | CDISC Library Product Version
    String dataset = "DM"; // String | SDTM Dataset Identifier
    try {
      SdtmDataset result = apiInstance.mdrSdtmVersionDatasetsDatasetGet(version, dataset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StudyDataTabulationModelSdtmApi#mdrSdtmVersionDatasetsDatasetGet");
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
| **dataset** | **String**| SDTM Dataset Identifier | |

### Return type

[**SdtmDataset**](SdtmDataset.md)

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

<a id="mdrSdtmVersionDatasetsDatasetVariablesGet"></a>
# **mdrSdtmVersionDatasetsDatasetVariablesGet**
> SdtmDatasetVariables mdrSdtmVersionDatasetsDatasetVariablesGet(version, dataset)



Get SDTM Dataset Variable List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.StudyDataTabulationModelSdtmApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    StudyDataTabulationModelSdtmApi apiInstance = new StudyDataTabulationModelSdtmApi(defaultClient);
    String version = "1-8"; // String | CDISC Library Product Version
    String dataset = "DM"; // String | SDTM Dataset Identifier
    try {
      SdtmDatasetVariables result = apiInstance.mdrSdtmVersionDatasetsDatasetVariablesGet(version, dataset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StudyDataTabulationModelSdtmApi#mdrSdtmVersionDatasetsDatasetVariablesGet");
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
| **dataset** | **String**| SDTM Dataset Identifier | |

### Return type

[**SdtmDatasetVariables**](SdtmDatasetVariables.md)

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

<a id="mdrSdtmVersionDatasetsDatasetVariablesVarGet"></a>
# **mdrSdtmVersionDatasetsDatasetVariablesVarGet**
> SdtmDatasetVariable mdrSdtmVersionDatasetsDatasetVariablesVarGet(version, dataset, var)



Get SDTM Dataset Variable

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.StudyDataTabulationModelSdtmApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    StudyDataTabulationModelSdtmApi apiInstance = new StudyDataTabulationModelSdtmApi(defaultClient);
    String version = "1-8"; // String | CDISC Library Product Version
    String dataset = "DM"; // String | SDTM Dataset Identifier
    String var = "SUBJID"; // String | SDTM Variable Identifier
    try {
      SdtmDatasetVariable result = apiInstance.mdrSdtmVersionDatasetsDatasetVariablesVarGet(version, dataset, var);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StudyDataTabulationModelSdtmApi#mdrSdtmVersionDatasetsDatasetVariablesVarGet");
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
| **dataset** | **String**| SDTM Dataset Identifier | |
| **var** | **String**| SDTM Variable Identifier | |

### Return type

[**SdtmDatasetVariable**](SdtmDatasetVariable.md)

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

<a id="mdrSdtmVersionDatasetsGet"></a>
# **mdrSdtmVersionDatasetsGet**
> SdtmDatasets mdrSdtmVersionDatasetsGet(version)



Get SDTM Dataset List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.StudyDataTabulationModelSdtmApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    StudyDataTabulationModelSdtmApi apiInstance = new StudyDataTabulationModelSdtmApi(defaultClient);
    String version = "1-8"; // String | CDISC Library Product Version
    try {
      SdtmDatasets result = apiInstance.mdrSdtmVersionDatasetsGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StudyDataTabulationModelSdtmApi#mdrSdtmVersionDatasetsGet");
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

[**SdtmDatasets**](SdtmDatasets.md)

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

<a id="mdrSdtmVersionGet"></a>
# **mdrSdtmVersionGet**
> SdtmProduct mdrSdtmVersionGet(version)



Get SDTM product

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.StudyDataTabulationModelSdtmApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    StudyDataTabulationModelSdtmApi apiInstance = new StudyDataTabulationModelSdtmApi(defaultClient);
    String version = "1-8"; // String | CDISC Library Product Version
    try {
      SdtmProduct result = apiInstance.mdrSdtmVersionGet(version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StudyDataTabulationModelSdtmApi#mdrSdtmVersionGet");
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

[**SdtmProduct**](SdtmProduct.md)

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

