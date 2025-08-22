# DefaultAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DefaultAPI_mdrAboutGet**](DefaultAPI.md#DefaultAPI_mdrAboutGet) | **GET** /mdr/about | 
[**DefaultAPI_mdrLastupdatedGet**](DefaultAPI.md#DefaultAPI_mdrLastupdatedGet) | **GET** /mdr/lastupdated | 
[**DefaultAPI_mdrProductsDataAnalysisGet**](DefaultAPI.md#DefaultAPI_mdrProductsDataAnalysisGet) | **GET** /mdr/products/DataAnalysis | 
[**DefaultAPI_mdrProductsDataCollectionGet**](DefaultAPI.md#DefaultAPI_mdrProductsDataCollectionGet) | **GET** /mdr/products/DataCollection | 
[**DefaultAPI_mdrProductsDataTabulationGet**](DefaultAPI.md#DefaultAPI_mdrProductsDataTabulationGet) | **GET** /mdr/products/DataTabulation | 
[**DefaultAPI_mdrProductsGet**](DefaultAPI.md#DefaultAPI_mdrProductsGet) | **GET** /mdr/products | 
[**DefaultAPI_mdrProductsMeasuresGet**](DefaultAPI.md#DefaultAPI_mdrProductsMeasuresGet) | **GET** /mdr/products/Measures | 
[**DefaultAPI_mdrProductsTerminologyGet**](DefaultAPI.md#DefaultAPI_mdrProductsTerminologyGet) | **GET** /mdr/products/Terminology | 


# **DefaultAPI_mdrAboutGet**
```c
// Get Information About CDISC Library
//
about_t* DefaultAPI_mdrAboutGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[about_t](about.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_mdrLastupdatedGet**
```c
// Get CDISC Library Last Updated
//
lastupdated_t* DefaultAPI_mdrLastupdatedGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[lastupdated_t](lastupdated.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_mdrProductsDataAnalysisGet**
```c
// Get CDISC Library Product Group Data Analysis
//
productgroup_data_analysis_t* DefaultAPI_mdrProductsDataAnalysisGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[productgroup_data_analysis_t](productgroup_data_analysis.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_mdrProductsDataCollectionGet**
```c
// Get CDISC Library Product Group Data Collection
//
productgroup_data_collection_t* DefaultAPI_mdrProductsDataCollectionGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[productgroup_data_collection_t](productgroup_data_collection.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_mdrProductsDataTabulationGet**
```c
// Get CDISC Library Product Group Data Tabulation
//
productgroup_data_tabulation_t* DefaultAPI_mdrProductsDataTabulationGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[productgroup_data_tabulation_t](productgroup_data_tabulation.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_mdrProductsGet**
```c
// Get CDISC Library Products
//
products_t* DefaultAPI_mdrProductsGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[products_t](products.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_mdrProductsMeasuresGet**
```c
// Get CDISC Library Product Group QRS
//
productgroup_qrs_t* DefaultAPI_mdrProductsMeasuresGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[productgroup_qrs_t](productgroup_qrs.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DefaultAPI_mdrProductsTerminologyGet**
```c
// Get CDISC Library Product Group Terminology
//
productgroup_terminology_t* DefaultAPI_mdrProductsTerminologyGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[productgroup_terminology_t](productgroup_terminology.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

