# SENDIMPLEMENTATIONGUIDESENDIG_API

All URIs are relative to *https://library.cdisc.org/api*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sendig_datasets_dataset_variables_var_get**](SENDIMPLEMENTATIONGUIDESENDIG_API.md#mdr_root_sendig_datasets_dataset_variables_var_get) | **Get** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**mdr_sendig_version_classes_class_datasets_get**](SENDIMPLEMENTATIONGUIDESENDIG_API.md#mdr_sendig_version_classes_class_datasets_get) | **Get** /mdr/sendig/{version}/classes/{class}/datasets | 
[**mdr_sendig_version_classes_class_get**](SENDIMPLEMENTATIONGUIDESENDIG_API.md#mdr_sendig_version_classes_class_get) | **Get** /mdr/sendig/{version}/classes/{class} | 
[**mdr_sendig_version_classes_get**](SENDIMPLEMENTATIONGUIDESENDIG_API.md#mdr_sendig_version_classes_get) | **Get** /mdr/sendig/{version}/classes | 
[**mdr_sendig_version_datasets_dataset_get**](SENDIMPLEMENTATIONGUIDESENDIG_API.md#mdr_sendig_version_datasets_dataset_get) | **Get** /mdr/sendig/{version}/datasets/{dataset} | 
[**mdr_sendig_version_datasets_dataset_variables_get**](SENDIMPLEMENTATIONGUIDESENDIG_API.md#mdr_sendig_version_datasets_dataset_variables_get) | **Get** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**mdr_sendig_version_datasets_dataset_variables_var_get**](SENDIMPLEMENTATIONGUIDESENDIG_API.md#mdr_sendig_version_datasets_dataset_variables_var_get) | **Get** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**mdr_sendig_version_datasets_get**](SENDIMPLEMENTATIONGUIDESENDIG_API.md#mdr_sendig_version_datasets_get) | **Get** /mdr/sendig/{version}/datasets | 
[**mdr_sendig_version_get**](SENDIMPLEMENTATIONGUIDESENDIG_API.md#mdr_sendig_version_get) | **Get** /mdr/sendig/{version} | 


# **mdr_root_sendig_datasets_dataset_variables_var_get**
> mdr_root_sendig_datasets_dataset_variables_var_get (dataset: STRING_32 ; var: STRING_32 ): detachable ROOT_SENDIG_DATASET_VARIABLE




Get Root SENDIG Dataset Variable


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **STRING_32**| SENDIG Dataset Identifier | [default to null]
 **var** | **STRING_32**| SENDIG Variable Identifier | [default to null]

### Return type

[**ROOT_SENDIG_DATASET_VARIABLE**](RootSendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_classes_class_datasets_get**
> mdr_sendig_version_classes_class_datasets_get (version: STRING_32 ; var_class: STRING_32 ): detachable SENDIG_CLASS_DATASETS




Get SENDIG Class Dataset List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| SENDIG Class Identifier | [default to null]

### Return type

[**SENDIG_CLASS_DATASETS**](SendigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_classes_class_get**
> mdr_sendig_version_classes_class_get (version: STRING_32 ; var_class: STRING_32 ): detachable SENDIG_CLASS




Get SENDIG Class


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| SENDIG Class Identifier | [default to null]

### Return type

[**SENDIG_CLASS**](SendigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_classes_get**
> mdr_sendig_version_classes_get (version: STRING_32 ): detachable SENDIG_CLASSES




Get SENDIG Class List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**SENDIG_CLASSES**](SendigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_datasets_dataset_get**
> mdr_sendig_version_datasets_dataset_get (version: STRING_32 ; dataset: STRING_32 ): detachable SENDIG_DATASET




Get SENDIG Dataset


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **dataset** | **STRING_32**| SENDIG Class Identifier | [default to null]

### Return type

[**SENDIG_DATASET**](SendigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_datasets_dataset_variables_get**
> mdr_sendig_version_datasets_dataset_variables_get (version: STRING_32 ; dataset: STRING_32 ): detachable SENDIG_DATASET_VARIABLES




Get SENDIG Dataset Variable List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **dataset** | **STRING_32**| SENDIG Class Identifier | [default to null]

### Return type

[**SENDIG_DATASET_VARIABLES**](SendigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_datasets_dataset_variables_var_get**
> mdr_sendig_version_datasets_dataset_variables_var_get (version: STRING_32 ; dataset: STRING_32 ; var: STRING_32 ): detachable SENDIG_DATASET_VARIABLE




Get SENDIG Dataset Variable


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **dataset** | **STRING_32**| SENDIG Class Identifier | [default to null]
 **var** | **STRING_32**| SENDIG Variable Identifier | [default to null]

### Return type

[**SENDIG_DATASET_VARIABLE**](SendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_datasets_get**
> mdr_sendig_version_datasets_get (version: STRING_32 ): detachable SENDIG_DATASETS




Get SENDIG Dataset List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**SENDIG_DATASETS**](SendigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_get**
> mdr_sendig_version_get (version: STRING_32 ): detachable SENDIG_PRODUCT




Get SENDIG product


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**SENDIG_PRODUCT**](SendigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

