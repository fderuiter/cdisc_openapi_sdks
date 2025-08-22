# CDASHImplementationGuideCDASHIGApi

All URIs are relative to */api*

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



Get CDASHIG Class Domain List

### Example

```bash
 mdrCdashigVersionClassesClassDomainsGet version=value class=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | CDASHIG Class Identifier | [default to null]

### Return type

[**CdashigClassDomains**](CdashigClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashigVersionClassesClassGet



Get CDASHIG Class

### Example

```bash
 mdrCdashigVersionClassesClassGet version=value class=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | CDASHIG Class Identifier | [default to null]

### Return type

[**CdashigClass**](CdashigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashigVersionClassesClassScenariosGet



Get CDASHIG Class Scenario List

### Example

```bash
 mdrCdashigVersionClassesClassScenariosGet version=value class=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | CDASHIG Class Identifier | [default to null]

### Return type

[**CdashigClassScenarios**](CdashigClassScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashigVersionClassesGet



Get CDASHIG Class List

### Example

```bash
 mdrCdashigVersionClassesGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**CdashigProductClasses**](CdashigProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashigVersionDomainsDomainFieldsFieldGet



Get CDASHIG Domain Field

### Example

```bash
 mdrCdashigVersionDomainsDomainFieldsFieldGet version=value domain=value field=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **domain** | **string** | CDASHIG Domain Identifier | [default to null]
 **field** | **string** | CDASHIG Field Identifier | [default to null]

### Return type

[**CdashigDomainField**](CdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashigVersionDomainsDomainFieldsGet



Get CDASHIG Domain Field List

### Example

```bash
 mdrCdashigVersionDomainsDomainFieldsGet version=value domain=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **domain** | **string** | CDASHIG Domain Identifier | [default to null]

### Return type

[**CdashigDomainFields**](CdashigDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashigVersionDomainsDomainGet



Get CDASHIG Domain

### Example

```bash
 mdrCdashigVersionDomainsDomainGet version=value domain=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **domain** | **string** | CDASHIG Domain Identifier | [default to null]

### Return type

[**CdashigDomain**](CdashigDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashigVersionDomainsGet



Get CDASHIG Domain List

### Example

```bash
 mdrCdashigVersionDomainsGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**CdashigProductDomains**](CdashigProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashigVersionGet



Get CDASHIG Product

### Example

```bash
 mdrCdashigVersionGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**CdashigProduct**](CdashigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet



Get CDASHIG Scenario Field

### Example

```bash
 mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet version=value domain=value scenario=value field=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **domain** | **string** | CDASHIG Domain Identifier | [default to null]
 **scenario** | **string** | CDASHIG Scenario Identifier | [default to null]
 **field** | **string** | CDASHIG Field Identifier | [default to null]

### Return type

[**CdashigScenarioField**](CdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashigVersionScenariosDomainScenarioFieldsGet



Get CDASHIG Scenario Field List

### Example

```bash
 mdrCdashigVersionScenariosDomainScenarioFieldsGet version=value domain=value scenario=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **domain** | **string** | CDASHIG Domain Identifier | [default to null]
 **scenario** | **string** | CDASHIG Scenario Identifier | [default to null]

### Return type

[**CdashigScenarioFields**](CdashigScenarioFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashigVersionScenariosDomainScenarioGet



Get CDASHIG Scenario

### Example

```bash
 mdrCdashigVersionScenariosDomainScenarioGet version=value domain=value scenario=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **domain** | **string** | CDASHIG Domain Identifier | [default to null]
 **scenario** | **string** | CDASHIG Scenario Identifier | [default to null]

### Return type

[**CdashigScenario**](CdashigScenario.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrCdashigVersionScenariosGet



Get CDASHIG Scenario List

### Example

```bash
 mdrCdashigVersionScenariosGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**CdashigProductScenarios**](CdashigProductScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrRootCdashigDomainsDomainFieldsFieldGet



Get Root CDASHIG Domain Field

### Example

```bash
 mdrRootCdashigDomainsDomainFieldsFieldGet domain=value field=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **string** | CDASHIG Domain Identifier | [default to null]
 **field** | **string** | CDASHIG Field Identifier | [default to null]

### Return type

[**RootCdashigDomainField**](RootCdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrRootCdashigScenariosDomainScenarioFieldsFieldGet



Get Root CDASHIG Scenario Field

### Example

```bash
 mdrRootCdashigScenariosDomainScenarioFieldsFieldGet domain=value scenario=value field=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **string** | CDASHIG Domain Identifier | [default to null]
 **scenario** | **string** | CDASHIG Scenario Identifier | [default to null]
 **field** | **string** | CDASHIG Field Identifier | [default to null]

### Return type

[**RootCdashigScenarioField**](RootCdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

