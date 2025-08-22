# AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**mdrAdamProductDatastructuresGet**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdrAdamProductDatastructuresGet) | **GET** /mdr/adam/{product}/datastructures |  |
| [**mdrAdamProductDatastructuresStructureGet**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdrAdamProductDatastructuresStructureGet) | **GET** /mdr/adam/{product}/datastructures/{structure} |  |
| [**mdrAdamProductDatastructuresStructureVariablesGet**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdrAdamProductDatastructuresStructureVariablesGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables |  |
| [**mdrAdamProductDatastructuresStructureVariablesVarGet**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdrAdamProductDatastructuresStructureVariablesVarGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} |  |
| [**mdrAdamProductDatastructuresStructureVarsetsGet**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdrAdamProductDatastructuresStructureVarsetsGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets |  |
| [**mdrAdamProductDatastructuresStructureVarsetsVarsetGet**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdrAdamProductDatastructuresStructureVarsetsVarsetGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} |  |
| [**mdrAdamProductGet**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdrAdamProductGet) | **GET** /mdr/adam/{product} |  |


<a id="mdrAdamProductDatastructuresGet"></a>
# **mdrAdamProductDatastructuresGet**
> AdamProductDatastructures mdrAdamProductDatastructuresGet(product)



Get ADaM Data Structure List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi apiInstance = new AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi(defaultClient);
    String product = "adamig-1-1"; // String | CDISC Library Product
    try {
      AdamProductDatastructures result = apiInstance.mdrAdamProductDatastructuresGet(product);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi#mdrAdamProductDatastructuresGet");
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
| **product** | **String**| CDISC Library Product | |

### Return type

[**AdamProductDatastructures**](AdamProductDatastructures.md)

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

<a id="mdrAdamProductDatastructuresStructureGet"></a>
# **mdrAdamProductDatastructuresStructureGet**
> AdamDatastructure mdrAdamProductDatastructuresStructureGet(product, structure)



Get ADaM Data Structure

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi apiInstance = new AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi(defaultClient);
    String product = "adamig-1-1"; // String | CDISC Library Product
    String structure = "ADSL"; // String | Data structure Identifier
    try {
      AdamDatastructure result = apiInstance.mdrAdamProductDatastructuresStructureGet(product, structure);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi#mdrAdamProductDatastructuresStructureGet");
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
| **product** | **String**| CDISC Library Product | |
| **structure** | **String**| Data structure Identifier | |

### Return type

[**AdamDatastructure**](AdamDatastructure.md)

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

<a id="mdrAdamProductDatastructuresStructureVariablesGet"></a>
# **mdrAdamProductDatastructuresStructureVariablesGet**
> AdamDatastructureVariables mdrAdamProductDatastructuresStructureVariablesGet(product, structure)



Get ADaM Variable List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi apiInstance = new AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi(defaultClient);
    String product = "adamig-1-1"; // String | CDISC Library Product
    String structure = "ADSL"; // String | ADaM Data Structure Identifier
    try {
      AdamDatastructureVariables result = apiInstance.mdrAdamProductDatastructuresStructureVariablesGet(product, structure);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi#mdrAdamProductDatastructuresStructureVariablesGet");
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
| **product** | **String**| CDISC Library Product | |
| **structure** | **String**| ADaM Data Structure Identifier | |

### Return type

[**AdamDatastructureVariables**](AdamDatastructureVariables.md)

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

<a id="mdrAdamProductDatastructuresStructureVariablesVarGet"></a>
# **mdrAdamProductDatastructuresStructureVariablesVarGet**
> AdamVariable mdrAdamProductDatastructuresStructureVariablesVarGet(product, structure, var)



Get ADaM Variable

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi apiInstance = new AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi(defaultClient);
    String product = "adamig-1-1"; // String | CDISC Library Product
    String structure = "ADSL"; // String | ADaM Data Structure Identifier
    String var = "SITEGRy"; // String | ADaM Variable Identifier
    try {
      AdamVariable result = apiInstance.mdrAdamProductDatastructuresStructureVariablesVarGet(product, structure, var);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi#mdrAdamProductDatastructuresStructureVariablesVarGet");
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
| **product** | **String**| CDISC Library Product | |
| **structure** | **String**| ADaM Data Structure Identifier | |
| **var** | **String**| ADaM Variable Identifier | |

### Return type

[**AdamVariable**](AdamVariable.md)

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

<a id="mdrAdamProductDatastructuresStructureVarsetsGet"></a>
# **mdrAdamProductDatastructuresStructureVarsetsGet**
> AdamDatastructureVarsets mdrAdamProductDatastructuresStructureVarsetsGet(product, structure)



Get ADaM Variable Set List

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi apiInstance = new AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi(defaultClient);
    String product = "adamig-1-1"; // String | CDISC Library Product
    String structure = "ADSL"; // String | ADaM Data Structure Identifier
    try {
      AdamDatastructureVarsets result = apiInstance.mdrAdamProductDatastructuresStructureVarsetsGet(product, structure);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi#mdrAdamProductDatastructuresStructureVarsetsGet");
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
| **product** | **String**| CDISC Library Product | |
| **structure** | **String**| ADaM Data Structure Identifier | |

### Return type

[**AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

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

<a id="mdrAdamProductDatastructuresStructureVarsetsVarsetGet"></a>
# **mdrAdamProductDatastructuresStructureVarsetsVarsetGet**
> AdamVarset mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product, structure, varset)



Get ADaM Variable Set

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi apiInstance = new AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi(defaultClient);
    String product = "adamig-1-1"; // String | CDISC Library Product
    String structure = "ADSL"; // String | ADaM Data Structure Identifier
    String varset = "Identifier"; // String | ADaM Variable Set Identifier
    try {
      AdamVarset result = apiInstance.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product, structure, varset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi#mdrAdamProductDatastructuresStructureVarsetsVarsetGet");
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
| **product** | **String**| CDISC Library Product | |
| **structure** | **String**| ADaM Data Structure Identifier | |
| **varset** | **String**| ADaM Variable Set Identifier | |

### Return type

[**AdamVarset**](AdamVarset.md)

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

<a id="mdrAdamProductGet"></a>
# **mdrAdamProductGet**
> AdamProduct mdrAdamProductGet(product)



Get ADaM Product

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi apiInstance = new AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi(defaultClient);
    String product = "adamig-1-1"; // String | CDISC Library Product
    try {
      AdamProduct result = apiInstance.mdrAdamProductGet(product);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi#mdrAdamProductGet");
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
| **product** | **String**| CDISC Library Product | |

### Return type

[**AdamProduct**](AdamProduct.md)

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

