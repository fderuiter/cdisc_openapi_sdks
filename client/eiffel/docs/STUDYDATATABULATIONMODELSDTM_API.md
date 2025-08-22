# STUDYDATATABULATIONMODELSDTM_API

All URIs are relative to *https://library.cdisc.org/api*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sdtm_classes_class_variables_var_get**](STUDYDATATABULATIONMODELSDTM_API.md#mdr_root_sdtm_classes_class_variables_var_get) | **Get** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**mdr_root_sdtm_datasets_dataset_variables_var_get**](STUDYDATATABULATIONMODELSDTM_API.md#mdr_root_sdtm_datasets_dataset_variables_var_get) | **Get** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**mdr_sdtm_version_classes_class_datasets_get**](STUDYDATATABULATIONMODELSDTM_API.md#mdr_sdtm_version_classes_class_datasets_get) | **Get** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**mdr_sdtm_version_classes_class_get**](STUDYDATATABULATIONMODELSDTM_API.md#mdr_sdtm_version_classes_class_get) | **Get** /mdr/sdtm/{version}/classes/{class} | 
[**mdr_sdtm_version_classes_class_variables_get**](STUDYDATATABULATIONMODELSDTM_API.md#mdr_sdtm_version_classes_class_variables_get) | **Get** /mdr/sdtm/{version}/classes/{class}/variables | 
[**mdr_sdtm_version_classes_class_variables_var_get**](STUDYDATATABULATIONMODELSDTM_API.md#mdr_sdtm_version_classes_class_variables_var_get) | **Get** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**mdr_sdtm_version_classes_get**](STUDYDATATABULATIONMODELSDTM_API.md#mdr_sdtm_version_classes_get) | **Get** /mdr/sdtm/{version}/classes | 
[**mdr_sdtm_version_datasets_dataset_get**](STUDYDATATABULATIONMODELSDTM_API.md#mdr_sdtm_version_datasets_dataset_get) | **Get** /mdr/sdtm/{version}/datasets/{dataset} | 
[**mdr_sdtm_version_datasets_dataset_variables_get**](STUDYDATATABULATIONMODELSDTM_API.md#mdr_sdtm_version_datasets_dataset_variables_get) | **Get** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**mdr_sdtm_version_datasets_dataset_variables_var_get**](STUDYDATATABULATIONMODELSDTM_API.md#mdr_sdtm_version_datasets_dataset_variables_var_get) | **Get** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**mdr_sdtm_version_datasets_get**](STUDYDATATABULATIONMODELSDTM_API.md#mdr_sdtm_version_datasets_get) | **Get** /mdr/sdtm/{version}/datasets | 
[**mdr_sdtm_version_get**](STUDYDATATABULATIONMODELSDTM_API.md#mdr_sdtm_version_get) | **Get** /mdr/sdtm/{version} | 


# **mdr_root_sdtm_classes_class_variables_var_get**
> mdr_root_sdtm_classes_class_variables_var_get (var_class: STRING_32 ; var: STRING_32 ): detachable ROOT_SDTM_CLASS_VARIABLE




Get Root of SDTM Class Variable


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var_class** | **STRING_32**| SDTM Class Identifier | [default to null]
 **var** | **STRING_32**| SDTM Variable Identifier | [default to null]

### Return type

[**ROOT_SDTM_CLASS_VARIABLE**](RootSdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_sdtm_datasets_dataset_variables_var_get**
> mdr_root_sdtm_datasets_dataset_variables_var_get (dataset: STRING_32 ; var: STRING_32 ): detachable ROOT_SDTM_DATASET_VARIABLE




Get Root SDTM Dataset Variable


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **STRING_32**| SDTM Dataset Identifier | [default to null]
 **var** | **STRING_32**| SDTM Variable Identifier | [default to null]

### Return type

[**ROOT_SDTM_DATASET_VARIABLE**](RootSdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_classes_class_datasets_get**
> mdr_sdtm_version_classes_class_datasets_get (version: STRING_32 ; var_class: STRING_32 ): detachable SDTM_CLASS_DATASETS




Get SDTM Class Dataset List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| SDTM Class Identifier | [default to null]

### Return type

[**SDTM_CLASS_DATASETS**](SdtmClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_classes_class_get**
> mdr_sdtm_version_classes_class_get (version: STRING_32 ; var_class: STRING_32 ): detachable SDTM_CLASS




Get SDTM Class


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| SDTM Class Identifier | [default to null]

### Return type

[**SDTM_CLASS**](SdtmClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_classes_class_variables_get**
> mdr_sdtm_version_classes_class_variables_get (version: STRING_32 ; var_class: STRING_32 ): detachable SDTM_CLASS_VARIABLES




Get SDTM Class Variable List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| SDTM Class Identifier | [default to null]

### Return type

[**SDTM_CLASS_VARIABLES**](SdtmClassVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_classes_class_variables_var_get**
> mdr_sdtm_version_classes_class_variables_var_get (version: STRING_32 ; var_class: STRING_32 ; var: STRING_32 ): detachable SDTM_CLASS_VARIABLE




Get SDTM Class Variable


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| SDTM Class Identifier | [default to null]
 **var** | **STRING_32**| SDTM Variable Identifier | [default to null]

### Return type

[**SDTM_CLASS_VARIABLE**](SdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_classes_get**
> mdr_sdtm_version_classes_get (version: STRING_32 ): detachable SDTM_CLASSES




Get SDTM Class List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**SDTM_CLASSES**](SdtmClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_datasets_dataset_get**
> mdr_sdtm_version_datasets_dataset_get (version: STRING_32 ; dataset: STRING_32 ): detachable SDTM_DATASET




Get SDTM Dataset


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **dataset** | **STRING_32**| SDTM Dataset Identifier | [default to null]

### Return type

[**SDTM_DATASET**](SdtmDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_datasets_dataset_variables_get**
> mdr_sdtm_version_datasets_dataset_variables_get (version: STRING_32 ; dataset: STRING_32 ): detachable SDTM_DATASET_VARIABLES




Get SDTM Dataset Variable List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **dataset** | **STRING_32**| SDTM Dataset Identifier | [default to null]

### Return type

[**SDTM_DATASET_VARIABLES**](SdtmDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_datasets_dataset_variables_var_get**
> mdr_sdtm_version_datasets_dataset_variables_var_get (version: STRING_32 ; dataset: STRING_32 ; var: STRING_32 ): detachable SDTM_DATASET_VARIABLE




Get SDTM Dataset Variable


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **dataset** | **STRING_32**| SDTM Dataset Identifier | [default to null]
 **var** | **STRING_32**| SDTM Variable Identifier | [default to null]

### Return type

[**SDTM_DATASET_VARIABLE**](SdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_datasets_get**
> mdr_sdtm_version_datasets_get (version: STRING_32 ): detachable SDTM_DATASETS




Get SDTM Dataset List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**SDTM_DATASETS**](SdtmDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_get**
> mdr_sdtm_version_get (version: STRING_32 ): detachable SDTM_PRODUCT




Get SDTM product


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**SDTM_PRODUCT**](SdtmProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

