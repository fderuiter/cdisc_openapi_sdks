# ClinicalDataAcquisitionStandardsHarmonizationCDASHApi

All URIs are relative to */api*

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



Get CDASH Class Domain List

### Example

```bash
 mdrCdashVersionClassesClassDomainsGet version=value class=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | CDASH Class Identifier | [default to null]

### Return type

[**CdashClassDomains**](CdashClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashVersionClassesClassFieldsFieldGet



Get CDASH Class Field

### Example

```bash
 mdrCdashVersionClassesClassFieldsFieldGet version=value class=value field=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | CDASH Class Identifier | [default to null]
 **field** | **string** | CDASH Field Identifier | [default to null]

### Return type

[**CdashClassField**](CdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashVersionClassesClassGet



Get CDASH Class

### Example

```bash
 mdrCdashVersionClassesClassGet version=value class=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | CDASH Class Identifier | [default to null]

### Return type

[**CdashClass**](CdashClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashVersionClassesGet



Get CDASH Class List

### Example

```bash
 mdrCdashVersionClassesGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**CdashProductClasses**](CdashProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashVersionDomainsDomainFieldsFieldGet



Get CDASH Domain Field

### Example

```bash
 mdrCdashVersionDomainsDomainFieldsFieldGet version=value domain=value field=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **domain** | **string** | CDASH Domain Identifier | [default to null]
 **field** | **string** | CDASH Field Identifier | [default to null]

### Return type

[**CdashDomainField**](CdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashVersionDomainsDomainFieldsGet



Get CDASH Domain Field List

### Example

```bash
 mdrCdashVersionDomainsDomainFieldsGet version=value domain=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **domain** | **string** | CDASH Domain Identifier | [default to null]

### Return type

[**CdashDomainFields**](CdashDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashVersionDomainsDomainGet



Get CDASH Domain

### Example

```bash
 mdrCdashVersionDomainsDomainGet version=value domain=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **domain** | **string** | CDASH Domain Identifier | [default to null]

### Return type

[**CdashDomain**](CdashDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashVersionDomainsGet



Get CDASH Domain List

### Example

```bash
 mdrCdashVersionDomainsGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**CdashProductDomains**](CdashProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashVersionGet



Get CDASH Product

### Example

```bash
 mdrCdashVersionGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**CdashProduct**](CdashProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrRootCdashClassesClassFieldsFieldGet



Get Root CDASH Class Field

### Example

```bash
 mdrRootCdashClassesClassFieldsFieldGet class=value field=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class** | **string** | CDASH Class Identifier | [default to null]
 **field** | **string** | CDASH Field Identifier | [default to null]

### Return type

[**RootCdashClassField**](RootCdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrRootCdashDomainsDomainFieldsFieldGet



Get Root CDASH Domain Field

### Example

```bash
 mdrRootCdashDomainsDomainFieldsFieldGet domain=value field=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **string** | CDASH Domain Identifier | [default to null]
 **field** | **string** | CDASH Field Identifier | [default to null]

### Return type

[**RootCdashDomainField**](RootCdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

