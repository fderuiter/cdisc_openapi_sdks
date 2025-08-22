# MeasuresApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**mdrQrsMeasureVersionGet**](MeasuresApi.md#mdrQrsMeasureVersionGet) | **GET** /mdr/qrs/{measure}/{version} |  |
| [**mdrQrsMeasureVersionItemsGet**](MeasuresApi.md#mdrQrsMeasureVersionItemsGet) | **GET** /mdr/qrs/{measure}/{version}/items |  |
| [**mdrQrsMeasureVersionItemsItemGet**](MeasuresApi.md#mdrQrsMeasureVersionItemsItemGet) | **GET** /mdr/qrs/{measure}/{version}/items/{item} |  |
| [**mdrQrsMeasureVersionResponsegroupsGet**](MeasuresApi.md#mdrQrsMeasureVersionResponsegroupsGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups |  |
| [**mdrQrsMeasureVersionResponsegroupsResponsegroupGet**](MeasuresApi.md#mdrQrsMeasureVersionResponsegroupsResponsegroupGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} |  |


<a id="mdrQrsMeasureVersionGet"></a>
# **mdrQrsMeasureVersionGet**
> QrsProduct mdrQrsMeasureVersionGet(measure, version)



Get QRS Product

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MeasuresApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    MeasuresApi apiInstance = new MeasuresApi(defaultClient);
    String measure = "AIMS1"; // String | QRS Measure Identifier
    String version = "1-0"; // String | CDISC Library Product Version
    try {
      QrsProduct result = apiInstance.mdrQrsMeasureVersionGet(measure, version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeasuresApi#mdrQrsMeasureVersionGet");
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
| **measure** | **String**| QRS Measure Identifier | |
| **version** | **String**| CDISC Library Product Version | |

### Return type

[**QrsProduct**](QrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel

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

<a id="mdrQrsMeasureVersionItemsGet"></a>
# **mdrQrsMeasureVersionItemsGet**
> QrsItems mdrQrsMeasureVersionItemsGet(measure, version)



Get QRS Item List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MeasuresApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    MeasuresApi apiInstance = new MeasuresApi(defaultClient);
    String measure = "AIMS1"; // String | QRS Measure Identifier
    String version = "1-0"; // String | CDISC Library Product Version
    try {
      QrsItems result = apiInstance.mdrQrsMeasureVersionItemsGet(measure, version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeasuresApi#mdrQrsMeasureVersionItemsGet");
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
| **measure** | **String**| QRS Measure Identifier | |
| **version** | **String**| CDISC Library Product Version | |

### Return type

[**QrsItems**](QrsItems.md)

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

<a id="mdrQrsMeasureVersionItemsItemGet"></a>
# **mdrQrsMeasureVersionItemsItemGet**
> QrsItem mdrQrsMeasureVersionItemsItemGet(measure, version, item)



Get QRS Item

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MeasuresApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    MeasuresApi apiInstance = new MeasuresApi(defaultClient);
    String measure = "AIMS1"; // String | QRS Measure Identifier
    String version = "1-0"; // String | CDISC Library Product Version
    String item = "AIMS01.001"; // String | QRS Measure Item Identifier
    try {
      QrsItem result = apiInstance.mdrQrsMeasureVersionItemsItemGet(measure, version, item);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeasuresApi#mdrQrsMeasureVersionItemsItemGet");
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
| **measure** | **String**| QRS Measure Identifier | |
| **version** | **String**| CDISC Library Product Version | |
| **item** | **String**| QRS Measure Item Identifier | |

### Return type

[**QrsItem**](QrsItem.md)

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

<a id="mdrQrsMeasureVersionResponsegroupsGet"></a>
# **mdrQrsMeasureVersionResponsegroupsGet**
> QrsResponsegroups mdrQrsMeasureVersionResponsegroupsGet(measure, version)



Get QRS Response Group List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MeasuresApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    MeasuresApi apiInstance = new MeasuresApi(defaultClient);
    String measure = "AIMS1"; // String | QRS Measure Identifier
    String version = "1-0"; // String | CDISC Library Product Version
    try {
      QrsResponsegroups result = apiInstance.mdrQrsMeasureVersionResponsegroupsGet(measure, version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeasuresApi#mdrQrsMeasureVersionResponsegroupsGet");
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
| **measure** | **String**| QRS Measure Identifier | |
| **version** | **String**| CDISC Library Product Version | |

### Return type

[**QrsResponsegroups**](QrsResponsegroups.md)

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

<a id="mdrQrsMeasureVersionResponsegroupsResponsegroupGet"></a>
# **mdrQrsMeasureVersionResponsegroupsResponsegroupGet**
> QrsResponsegroup mdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure, version, responsegroup)



Get QRS Response Group

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MeasuresApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    MeasuresApi apiInstance = new MeasuresApi(defaultClient);
    String measure = "AIMS1"; // String | QRS Measure Identifier
    String version = "1-0"; // String | CDISC Library Product Version
    String responsegroup = "AIMS1.11to12"; // String | QRS Measure's Response Group Identifier
    try {
      QrsResponsegroup result = apiInstance.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure, version, responsegroup);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeasuresApi#mdrQrsMeasureVersionResponsegroupsResponsegroupGet");
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
| **measure** | **String**| QRS Measure Identifier | |
| **version** | **String**| CDISC Library Product Version | |
| **responsegroup** | **String**| QRS Measure&#39;s Response Group Identifier | |

### Return type

[**QrsResponsegroup**](QrsResponsegroup.md)

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

