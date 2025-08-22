# SearchesApi

All URIs are relative to *https://library.cdisc.org/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**mdrSearchGet**](SearchesApi.md#mdrSearchGet) | **GET** /mdr/search |  |
| [**mdrSearchScopesGet**](SearchesApi.md#mdrSearchScopesGet) | **GET** /mdr/search/scopes |  |
| [**mdrSearchScopesScopeGet**](SearchesApi.md#mdrSearchScopesScopeGet) | **GET** /mdr/search/scopes/{scope} |  |


<a id="mdrSearchGet"></a>
# **mdrSearchGet**
> DefaultSearchResponse mdrSearchGet(q, highlight, start, pageSize, propertyClass, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version)



Get Search Results Across CDISC Library

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SearchesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SearchesApi apiInstance = new SearchesApi(defaultClient);
    String q = "q_example"; // String | Search Term Expression
    String highlight = "highlight_example"; // String | Search Highlight Expression
    BigDecimal start = new BigDecimal("0"); // BigDecimal | Initial Search Result Index
    BigDecimal pageSize = new BigDecimal("100"); // BigDecimal | Number of Search Results to Return
    String propertyClass = "propertyClass_example"; // String | Limit Search by Setting Scope to Class
    String codelist = "codelist_example"; // String | Limit Search by Setting Scope to Codelist
    String conceptId = "conceptId_example"; // String | Limit Search by Setting Scope to Concept ID
    String core = "core_example"; // String | Limit Search by Setting Scope to Core
    String dataStructure = "dataStructure_example"; // String | Limit Search by Setting Scope to Data Structure
    String datasetStructure = "datasetStructure_example"; // String | Limit Search by Setting Scope to Dataset Structure
    String definition = "definition_example"; // String | Limit Search by Setting Scope to Definition
    String description = "description_example"; // String | Limit Search by Setting Scope to Description
    String domain = "domain_example"; // String | Limit Search by Setting Scope to Domain
    String effectiveDate = "effectiveDate_example"; // String | Limit Search by Setting Scope to Effective Date
    String extensible = "extensible_example"; // String | Limit Search by Setting Scope to Extensible
    String href = "href_example"; // String | Limit Search by Setting Scope to Href
    String label = "label_example"; // String | Limit Search by Setting Scope to Label
    String measureType = "measureType_example"; // String | SLimit Search by Setting Scope to Measure Type
    String name = "name_example"; // String | Limit Search by Setting Scope to Name
    String preferredTerm = "preferredTerm_example"; // String | Limit Search by Setting Scope to Preferred Term
    String product = "product_example"; // String | Limit Search by Setting Scope to Product
    String productGroup = "productGroup_example"; // String | Limit Search by Setting Scope to Product Group
    String registrationStatus = "registrationStatus_example"; // String | Limit Search by Setting Scope to Registration Status
    String roleDescription = "roleDescription_example"; // String | Limit Search by Setting Scope to Role Description
    String sdtmTarget = "sdtmTarget_example"; // String | Limit Search by Setting Scope to SDTM Target
    String simpleDatatype = "simpleDatatype_example"; // String | Limit Search by Setting Scope to Simple Datatype
    String submissionValue = "submissionValue_example"; // String | Limit Search by Setting Scope to Submission Value
    String synonyms = "synonyms_example"; // String | Limit Search by Setting Scope to Synonyms
    String type = "type_example"; // String | Limit Search by Setting Scope to Type
    String uiHref = "uiHref_example"; // String | Limit Search by Setting Scope to UI Href
    String valueDomain = "valueDomain_example"; // String | Limit Search by Setting Scope to Value Domain
    String variableSet = "variableSet_example"; // String | Limit Search by Setting Scope to Variable Set
    String version = "version_example"; // String | Limit Search by Setting Scope to Version
    try {
      DefaultSearchResponse result = apiInstance.mdrSearchGet(q, highlight, start, pageSize, propertyClass, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SearchesApi#mdrSearchGet");
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
| **q** | **String**| Search Term Expression | |
| **highlight** | **String**| Search Highlight Expression | [optional] |
| **start** | **BigDecimal**| Initial Search Result Index | [optional] [default to 0] |
| **pageSize** | **BigDecimal**| Number of Search Results to Return | [optional] [default to 100] |
| **propertyClass** | **String**| Limit Search by Setting Scope to Class | [optional] |
| **codelist** | **String**| Limit Search by Setting Scope to Codelist | [optional] |
| **conceptId** | **String**| Limit Search by Setting Scope to Concept ID | [optional] |
| **core** | **String**| Limit Search by Setting Scope to Core | [optional] |
| **dataStructure** | **String**| Limit Search by Setting Scope to Data Structure | [optional] |
| **datasetStructure** | **String**| Limit Search by Setting Scope to Dataset Structure | [optional] |
| **definition** | **String**| Limit Search by Setting Scope to Definition | [optional] |
| **description** | **String**| Limit Search by Setting Scope to Description | [optional] |
| **domain** | **String**| Limit Search by Setting Scope to Domain | [optional] |
| **effectiveDate** | **String**| Limit Search by Setting Scope to Effective Date | [optional] |
| **extensible** | **String**| Limit Search by Setting Scope to Extensible | [optional] |
| **href** | **String**| Limit Search by Setting Scope to Href | [optional] |
| **label** | **String**| Limit Search by Setting Scope to Label | [optional] |
| **measureType** | **String**| SLimit Search by Setting Scope to Measure Type | [optional] |
| **name** | **String**| Limit Search by Setting Scope to Name | [optional] |
| **preferredTerm** | **String**| Limit Search by Setting Scope to Preferred Term | [optional] |
| **product** | **String**| Limit Search by Setting Scope to Product | [optional] |
| **productGroup** | **String**| Limit Search by Setting Scope to Product Group | [optional] |
| **registrationStatus** | **String**| Limit Search by Setting Scope to Registration Status | [optional] |
| **roleDescription** | **String**| Limit Search by Setting Scope to Role Description | [optional] |
| **sdtmTarget** | **String**| Limit Search by Setting Scope to SDTM Target | [optional] |
| **simpleDatatype** | **String**| Limit Search by Setting Scope to Simple Datatype | [optional] |
| **submissionValue** | **String**| Limit Search by Setting Scope to Submission Value | [optional] |
| **synonyms** | **String**| Limit Search by Setting Scope to Synonyms | [optional] |
| **type** | **String**| Limit Search by Setting Scope to Type | [optional] |
| **uiHref** | **String**| Limit Search by Setting Scope to UI Href | [optional] |
| **valueDomain** | **String**| Limit Search by Setting Scope to Value Domain | [optional] |
| **variableSet** | **String**| Limit Search by Setting Scope to Variable Set | [optional] |
| **version** | **String**| Limit Search by Setting Scope to Version | [optional] |

### Return type

[**DefaultSearchResponse**](DefaultSearchResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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

<a id="mdrSearchScopesGet"></a>
# **mdrSearchScopesGet**
> MdrSearchScopesGet200Response mdrSearchScopesGet()



Get Search Results Across CDISC Library

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SearchesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SearchesApi apiInstance = new SearchesApi(defaultClient);
    try {
      MdrSearchScopesGet200Response result = apiInstance.mdrSearchScopesGet();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SearchesApi#mdrSearchScopesGet");
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

[**MdrSearchScopesGet200Response**](MdrSearchScopesGet200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a id="mdrSearchScopesScopeGet"></a>
# **mdrSearchScopesScopeGet**
> ScopeValues mdrSearchScopesScopeGet(scope)



Get Search Results Limited to Scope

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SearchesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://library.cdisc.org/api");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    SearchesApi apiInstance = new SearchesApi(defaultClient);
    DefaultSearchScopes scope = DefaultSearchScopes.fromValue("class"); // DefaultSearchScopes | Search Scope
    try {
      ScopeValues result = apiInstance.mdrSearchScopesScopeGet(scope);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SearchesApi#mdrSearchScopesScopeGet");
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
| **scope** | [**DefaultSearchScopes**](.md)| Search Scope | [enum: class, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version] |

### Return type

[**ScopeValues**](ScopeValues.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

