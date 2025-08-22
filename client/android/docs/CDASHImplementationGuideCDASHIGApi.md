# CDASHImplementationGuideCDASHIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCdashigVersionClassesClassDomainsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassDomainsGet) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | 
[**mdrCdashigVersionClassesClassGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassGet) | **GET** /mdr/cdashig/{version}/classes/{class} | 
[**mdrCdashigVersionClassesClassScenariosGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassScenariosGet) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | 
[**mdrCdashigVersionClassesGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesGet) | **GET** /mdr/cdashig/{version}/classes | 
[**mdrCdashigVersionDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
[**mdrCdashigVersionDomainsDomainFieldsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainFieldsGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | 
[**mdrCdashigVersionDomainsDomainGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainGet) | **GET** /mdr/cdashig/{version}/domains/{domain} | 
[**mdrCdashigVersionDomainsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsGet) | **GET** /mdr/cdashig/{version}/domains | 
[**mdrCdashigVersionGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionGet) | **GET** /mdr/cdashig/{version} | 
[**mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
[**mdrCdashigVersionScenariosDomainScenarioFieldsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioFieldsGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
[**mdrCdashigVersionScenariosDomainScenarioGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
[**mdrCdashigVersionScenariosGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosGet) | **GET** /mdr/cdashig/{version}/scenarios | 
[**mdrRootCdashigDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrRootCdashigDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
[**mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrRootCdashigScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 



## mdrCdashigVersionClassesClassDomainsGet

> CdashigClassDomains mdrCdashigVersionClassesClassDomainsGet(version, _class)



Get CDASHIG Class Domain List

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
String _class = Findings; // String | CDASHIG Class Identifier
try {
    CdashigClassDomains result = apiInstance.mdrCdashigVersionClassesClassDomainsGet(version, _class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionClassesClassDomainsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| CDASHIG Class Identifier | [default to null]

### Return type

[**CdashigClassDomains**](CdashigClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionClassesClassGet

> CdashigClass mdrCdashigVersionClassesClassGet(version, _class)



Get CDASHIG Class

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
String _class = Findings; // String | CDASHIG Class Identifier
try {
    CdashigClass result = apiInstance.mdrCdashigVersionClassesClassGet(version, _class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionClassesClassGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| CDASHIG Class Identifier | [default to null]

### Return type

[**CdashigClass**](CdashigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionClassesClassScenariosGet

> CdashigClassScenarios mdrCdashigVersionClassesClassScenariosGet(version, _class)



Get CDASHIG Class Scenario List

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
String _class = Findings; // String | CDASHIG Class Identifier
try {
    CdashigClassScenarios result = apiInstance.mdrCdashigVersionClassesClassScenariosGet(version, _class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionClassesClassScenariosGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| CDASHIG Class Identifier | [default to null]

### Return type

[**CdashigClassScenarios**](CdashigClassScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionClassesGet

> CdashigProductClasses mdrCdashigVersionClassesGet(version)



Get CDASHIG Class List

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
try {
    CdashigProductClasses result = apiInstance.mdrCdashigVersionClassesGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionClassesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**CdashigProductClasses**](CdashigProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionDomainsDomainFieldsFieldGet

> CdashigDomainField mdrCdashigVersionDomainsDomainFieldsFieldGet(version, domain, field)



Get CDASHIG Domain Field

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
String domain = VS; // String | CDASHIG Domain Identifier
String field = VSDAT; // String | CDASHIG Field Identifier
try {
    CdashigDomainField result = apiInstance.mdrCdashigVersionDomainsDomainFieldsFieldGet(version, domain, field);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionDomainsDomainFieldsFieldGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **domain** | **String**| CDASHIG Domain Identifier | [default to null]
 **field** | **String**| CDASHIG Field Identifier | [default to null]

### Return type

[**CdashigDomainField**](CdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionDomainsDomainFieldsGet

> CdashigDomainFields mdrCdashigVersionDomainsDomainFieldsGet(version, domain)



Get CDASHIG Domain Field List

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
String domain = VS; // String | CDASHIG Domain Identifier
try {
    CdashigDomainFields result = apiInstance.mdrCdashigVersionDomainsDomainFieldsGet(version, domain);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionDomainsDomainFieldsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **domain** | **String**| CDASHIG Domain Identifier | [default to null]

### Return type

[**CdashigDomainFields**](CdashigDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionDomainsDomainGet

> CdashigDomain mdrCdashigVersionDomainsDomainGet(version, domain)



Get CDASHIG Domain

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
String domain = VS; // String | CDASHIG Domain Identifier
try {
    CdashigDomain result = apiInstance.mdrCdashigVersionDomainsDomainGet(version, domain);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionDomainsDomainGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **domain** | **String**| CDASHIG Domain Identifier | [default to null]

### Return type

[**CdashigDomain**](CdashigDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionDomainsGet

> CdashigProductDomains mdrCdashigVersionDomainsGet(version)



Get CDASHIG Domain List

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
try {
    CdashigProductDomains result = apiInstance.mdrCdashigVersionDomainsGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionDomainsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**CdashigProductDomains**](CdashigProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionGet

> CdashigProduct mdrCdashigVersionGet(version)



Get CDASHIG Product

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
try {
    CdashigProduct result = apiInstance.mdrCdashigVersionGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**CdashigProduct**](CdashigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet


## mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet

> CdashigScenarioField mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version, domain, scenario, field)



Get CDASHIG Scenario Field

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
String domain = VS; // String | CDASHIG Domain Identifier
String scenario = Generic; // String | CDASHIG Scenario Identifier
String field = VSDAT; // String | CDASHIG Field Identifier
try {
    CdashigScenarioField result = apiInstance.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version, domain, scenario, field);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **domain** | **String**| CDASHIG Domain Identifier | [default to null]
 **scenario** | **String**| CDASHIG Scenario Identifier | [default to null]
 **field** | **String**| CDASHIG Field Identifier | [default to null]

### Return type

[**CdashigScenarioField**](CdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionScenariosDomainScenarioFieldsGet

> CdashigScenarioFields mdrCdashigVersionScenariosDomainScenarioFieldsGet(version, domain, scenario)



Get CDASHIG Scenario Field List

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
String domain = VS; // String | CDASHIG Domain Identifier
String scenario = HorizontalGeneric; // String | CDASHIG Scenario Identifier
try {
    CdashigScenarioFields result = apiInstance.mdrCdashigVersionScenariosDomainScenarioFieldsGet(version, domain, scenario);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionScenariosDomainScenarioFieldsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **domain** | **String**| CDASHIG Domain Identifier | [default to null]
 **scenario** | **String**| CDASHIG Scenario Identifier | [default to null]

### Return type

[**CdashigScenarioFields**](CdashigScenarioFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionScenariosDomainScenarioGet

> CdashigScenario mdrCdashigVersionScenariosDomainScenarioGet(version, domain, scenario)



Get CDASHIG Scenario

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
String domain = VS; // String | CDASHIG Domain Identifier
String scenario = HorizontalGeneric; // String | CDASHIG Scenario Identifier
try {
    CdashigScenario result = apiInstance.mdrCdashigVersionScenariosDomainScenarioGet(version, domain, scenario);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionScenariosDomainScenarioGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **domain** | **String**| CDASHIG Domain Identifier | [default to null]
 **scenario** | **String**| CDASHIG Scenario Identifier | [default to null]

### Return type

[**CdashigScenario**](CdashigScenario.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionScenariosGet

> CdashigProductScenarios mdrCdashigVersionScenariosGet(version)



Get CDASHIG Scenario List

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String version = 2-1; // String | CDISC Library Product Version
try {
    CdashigProductScenarios result = apiInstance.mdrCdashigVersionScenariosGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrCdashigVersionScenariosGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**CdashigProductScenarios**](CdashigProductScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrRootCdashigDomainsDomainFieldsFieldGet

> RootCdashigDomainField mdrRootCdashigDomainsDomainFieldsFieldGet(domain, field)



Get Root CDASHIG Domain Field

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String domain = VS; // String | CDASHIG Domain Identifier
String field = VSDAT; // String | CDASHIG Field Identifier
try {
    RootCdashigDomainField result = apiInstance.mdrRootCdashigDomainsDomainFieldsFieldGet(domain, field);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrRootCdashigDomainsDomainFieldsFieldGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| CDASHIG Domain Identifier | [default to null]
 **field** | **String**| CDASHIG Field Identifier | [default to null]

### Return type

[**RootCdashigDomainField**](RootCdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrRootCdashigScenariosDomainScenarioFieldsFieldGet

> RootCdashigScenarioField mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain, scenario, field)



Get Root CDASHIG Scenario Field

### Example

```java
// Import classes:
//import org.openapitools.client.api.CDASHImplementationGuideCDASHIGApi;

CDASHImplementationGuideCDASHIGApi apiInstance = new CDASHImplementationGuideCDASHIGApi();
String domain = VS; // String | CDASHIG Domain Identifier
String scenario = Generic; // String | CDASHIG Scenario Identifier
String field = VSDAT; // String | CDASHIG Field Identifier
try {
    RootCdashigScenarioField result = apiInstance.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain, scenario, field);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CDASHImplementationGuideCDASHIGApi#mdrRootCdashigScenariosDomainScenarioFieldsFieldGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| CDASHIG Domain Identifier | [default to null]
 **scenario** | **String**| CDASHIG Scenario Identifier | [default to null]
 **field** | **String**| CDASHIG Field Identifier | [default to null]

### Return type

[**RootCdashigScenarioField**](RootCdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

