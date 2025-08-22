# SDTMImplementationGuideSDTMIGApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmigDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGApi.md#mdrRootSdtmigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**mdrSdtmigVersionClassesClassDatasetsGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesClassDatasetsGet) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**mdrSdtmigVersionClassesClassGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesClassGet) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
[**mdrSdtmigVersionClassesGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesGet) | **GET** /mdr/sdtmig/{version}/classes | 
[**mdrSdtmigVersionDatasetsDatasetGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**mdrSdtmigVersionDatasetsDatasetVariablesGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**mdrSdtmigVersionDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmigVersionDatasetsGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsGet) | **GET** /mdr/sdtmig/{version}/datasets | 
[**mdrSdtmigVersionGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionGet) | **GET** /mdr/sdtmig/{version} | 



## mdrRootSdtmigDatasetsDatasetVariablesVarGet



Get Root SDTMIG Dataset Variable

### Example

```bash
 mdrRootSdtmigDatasetsDatasetVariablesVarGet dataset=value var=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **string** | SDTMIG Dataset Identifier | [default to null]
 **var** | **string** | SDTMIG Variable Identifier | [default to null]

### Return type

[**RootSdtmigDatasetVariable**](RootSdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmigVersionClassesClassDatasetsGet



Get SDTMIG Class Dataset List

### Example

```bash
 mdrSdtmigVersionClassesClassDatasetsGet version=value class=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | SDTMIG Class Identifier | [default to null]

### Return type

[**SdtmigClassDatasets**](SdtmigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmigVersionClassesClassGet



Get SDTMIG Class

### Example

```bash
 mdrSdtmigVersionClassesClassGet version=value class=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | SDTMIG Class Identifier | [default to null]

### Return type

[**SdtmigClass**](SdtmigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmigVersionClassesGet



Get SDTMIG Class List

### Example

```bash
 mdrSdtmigVersionClassesGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**SdtmigClasses**](SdtmigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmigVersionDatasetsDatasetGet



Get SDTMIG Dataset

### Example

```bash
 mdrSdtmigVersionDatasetsDatasetGet version=value dataset=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **dataset** | **string** | SDTMIG Dataset Identifier | [default to null]

### Return type

[**SdtmigDataset**](SdtmigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmigVersionDatasetsDatasetVariablesGet



Get SDTMIG Dataset Variable List

### Example

```bash
 mdrSdtmigVersionDatasetsDatasetVariablesGet version=value dataset=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **dataset** | **string** | SDTMIG Dataset Identifier | [default to null]

### Return type

[**SdtmigDatasetVariables**](SdtmigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmigVersionDatasetsDatasetVariablesVarGet



Get SDTMIG Dataset Variable

### Example

```bash
 mdrSdtmigVersionDatasetsDatasetVariablesVarGet version=value dataset=value var=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **dataset** | **string** | SDTMIG Dataset Identifier | [default to null]
 **var** | **string** | SDTMIG Variable Identifier | [default to null]

### Return type

[**SdtmigDatasetVariable**](SdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmigVersionDatasetsGet



Get SDTMIG Dataset List

### Example

```bash
 mdrSdtmigVersionDatasetsGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**SdtmigDatasets**](SdtmigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmigVersionGet



Get SDTMIG product

### Example

```bash
 mdrSdtmigVersionGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**SdtmigProduct**](SdtmigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

