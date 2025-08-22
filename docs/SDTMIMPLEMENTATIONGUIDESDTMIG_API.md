# SDTMIMPLEMENTATIONGUIDESDTMIG_API

All URIs are relative to *https://library.cdisc.org/api*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sdtmig_datasets_dataset_variables_var_get**](SDTMIMPLEMENTATIONGUIDESDTMIG_API.md#mdr_root_sdtmig_datasets_dataset_variables_var_get) | **Get** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**mdr_sdtmig_version_classes_class_datasets_get**](SDTMIMPLEMENTATIONGUIDESDTMIG_API.md#mdr_sdtmig_version_classes_class_datasets_get) | **Get** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**mdr_sdtmig_version_classes_class_get**](SDTMIMPLEMENTATIONGUIDESDTMIG_API.md#mdr_sdtmig_version_classes_class_get) | **Get** /mdr/sdtmig/{version}/classes/{class} | 
[**mdr_sdtmig_version_classes_get**](SDTMIMPLEMENTATIONGUIDESDTMIG_API.md#mdr_sdtmig_version_classes_get) | **Get** /mdr/sdtmig/{version}/classes | 
[**mdr_sdtmig_version_datasets_dataset_get**](SDTMIMPLEMENTATIONGUIDESDTMIG_API.md#mdr_sdtmig_version_datasets_dataset_get) | **Get** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**mdr_sdtmig_version_datasets_dataset_variables_get**](SDTMIMPLEMENTATIONGUIDESDTMIG_API.md#mdr_sdtmig_version_datasets_dataset_variables_get) | **Get** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**mdr_sdtmig_version_datasets_dataset_variables_var_get**](SDTMIMPLEMENTATIONGUIDESDTMIG_API.md#mdr_sdtmig_version_datasets_dataset_variables_var_get) | **Get** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**mdr_sdtmig_version_datasets_get**](SDTMIMPLEMENTATIONGUIDESDTMIG_API.md#mdr_sdtmig_version_datasets_get) | **Get** /mdr/sdtmig/{version}/datasets | 
[**mdr_sdtmig_version_get**](SDTMIMPLEMENTATIONGUIDESDTMIG_API.md#mdr_sdtmig_version_get) | **Get** /mdr/sdtmig/{version} | 


# **mdr_root_sdtmig_datasets_dataset_variables_var_get**
> mdr_root_sdtmig_datasets_dataset_variables_var_get (dataset: STRING_32 ; var: STRING_32 ): detachable ROOT_SDTMIG_DATASET_VARIABLE




Get Root SDTMIG Dataset Variable


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **STRING_32**| SDTMIG Dataset Identifier | [default to null]
 **var** | **STRING_32**| SDTMIG Variable Identifier | [default to null]

### Return type

[**ROOT_SDTMIG_DATASET_VARIABLE**](RootSdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_classes_class_datasets_get**
> mdr_sdtmig_version_classes_class_datasets_get (version: STRING_32 ; var_class: STRING_32 ): detachable SDTMIG_CLASS_DATASETS




Get SDTMIG Class Dataset List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| SDTMIG Class Identifier | [default to null]

### Return type

[**SDTMIG_CLASS_DATASETS**](SdtmigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_classes_class_get**
> mdr_sdtmig_version_classes_class_get (version: STRING_32 ; var_class: STRING_32 ): detachable SDTMIG_CLASS




Get SDTMIG Class


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| SDTMIG Class Identifier | [default to null]

### Return type

[**SDTMIG_CLASS**](SdtmigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_classes_get**
> mdr_sdtmig_version_classes_get (version: STRING_32 ): detachable SDTMIG_CLASSES




Get SDTMIG Class List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**SDTMIG_CLASSES**](SdtmigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_datasets_dataset_get**
> mdr_sdtmig_version_datasets_dataset_get (version: STRING_32 ; dataset: STRING_32 ): detachable SDTMIG_DATASET




Get SDTMIG Dataset


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **dataset** | **STRING_32**| SDTMIG Dataset Identifier | [default to null]

### Return type

[**SDTMIG_DATASET**](SdtmigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_datasets_dataset_variables_get**
> mdr_sdtmig_version_datasets_dataset_variables_get (version: STRING_32 ; dataset: STRING_32 ): detachable SDTMIG_DATASET_VARIABLES




Get SDTMIG Dataset Variable List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **dataset** | **STRING_32**| SDTMIG Dataset Identifier | [default to null]

### Return type

[**SDTMIG_DATASET_VARIABLES**](SdtmigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_datasets_dataset_variables_var_get**
> mdr_sdtmig_version_datasets_dataset_variables_var_get (version: STRING_32 ; dataset: STRING_32 ; var: STRING_32 ): detachable SDTMIG_DATASET_VARIABLE




Get SDTMIG Dataset Variable


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **dataset** | **STRING_32**| SDTMIG Dataset Identifier | [default to null]
 **var** | **STRING_32**| SDTMIG Variable Identifier | [default to null]

### Return type

[**SDTMIG_DATASET_VARIABLE**](SdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_datasets_get**
> mdr_sdtmig_version_datasets_get (version: STRING_32 ): detachable SDTMIG_DATASETS




Get SDTMIG Dataset List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**SDTMIG_DATASETS**](SdtmigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_get**
> mdr_sdtmig_version_get (version: STRING_32 ): detachable SDTMIG_PRODUCT




Get SDTMIG product


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**SDTMIG_PRODUCT**](SdtmigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

