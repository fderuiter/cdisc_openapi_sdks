# ClinicalDataAcquisitionStandardsHarmonizationCDASHApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCdashVersionClassesClassDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassDomainsGet) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
[**mdrCdashVersionClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassFieldsFieldGet) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**mdrCdashVersionClassesClassGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassGet) | **GET** /mdr/cdash/{version}/classes/{class} | 
[**mdrCdashVersionClassesGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesGet) | **GET** /mdr/cdash/{version}/classes | 
[**mdrCdashVersionDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**mdrCdashVersionDomainsDomainFieldsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
[**mdrCdashVersionDomainsDomainGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainGet) | **GET** /mdr/cdash/{version}/domains/{domain} | 
[**mdrCdashVersionDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsGet) | **GET** /mdr/cdash/{version}/domains | 
[**mdrCdashVersionGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionGet) | **GET** /mdr/cdash/{version} | 
[**mdrRootCdashClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashClassesClassFieldsFieldGet) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**mdrRootCdashDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 



## mdrCdashVersionClassesClassDomainsGet

> CdashClassDomains mdrCdashVersionClassesClassDomainsGet(version, _class)



Get CDASH Class Domain List

### Example

```java
// Import classes:
//import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;

ClinicalDataAcquisitionStandardsHarmonizationCDASHApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
String version = 1-1; // String | CDISC Library Product Version
String _class = SpecialPurpose; // String | CDASH Class Identifier
try {
    CdashClassDomains result = apiInstance.mdrCdashVersionClassesClassDomainsGet(version, _class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassDomainsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| CDASH Class Identifier | [default to null]

### Return type

[**CdashClassDomains**](CdashClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionClassesClassFieldsFieldGet

> CdashClassField mdrCdashVersionClassesClassFieldsFieldGet(version, _class, field)



Get CDASH Class Field

### Example

```java
// Import classes:
//import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;

ClinicalDataAcquisitionStandardsHarmonizationCDASHApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
String version = 1-1; // String | CDISC Library Product Version
String _class = Timing; // String | CDASH Class Identifier
String field = --DAT; // String | CDASH Field Identifier
try {
    CdashClassField result = apiInstance.mdrCdashVersionClassesClassFieldsFieldGet(version, _class, field);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassFieldsFieldGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| CDASH Class Identifier | [default to null]
 **field** | **String**| CDASH Field Identifier | [default to null]

### Return type

[**CdashClassField**](CdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionClassesClassGet

> CdashClass mdrCdashVersionClassesClassGet(version, _class)



Get CDASH Class

### Example

```java
// Import classes:
//import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;

ClinicalDataAcquisitionStandardsHarmonizationCDASHApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
String version = 1-1; // String | CDISC Library Product Version
String _class = Timing; // String | CDASH Class Identifier
try {
    CdashClass result = apiInstance.mdrCdashVersionClassesClassGet(version, _class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesClassGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| CDASH Class Identifier | [default to null]

### Return type

[**CdashClass**](CdashClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionClassesGet

> CdashProductClasses mdrCdashVersionClassesGet(version)



Get CDASH Class List

### Example

```java
// Import classes:
//import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;

ClinicalDataAcquisitionStandardsHarmonizationCDASHApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
String version = 1-1; // String | CDISC Library Product Version
try {
    CdashProductClasses result = apiInstance.mdrCdashVersionClassesGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionClassesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**CdashProductClasses**](CdashProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionDomainsDomainFieldsFieldGet

> CdashDomainField mdrCdashVersionDomainsDomainFieldsFieldGet(version, domain, field)



Get CDASH Domain Field

### Example

```java
// Import classes:
//import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;

ClinicalDataAcquisitionStandardsHarmonizationCDASHApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
String version = 1-1; // String | CDISC Library Product Version
String domain = DM; // String | CDASH Domain Identifier
String field = AGE; // String | CDASH Field Identifier
try {
    CdashDomainField result = apiInstance.mdrCdashVersionDomainsDomainFieldsFieldGet(version, domain, field);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainFieldsFieldGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **domain** | **String**| CDASH Domain Identifier | [default to null]
 **field** | **String**| CDASH Field Identifier | [default to null]

### Return type

[**CdashDomainField**](CdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionDomainsDomainFieldsGet

> CdashDomainFields mdrCdashVersionDomainsDomainFieldsGet(version, domain)



Get CDASH Domain Field List

### Example

```java
// Import classes:
//import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;

ClinicalDataAcquisitionStandardsHarmonizationCDASHApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
String version = 1-1; // String | CDISC Library Product Version
String domain = DM; // String | CDASH Domain Identifier
try {
    CdashDomainFields result = apiInstance.mdrCdashVersionDomainsDomainFieldsGet(version, domain);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainFieldsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **domain** | **String**| CDASH Domain Identifier | [default to null]

### Return type

[**CdashDomainFields**](CdashDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionDomainsDomainGet

> CdashDomain mdrCdashVersionDomainsDomainGet(version, domain)



Get CDASH Domain

### Example

```java
// Import classes:
//import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;

ClinicalDataAcquisitionStandardsHarmonizationCDASHApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
String version = 1-1; // String | CDISC Library Product Version
String domain = DM; // String | CDASH Domain Identifier
try {
    CdashDomain result = apiInstance.mdrCdashVersionDomainsDomainGet(version, domain);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsDomainGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **domain** | **String**| CDASH Domain Identifier | [default to null]

### Return type

[**CdashDomain**](CdashDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionDomainsGet

> CdashProductDomains mdrCdashVersionDomainsGet(version)



Get CDASH Domain List

### Example

```java
// Import classes:
//import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;

ClinicalDataAcquisitionStandardsHarmonizationCDASHApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
String version = 1-1; // String | CDISC Library Product Version
try {
    CdashProductDomains result = apiInstance.mdrCdashVersionDomainsGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionDomainsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**CdashProductDomains**](CdashProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionGet

> CdashProduct mdrCdashVersionGet(version)



Get CDASH Product

### Example

```java
// Import classes:
//import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;

ClinicalDataAcquisitionStandardsHarmonizationCDASHApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
String version = 1-1; // String | CDISC Library Product Version
try {
    CdashProduct result = apiInstance.mdrCdashVersionGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrCdashVersionGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**CdashProduct**](CdashProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet


## mdrRootCdashClassesClassFieldsFieldGet

> RootCdashClassField mdrRootCdashClassesClassFieldsFieldGet(_class, field)



Get Root CDASH Class Field

### Example

```java
// Import classes:
//import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;

ClinicalDataAcquisitionStandardsHarmonizationCDASHApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
String _class = Timing; // String | CDASH Class Identifier
String field = --DAT; // String | CDASH Field Identifier
try {
    RootCdashClassField result = apiInstance.mdrRootCdashClassesClassFieldsFieldGet(_class, field);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrRootCdashClassesClassFieldsFieldGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| CDASH Class Identifier | [default to null]
 **field** | **String**| CDASH Field Identifier | [default to null]

### Return type

[**RootCdashClassField**](RootCdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrRootCdashDomainsDomainFieldsFieldGet

> RootCdashDomainField mdrRootCdashDomainsDomainFieldsFieldGet(domain, field)



Get Root CDASH Domain Field

### Example

```java
// Import classes:
//import org.openapitools.client.api.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;

ClinicalDataAcquisitionStandardsHarmonizationCDASHApi apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
String domain = DM; // String | CDASH Domain Identifier
String field = AGE; // String | CDASH Field Identifier
try {
    RootCdashDomainField result = apiInstance.mdrRootCdashDomainsDomainFieldsFieldGet(domain, field);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi#mdrRootCdashDomainsDomainFieldsFieldGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| CDASH Domain Identifier | [default to null]
 **field** | **String**| CDASH Field Identifier | [default to null]

### Return type

[**RootCdashDomainField**](RootCdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

