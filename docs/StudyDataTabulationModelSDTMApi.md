# StudyDataTabulationModelSDTMApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmClassesClassVariablesVarGet) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**mdrRootSdtmDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionClassesClassDatasetsGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassDatasetsGet) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**mdrSdtmVersionClassesClassGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassGet) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**mdrSdtmVersionClassesClassVariablesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**mdrSdtmVersionClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesVarGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**mdrSdtmVersionClassesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesGet) | **GET** /mdr/sdtm/{version}/classes | 
[**mdrSdtmVersionDatasetsDatasetGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**mdrSdtmVersionDatasetsDatasetVariablesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**mdrSdtmVersionDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionDatasetsGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsGet) | **GET** /mdr/sdtm/{version}/datasets | 
[**mdrSdtmVersionGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionGet) | **GET** /mdr/sdtm/{version} | 



## mdrRootSdtmClassesClassVariablesVarGet



Get Root of SDTM Class Variable

### Example

```bash
 mdrRootSdtmClassesClassVariablesVarGet class=value var=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class** | **string** | SDTM Class Identifier | [default to null]
 **var** | **string** | SDTM Variable Identifier | [default to null]

### Return type

[**RootSdtmClassVariable**](RootSdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrRootSdtmDatasetsDatasetVariablesVarGet



Get Root SDTM Dataset Variable

### Example

```bash
 mdrRootSdtmDatasetsDatasetVariablesVarGet dataset=value var=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **string** | SDTM Dataset Identifier | [default to null]
 **var** | **string** | SDTM Variable Identifier | [default to null]

### Return type

[**RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmVersionClassesClassDatasetsGet



Get SDTM Class Dataset List

### Example

```bash
 mdrSdtmVersionClassesClassDatasetsGet version=value class=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | SDTM Class Identifier | [default to null]

### Return type

[**SdtmClassDatasets**](SdtmClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmVersionClassesClassGet



Get SDTM Class

### Example

```bash
 mdrSdtmVersionClassesClassGet version=value class=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | SDTM Class Identifier | [default to null]

### Return type

[**SdtmClass**](SdtmClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmVersionClassesClassVariablesGet



Get SDTM Class Variable List

### Example

```bash
 mdrSdtmVersionClassesClassVariablesGet version=value class=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | SDTM Class Identifier | [default to null]

### Return type

[**SdtmClassVariables**](SdtmClassVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmVersionClassesClassVariablesVarGet



Get SDTM Class Variable

### Example

```bash
 mdrSdtmVersionClassesClassVariablesVarGet version=value class=value var=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **class** | **string** | SDTM Class Identifier | [default to null]
 **var** | **string** | SDTM Variable Identifier | [default to null]

### Return type

[**SdtmClassVariable**](SdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmVersionClassesGet



Get SDTM Class List

### Example

```bash
 mdrSdtmVersionClassesGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**SdtmClasses**](SdtmClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmVersionDatasetsDatasetGet



Get SDTM Dataset

### Example

```bash
 mdrSdtmVersionDatasetsDatasetGet version=value dataset=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **dataset** | **string** | SDTM Dataset Identifier | [default to null]

### Return type

[**SdtmDataset**](SdtmDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmVersionDatasetsDatasetVariablesGet



Get SDTM Dataset Variable List

### Example

```bash
 mdrSdtmVersionDatasetsDatasetVariablesGet version=value dataset=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **dataset** | **string** | SDTM Dataset Identifier | [default to null]

### Return type

[**SdtmDatasetVariables**](SdtmDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmVersionDatasetsDatasetVariablesVarGet



Get SDTM Dataset Variable

### Example

```bash
 mdrSdtmVersionDatasetsDatasetVariablesVarGet version=value dataset=value var=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]
 **dataset** | **string** | SDTM Dataset Identifier | [default to null]
 **var** | **string** | SDTM Variable Identifier | [default to null]

### Return type

[**SdtmDatasetVariable**](SdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmVersionDatasetsGet



Get SDTM Dataset List

### Example

```bash
 mdrSdtmVersionDatasetsGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**SdtmDatasets**](SdtmDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrSdtmVersionGet



Get SDTM product

### Example

```bash
 mdrSdtmVersionGet version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**SdtmProduct**](SdtmProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

