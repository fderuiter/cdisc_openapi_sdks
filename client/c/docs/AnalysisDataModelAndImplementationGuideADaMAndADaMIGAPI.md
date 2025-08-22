# AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresGet) | **GET** /mdr/adam/{product}/datastructures | 
[**AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureGet) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
[**AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVariablesGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVariablesGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVariablesVarGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVariablesVarGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVarsetsGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVarsetsGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVarsetsVarsetGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVarsetsVarsetGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductGet) | **GET** /mdr/adam/{product} | 


# **AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresGet**
```c
// Get ADaM Data Structure List
//
adam_product_datastructures_t* AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresGet(apiClient_t *apiClient, char *product);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**product** | **char \*** | CDISC Library Product | 

### Return type

[adam_product_datastructures_t](adam_product_datastructures.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureGet**
```c
// Get ADaM Data Structure
//
adam_datastructure_t* AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureGet(apiClient_t *apiClient, char *product, char *structure);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**product** | **char \*** | CDISC Library Product | 
**structure** | **char \*** | Data structure Identifier | 

### Return type

[adam_datastructure_t](adam_datastructure.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVariablesGet**
```c
// Get ADaM Variable List
//
adam_datastructure_variables_t* AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVariablesGet(apiClient_t *apiClient, char *product, char *structure);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**product** | **char \*** | CDISC Library Product | 
**structure** | **char \*** | ADaM Data Structure Identifier | 

### Return type

[adam_datastructure_variables_t](adam_datastructure_variables.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVariablesVarGet**
```c
// Get ADaM Variable
//
adam_variable_t* AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVariablesVarGet(apiClient_t *apiClient, char *product, char *structure, char *var);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**product** | **char \*** | CDISC Library Product | 
**structure** | **char \*** | ADaM Data Structure Identifier | 
**var** | **char \*** | ADaM Variable Identifier | 

### Return type

[adam_variable_t](adam_variable.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVarsetsGet**
```c
// Get ADaM Variable Set List
//
adam_datastructure_varsets_t* AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVarsetsGet(apiClient_t *apiClient, char *product, char *structure);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**product** | **char \*** | CDISC Library Product | 
**structure** | **char \*** | ADaM Data Structure Identifier | 

### Return type

[adam_datastructure_varsets_t](adam_datastructure_varsets.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVarsetsVarsetGet**
```c
// Get ADaM Variable Set
//
adam_varset_t* AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVarsetsVarsetGet(apiClient_t *apiClient, char *product, char *structure, char *varset);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**product** | **char \*** | CDISC Library Product | 
**structure** | **char \*** | ADaM Data Structure Identifier | 
**varset** | **char \*** | ADaM Variable Set Identifier | 

### Return type

[adam_varset_t](adam_varset.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductGet**
```c
// Get ADaM Product
//
adam_product_t* AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductGet(apiClient_t *apiClient, char *product);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**product** | **char \*** | CDISC Library Product | 

### Return type

[adam_product_t](adam_product.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

