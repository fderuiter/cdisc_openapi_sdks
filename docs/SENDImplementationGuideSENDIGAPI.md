# SENDImplementationGuideSENDIGAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SENDImplementationGuideSENDIGAPI_mdrRootSendigDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGAPI.md#SENDImplementationGuideSENDIGAPI_mdrRootSendigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesClassDatasetsGet**](SENDImplementationGuideSENDIGAPI.md#SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesClassDatasetsGet) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesClassGet**](SENDImplementationGuideSENDIGAPI.md#SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesClassGet) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesGet**](SENDImplementationGuideSENDIGAPI.md#SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesGet) | **GET** /mdr/sendig/{version}/classes | 
[**SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetGet**](SENDImplementationGuideSENDIGAPI.md#SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetGet) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetVariablesGet**](SENDImplementationGuideSENDIGAPI.md#SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGAPI.md#SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsGet**](SENDImplementationGuideSENDIGAPI.md#SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsGet) | **GET** /mdr/sendig/{version}/datasets | 
[**SENDImplementationGuideSENDIGAPI_mdrSendigVersionGet**](SENDImplementationGuideSENDIGAPI.md#SENDImplementationGuideSENDIGAPI_mdrSendigVersionGet) | **GET** /mdr/sendig/{version} | 


# **SENDImplementationGuideSENDIGAPI_mdrRootSendigDatasetsDatasetVariablesVarGet**
```c
// Get Root SENDIG Dataset Variable
//
root_sendig_dataset_variable_t* SENDImplementationGuideSENDIGAPI_mdrRootSendigDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *dataset, char *var);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**dataset** | **char \*** | SENDIG Dataset Identifier | 
**var** | **char \*** | SENDIG Variable Identifier | 

### Return type

[root_sendig_dataset_variable_t](root_sendig_dataset_variable.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesClassDatasetsGet**
```c
// Get SENDIG Class Dataset List
//
sendig_class_datasets_t* SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesClassDatasetsGet(apiClient_t *apiClient, char *version, char *_class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | SENDIG Class Identifier | 

### Return type

[sendig_class_datasets_t](sendig_class_datasets.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesClassGet**
```c
// Get SENDIG Class
//
sendig_class_t* SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | SENDIG Class Identifier | 

### Return type

[sendig_class_t](sendig_class.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesGet**
```c
// Get SENDIG Class List
//
sendig_classes_t* SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[sendig_classes_t](sendig_classes.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetGet**
```c
// Get SENDIG Dataset
//
sendig_dataset_t* SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetGet(apiClient_t *apiClient, char *version, char *dataset);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**dataset** | **char \*** | SENDIG Class Identifier | 

### Return type

[sendig_dataset_t](sendig_dataset.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetVariablesGet**
```c
// Get SENDIG Dataset Variable List
//
sendig_dataset_variables_t* SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetVariablesGet(apiClient_t *apiClient, char *version, char *dataset);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**dataset** | **char \*** | SENDIG Class Identifier | 

### Return type

[sendig_dataset_variables_t](sendig_dataset_variables.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetVariablesVarGet**
```c
// Get SENDIG Dataset Variable
//
sendig_dataset_variable_t* SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *version, char *dataset, char *var);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**dataset** | **char \*** | SENDIG Class Identifier | 
**var** | **char \*** | SENDIG Variable Identifier | 

### Return type

[sendig_dataset_variable_t](sendig_dataset_variable.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsGet**
```c
// Get SENDIG Dataset List
//
sendig_datasets_t* SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[sendig_datasets_t](sendig_datasets.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SENDImplementationGuideSENDIGAPI_mdrSendigVersionGet**
```c
// Get SENDIG product
//
sendig_product_t* SENDImplementationGuideSENDIGAPI_mdrSendigVersionGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[sendig_product_t](sendig_product.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

