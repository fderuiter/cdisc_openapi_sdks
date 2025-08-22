# ControlledTerminologyCTApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCtPackagesGet**](ControlledTerminologyCTApi.md#mdrCtPackagesGet) | **GET** /mdr/ct/packages | 
[**mdrCtPackagesPackageCodelistsCodelistGet**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | 
[**mdrCtPackagesPackageCodelistsCodelistTermsGet**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistTermsGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
[**mdrCtPackagesPackageCodelistsCodelistTermsTermGet**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistTermsTermGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
[**mdrCtPackagesPackageCodelistsGet**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsGet) | **GET** /mdr/ct/packages/{package}/codelists | 
[**mdrCtPackagesProductGet**](ControlledTerminologyCTApi.md#mdrCtPackagesProductGet) | **GET** /mdr/ct/packages/{product} | 
[**mdrRootCtProductGroupCodelistsCodelistGet**](ControlledTerminologyCTApi.md#mdrRootCtProductGroupCodelistsCodelistGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
[**mdrRootCtProductGroupCodelistsCodelistTermsTermGet**](ControlledTerminologyCTApi.md#mdrRootCtProductGroupCodelistsCodelistTermsTermGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 



## mdrCtPackagesGet

> CtPackages mdrCtPackagesGet()



Get CDISC Library CT Package List

### Example

```java
// Import classes:
//import org.openapitools.client.api.ControlledTerminologyCTApi;

ControlledTerminologyCTApi apiInstance = new ControlledTerminologyCTApi();
try {
    CtPackages result = apiInstance.mdrCtPackagesGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ControlledTerminologyCTApi#mdrCtPackagesGet");
    e.printStackTrace();
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


## mdrCtPackagesPackageCodelistsCodelistGet

> CtCodelist mdrCtPackagesPackageCodelistsCodelistGet(_package, codelist)



Get CDISC Library CT Package Codelist

### Example

```java
// Import classes:
//import org.openapitools.client.api.ControlledTerminologyCTApi;

ControlledTerminologyCTApi apiInstance = new ControlledTerminologyCTApi();
String _package = sdtmct-2019-12-20; // String | CT Package Identifier
String codelist = C67154; // String | CT Codelist Identifier
try {
    CtCodelist result = apiInstance.mdrCtPackagesPackageCodelistsCodelistGet(_package, codelist);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ControlledTerminologyCTApi#mdrCtPackagesPackageCodelistsCodelistGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_package** | **String**| CT Package Identifier | [default to null]
 **codelist** | **String**| CT Codelist Identifier | [default to null]

### Return type

[**CtCodelist**](CtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCtPackagesPackageCodelistsCodelistTermsGet

> CtCodelistTerms mdrCtPackagesPackageCodelistsCodelistTermsGet(_package, codelist)



Get CDISC Library CT Package Codelist Term List

### Example

```java
// Import classes:
//import org.openapitools.client.api.ControlledTerminologyCTApi;

ControlledTerminologyCTApi apiInstance = new ControlledTerminologyCTApi();
String _package = sdtmct-2019-12-20; // String | CT Package Identifier
String codelist = C67154; // String | CT Codelist Identifier
try {
    CtCodelistTerms result = apiInstance.mdrCtPackagesPackageCodelistsCodelistTermsGet(_package, codelist);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ControlledTerminologyCTApi#mdrCtPackagesPackageCodelistsCodelistTermsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_package** | **String**| CT Package Identifier | [default to null]
 **codelist** | **String**| CT Codelist Identifier | [default to null]

### Return type

[**CtCodelistTerms**](CtCodelistTerms.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCtPackagesPackageCodelistsCodelistTermsTermGet

> CtTerm mdrCtPackagesPackageCodelistsCodelistTermsTermGet(_package, codelist, term)



Get CDISC Library CT Package Codelist Term

### Example

```java
// Import classes:
//import org.openapitools.client.api.ControlledTerminologyCTApi;

ControlledTerminologyCTApi apiInstance = new ControlledTerminologyCTApi();
String _package = sdtmct-2019-12-20; // String | CT Package Product Identifier
String codelist = C67154; // String | CT Codelist Identifier
String term = C64796; // String | CT Codelist Term Identifier
try {
    CtTerm result = apiInstance.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(_package, codelist, term);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ControlledTerminologyCTApi#mdrCtPackagesPackageCodelistsCodelistTermsTermGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_package** | **String**| CT Package Product Identifier | [default to null]
 **codelist** | **String**| CT Codelist Identifier | [default to null]
 **term** | **String**| CT Codelist Term Identifier | [default to null]

### Return type

[**CtTerm**](CtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCtPackagesPackageCodelistsGet

> CtPackageCodelists mdrCtPackagesPackageCodelistsGet(_package)



Get CDISC Library CT Package Codelist List

### Example

```java
// Import classes:
//import org.openapitools.client.api.ControlledTerminologyCTApi;

ControlledTerminologyCTApi apiInstance = new ControlledTerminologyCTApi();
String _package = sdtmct-2019-12-20; // String | CT Package Identifier
try {
    CtPackageCodelists result = apiInstance.mdrCtPackagesPackageCodelistsGet(_package);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ControlledTerminologyCTApi#mdrCtPackagesPackageCodelistsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_package** | **String**| CT Package Identifier | [default to null]

### Return type

[**CtPackageCodelists**](CtPackageCodelists.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCtPackagesProductGet

> CtPackage mdrCtPackagesProductGet(product)



Get CDISC Library CT Package

### Example

```java
// Import classes:
//import org.openapitools.client.api.ControlledTerminologyCTApi;

ControlledTerminologyCTApi apiInstance = new ControlledTerminologyCTApi();
String product = sdtmct-2019-12-20; // String | CT Package Product Identifier
try {
    CtPackage result = apiInstance.mdrCtPackagesProductGet(product);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ControlledTerminologyCTApi#mdrCtPackagesProductGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CT Package Product Identifier | [default to null]

### Return type

[**CtPackage**](CtPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet


## mdrRootCtProductGroupCodelistsCodelistGet

> RootCtCodelist mdrRootCtProductGroupCodelistsCodelistGet(productGroup, codelist)



Get CDISC Library Root CT Codelist

### Example

```java
// Import classes:
//import org.openapitools.client.api.ControlledTerminologyCTApi;

ControlledTerminologyCTApi apiInstance = new ControlledTerminologyCTApi();
String productGroup = sdtmct; // String | CT Product Group Identifier
String codelist = C67154; // String | CT Codelist Identifier
try {
    RootCtCodelist result = apiInstance.mdrRootCtProductGroupCodelistsCodelistGet(productGroup, codelist);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ControlledTerminologyCTApi#mdrRootCtProductGroupCodelistsCodelistGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productGroup** | **String**| CT Product Group Identifier | [default to null]
 **codelist** | **String**| CT Codelist Identifier | [default to null]

### Return type

[**RootCtCodelist**](RootCtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrRootCtProductGroupCodelistsCodelistTermsTermGet

> RootCtTerm mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup, codelist, term)



Get CDISC Library Root CT Term

### Example

```java
// Import classes:
//import org.openapitools.client.api.ControlledTerminologyCTApi;

ControlledTerminologyCTApi apiInstance = new ControlledTerminologyCTApi();
String productGroup = sdtmct; // String | CT Product Group Identifier
String codelist = C67154; // String | CT Codelist Identifier
String term = C64796; // String | CT Codelist Term Identifier
try {
    RootCtTerm result = apiInstance.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup, codelist, term);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ControlledTerminologyCTApi#mdrRootCtProductGroupCodelistsCodelistTermsTermGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productGroup** | **String**| CT Product Group Identifier | [default to null]
 **codelist** | **String**| CT Codelist Identifier | [default to null]
 **term** | **String**| CT Codelist Term Identifier | [default to null]

### Return type

[**RootCtTerm**](RootCtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

