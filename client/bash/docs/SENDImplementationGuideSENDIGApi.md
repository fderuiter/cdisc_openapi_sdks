# SENDImplementationGuideSENDIGApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSendigDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#mdrRootSendigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionClassesClassDatasetsGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassDatasetsGet) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**mdrSendigVersionClassesClassGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassGet) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**mdrSendigVersionClassesGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesGet) | **GET** /mdr/sendig/{version}/classes | 
[**mdrSendigVersionDatasetsDatasetGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetGet) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**mdrSendigVersionDatasetsDatasetVariablesGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**mdrSendigVersionDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionDatasetsGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsGet) | **GET** /mdr/sendig/{version}/datasets | 
[**mdrSendigVersionGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionGet) | **GET** /mdr/sendig/{version} | 



## mdrRootSendigDatasetsDatasetVariablesVarGet



Get Root SENDIG Dataset Variable

### Example

```bash
 mdrRootSendigDatasetsDatasetVariablesVarGet dataset=value var=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **string** | SENDIG Dataset Identifier | [default to null]
 **var** | **string** | SENDIG Variable Identifier | [default to null]

### Return type

[**RootSendigDatasetVariable**](RootSendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSendigVersionClassesClassDatasetsGet



Get SENDIG Class Dataset List

### Example

```bash
 mdrSendigVersionClassesClassDatasetsGet version=value class=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | SENDIG Class Identifier | [default to null]

### Return type

[**SendigClassDatasets**](SendigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSendigVersionClassesClassGet



Get SENDIG Class

### Example

```bash
 mdrSendigVersionClassesClassGet version=value class=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | SENDIG Class Identifier | [default to null]

### Return type

[**SendigClass**](SendigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSendigVersionClassesGet



Get SENDIG Class List

### Example

```bash
 mdrSendigVersionClassesGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**SendigClasses**](SendigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSendigVersionDatasetsDatasetGet



Get SENDIG Dataset

### Example

```bash
 mdrSendigVersionDatasetsDatasetGet version=value dataset=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **dataset** | **string** | SENDIG Class Identifier | [default to null]

### Return type

[**SendigDataset**](SendigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSendigVersionDatasetsDatasetVariablesGet



Get SENDIG Dataset Variable List

### Example

```bash
 mdrSendigVersionDatasetsDatasetVariablesGet version=value dataset=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **dataset** | **string** | SENDIG Class Identifier | [default to null]

### Return type

[**SendigDatasetVariables**](SendigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSendigVersionDatasetsDatasetVariablesVarGet



Get SENDIG Dataset Variable

### Example

```bash
 mdrSendigVersionDatasetsDatasetVariablesVarGet version=value dataset=value var=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **dataset** | **string** | SENDIG Class Identifier | [default to null]
 **var** | **string** | SENDIG Variable Identifier | [default to null]

### Return type

[**SendigDatasetVariable**](SendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSendigVersionDatasetsGet



Get SENDIG Dataset List

### Example

```bash
 mdrSendigVersionDatasetsGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**SendigDatasets**](SendigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSendigVersionGet



Get SENDIG product

### Example

```bash
 mdrSendigVersionGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**SendigProduct**](SendigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

