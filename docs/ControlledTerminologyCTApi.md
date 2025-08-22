# ControlledTerminologyCTApi

All URIs are relative to */api*

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



Get CDISC Library CT Package List

### Example

```bash
 mdrCtPackagesGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CtPackages**](CtPackages.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCtPackagesPackageCodelistsCodelistGet



Get CDISC Library CT Package Codelist

### Example

```bash
 mdrCtPackagesPackageCodelistsCodelistGet package=value codelist=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **string** | CT Package Identifier | [default to null]
 **codelist** | **string** | CT Codelist Identifier | [default to null]

### Return type

[**CtCodelist**](CtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCtPackagesPackageCodelistsCodelistTermsGet



Get CDISC Library CT Package Codelist Term List

### Example

```bash
 mdrCtPackagesPackageCodelistsCodelistTermsGet package=value codelist=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **string** | CT Package Identifier | [default to null]
 **codelist** | **string** | CT Codelist Identifier | [default to null]

### Return type

[**CtCodelistTerms**](CtCodelistTerms.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCtPackagesPackageCodelistsCodelistTermsTermGet



Get CDISC Library CT Package Codelist Term

### Example

```bash
 mdrCtPackagesPackageCodelistsCodelistTermsTermGet package=value codelist=value term=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **string** | CT Package Product Identifier | [default to null]
 **codelist** | **string** | CT Codelist Identifier | [default to null]
 **term** | **string** | CT Codelist Term Identifier | [default to null]

### Return type

[**CtTerm**](CtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCtPackagesPackageCodelistsGet



Get CDISC Library CT Package Codelist List

### Example

```bash
 mdrCtPackagesPackageCodelistsGet package=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **string** | CT Package Identifier | [default to null]

### Return type

[**CtPackageCodelists**](CtPackageCodelists.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCtPackagesProductGet



Get CDISC Library CT Package

### Example

```bash
 mdrCtPackagesProductGet product=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string** | CT Package Product Identifier | [default to null]

### Return type

[**CtPackage**](CtPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrRootCtProductGroupCodelistsCodelistGet



Get CDISC Library Root CT Codelist

### Example

```bash
 mdrRootCtProductGroupCodelistsCodelistGet productGroup=value codelist=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productGroup** | **string** | CT Product Group Identifier | [default to null]
 **codelist** | **string** | CT Codelist Identifier | [default to null]

### Return type

[**RootCtCodelist**](RootCtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrRootCtProductGroupCodelistsCodelistTermsTermGet



Get CDISC Library Root CT Term

### Example

```bash
 mdrRootCtProductGroupCodelistsCodelistTermsTermGet productGroup=value codelist=value term=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productGroup** | **string** | CT Product Group Identifier | [default to null]
 **codelist** | **string** | CT Codelist Identifier | [default to null]
 **term** | **string** | CT Codelist Term Identifier | [default to null]

### Return type

[**RootCtTerm**](RootCtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

