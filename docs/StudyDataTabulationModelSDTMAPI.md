# StudyDataTabulationModelSDTMAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**StudyDataTabulationModelSDTMAPI_mdrRootSdtmClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMAPI.md#StudyDataTabulationModelSDTMAPI_mdrRootSdtmClassesClassVariablesVarGet) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**StudyDataTabulationModelSDTMAPI_mdrRootSdtmDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMAPI.md#StudyDataTabulationModelSDTMAPI_mdrRootSdtmDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassDatasetsGet**](StudyDataTabulationModelSDTMAPI.md#StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassDatasetsGet) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassGet**](StudyDataTabulationModelSDTMAPI.md#StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassGet) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassVariablesGet**](StudyDataTabulationModelSDTMAPI.md#StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassVariablesGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMAPI.md#StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassVariablesVarGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesGet**](StudyDataTabulationModelSDTMAPI.md#StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesGet) | **GET** /mdr/sdtm/{version}/classes | 
[**StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetGet**](StudyDataTabulationModelSDTMAPI.md#StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetVariablesGet**](StudyDataTabulationModelSDTMAPI.md#StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMAPI.md#StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsGet**](StudyDataTabulationModelSDTMAPI.md#StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsGet) | **GET** /mdr/sdtm/{version}/datasets | 
[**StudyDataTabulationModelSDTMAPI_mdrSdtmVersionGet**](StudyDataTabulationModelSDTMAPI.md#StudyDataTabulationModelSDTMAPI_mdrSdtmVersionGet) | **GET** /mdr/sdtm/{version} | 


# **StudyDataTabulationModelSDTMAPI_mdrRootSdtmClassesClassVariablesVarGet**
```c
// Get Root of SDTM Class Variable
//
root_sdtm_class_variable_t* StudyDataTabulationModelSDTMAPI_mdrRootSdtmClassesClassVariablesVarGet(apiClient_t *apiClient, char *_class, char *var);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**_class** | **char \*** | SDTM Class Identifier | 
**var** | **char \*** | SDTM Variable Identifier | 

### Return type

[root_sdtm_class_variable_t](root_sdtm_class_variable.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StudyDataTabulationModelSDTMAPI_mdrRootSdtmDatasetsDatasetVariablesVarGet**
```c
// Get Root SDTM Dataset Variable
//
root_sdtm_dataset_variable_t* StudyDataTabulationModelSDTMAPI_mdrRootSdtmDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *dataset, char *var);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**dataset** | **char \*** | SDTM Dataset Identifier | 
**var** | **char \*** | SDTM Variable Identifier | 

### Return type

[root_sdtm_dataset_variable_t](root_sdtm_dataset_variable.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassDatasetsGet**
```c
// Get SDTM Class Dataset List
//
sdtm_class_datasets_t* StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassDatasetsGet(apiClient_t *apiClient, char *version, char *_class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | SDTM Class Identifier | 

### Return type

[sdtm_class_datasets_t](sdtm_class_datasets.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassGet**
```c
// Get SDTM Class
//
sdtm_class_t* StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | SDTM Class Identifier | 

### Return type

[sdtm_class_t](sdtm_class.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassVariablesGet**
```c
// Get SDTM Class Variable List
//
sdtm_class_variables_t* StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassVariablesGet(apiClient_t *apiClient, char *version, char *_class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | SDTM Class Identifier | 

### Return type

[sdtm_class_variables_t](sdtm_class_variables.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassVariablesVarGet**
```c
// Get SDTM Class Variable
//
sdtm_class_variable_t* StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassVariablesVarGet(apiClient_t *apiClient, char *version, char *_class, char *var);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | SDTM Class Identifier | 
**var** | **char \*** | SDTM Variable Identifier | 

### Return type

[sdtm_class_variable_t](sdtm_class_variable.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesGet**
```c
// Get SDTM Class List
//
sdtm_classes_t* StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[sdtm_classes_t](sdtm_classes.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetGet**
```c
// Get SDTM Dataset
//
sdtm_dataset_t* StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetGet(apiClient_t *apiClient, char *version, char *dataset);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**dataset** | **char \*** | SDTM Dataset Identifier | 

### Return type

[sdtm_dataset_t](sdtm_dataset.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetVariablesGet**
```c
// Get SDTM Dataset Variable List
//
sdtm_dataset_variables_t* StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetVariablesGet(apiClient_t *apiClient, char *version, char *dataset);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**dataset** | **char \*** | SDTM Dataset Identifier | 

### Return type

[sdtm_dataset_variables_t](sdtm_dataset_variables.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetVariablesVarGet**
```c
// Get SDTM Dataset Variable
//
sdtm_dataset_variable_t* StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *version, char *dataset, char *var);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**dataset** | **char \*** | SDTM Dataset Identifier | 
**var** | **char \*** | SDTM Variable Identifier | 

### Return type

[sdtm_dataset_variable_t](sdtm_dataset_variable.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsGet**
```c
// Get SDTM Dataset List
//
sdtm_datasets_t* StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[sdtm_datasets_t](sdtm_datasets.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StudyDataTabulationModelSDTMAPI_mdrSdtmVersionGet**
```c
// Get SDTM product
//
sdtm_product_t* StudyDataTabulationModelSDTMAPI_mdrSdtmVersionGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[sdtm_product_t](sdtm_product.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

