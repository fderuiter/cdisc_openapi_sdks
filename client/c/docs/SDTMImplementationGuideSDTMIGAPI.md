# SDTMImplementationGuideSDTMIGAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SDTMImplementationGuideSDTMIGAPI_mdrRootSdtmigDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGAPI.md#SDTMImplementationGuideSDTMIGAPI_mdrRootSdtmigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesClassDatasetsGet**](SDTMImplementationGuideSDTMIGAPI.md#SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesClassDatasetsGet) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesClassGet**](SDTMImplementationGuideSDTMIGAPI.md#SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesClassGet) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
[**SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesGet**](SDTMImplementationGuideSDTMIGAPI.md#SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesGet) | **GET** /mdr/sdtmig/{version}/classes | 
[**SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetGet**](SDTMImplementationGuideSDTMIGAPI.md#SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetVariablesGet**](SDTMImplementationGuideSDTMIGAPI.md#SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGAPI.md#SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsGet**](SDTMImplementationGuideSDTMIGAPI.md#SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsGet) | **GET** /mdr/sdtmig/{version}/datasets | 
[**SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionGet**](SDTMImplementationGuideSDTMIGAPI.md#SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionGet) | **GET** /mdr/sdtmig/{version} | 


# **SDTMImplementationGuideSDTMIGAPI_mdrRootSdtmigDatasetsDatasetVariablesVarGet**
```c
// Get Root SDTMIG Dataset Variable
//
root_sdtmig_dataset_variable_t* SDTMImplementationGuideSDTMIGAPI_mdrRootSdtmigDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *dataset, char *var);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**dataset** | **char \*** | SDTMIG Dataset Identifier | 
**var** | **char \*** | SDTMIG Variable Identifier | 

### Return type

[root_sdtmig_dataset_variable_t](root_sdtmig_dataset_variable.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesClassDatasetsGet**
```c
// Get SDTMIG Class Dataset List
//
sdtmig_class_datasets_t* SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesClassDatasetsGet(apiClient_t *apiClient, char *version, char *_class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | SDTMIG Class Identifier | 

### Return type

[sdtmig_class_datasets_t](sdtmig_class_datasets.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesClassGet**
```c
// Get SDTMIG Class
//
sdtmig_class_t* SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | SDTMIG Class Identifier | 

### Return type

[sdtmig_class_t](sdtmig_class.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesGet**
```c
// Get SDTMIG Class List
//
sdtmig_classes_t* SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[sdtmig_classes_t](sdtmig_classes.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetGet**
```c
// Get SDTMIG Dataset
//
sdtmig_dataset_t* SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetGet(apiClient_t *apiClient, char *version, char *dataset);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**dataset** | **char \*** | SDTMIG Dataset Identifier | 

### Return type

[sdtmig_dataset_t](sdtmig_dataset.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetVariablesGet**
```c
// Get SDTMIG Dataset Variable List
//
sdtmig_dataset_variables_t* SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetVariablesGet(apiClient_t *apiClient, char *version, char *dataset);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**dataset** | **char \*** | SDTMIG Dataset Identifier | 

### Return type

[sdtmig_dataset_variables_t](sdtmig_dataset_variables.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetVariablesVarGet**
```c
// Get SDTMIG Dataset Variable
//
sdtmig_dataset_variable_t* SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *version, char *dataset, char *var);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**dataset** | **char \*** | SDTMIG Dataset Identifier | 
**var** | **char \*** | SDTMIG Variable Identifier | 

### Return type

[sdtmig_dataset_variable_t](sdtmig_dataset_variable.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsGet**
```c
// Get SDTMIG Dataset List
//
sdtmig_datasets_t* SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[sdtmig_datasets_t](sdtmig_datasets.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionGet**
```c
// Get SDTMIG product
//
sdtmig_product_t* SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[sdtmig_product_t](sdtmig_product.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

