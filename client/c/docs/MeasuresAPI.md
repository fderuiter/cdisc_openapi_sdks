# MeasuresAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MeasuresAPI_mdrQrsMeasureVersionGet**](MeasuresAPI.md#MeasuresAPI_mdrQrsMeasureVersionGet) | **GET** /mdr/qrs/{measure}/{version} | 
[**MeasuresAPI_mdrQrsMeasureVersionItemsGet**](MeasuresAPI.md#MeasuresAPI_mdrQrsMeasureVersionItemsGet) | **GET** /mdr/qrs/{measure}/{version}/items | 
[**MeasuresAPI_mdrQrsMeasureVersionItemsItemGet**](MeasuresAPI.md#MeasuresAPI_mdrQrsMeasureVersionItemsItemGet) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | 
[**MeasuresAPI_mdrQrsMeasureVersionResponsegroupsGet**](MeasuresAPI.md#MeasuresAPI_mdrQrsMeasureVersionResponsegroupsGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | 
[**MeasuresAPI_mdrQrsMeasureVersionResponsegroupsResponsegroupGet**](MeasuresAPI.md#MeasuresAPI_mdrQrsMeasureVersionResponsegroupsResponsegroupGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 


# **MeasuresAPI_mdrQrsMeasureVersionGet**
```c
// Get QRS Product
//
qrs_product_t* MeasuresAPI_mdrQrsMeasureVersionGet(apiClient_t *apiClient, char *measure, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**measure** | **char \*** | QRS Measure Identifier | 
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[qrs_product_t](qrs_product.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MeasuresAPI_mdrQrsMeasureVersionItemsGet**
```c
// Get QRS Item List
//
qrs_items_t* MeasuresAPI_mdrQrsMeasureVersionItemsGet(apiClient_t *apiClient, char *measure, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**measure** | **char \*** | QRS Measure Identifier | 
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[qrs_items_t](qrs_items.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MeasuresAPI_mdrQrsMeasureVersionItemsItemGet**
```c
// Get QRS Item
//
qrs_item_t* MeasuresAPI_mdrQrsMeasureVersionItemsItemGet(apiClient_t *apiClient, char *measure, char *version, char *item);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**measure** | **char \*** | QRS Measure Identifier | 
**version** | **char \*** | CDISC Library Product Version | 
**item** | **char \*** | QRS Measure Item Identifier | 

### Return type

[qrs_item_t](qrs_item.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MeasuresAPI_mdrQrsMeasureVersionResponsegroupsGet**
```c
// Get QRS Response Group List
//
qrs_responsegroups_t* MeasuresAPI_mdrQrsMeasureVersionResponsegroupsGet(apiClient_t *apiClient, char *measure, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**measure** | **char \*** | QRS Measure Identifier | 
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[qrs_responsegroups_t](qrs_responsegroups.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MeasuresAPI_mdrQrsMeasureVersionResponsegroupsResponsegroupGet**
```c
// Get QRS Response Group
//
qrs_responsegroup_t* MeasuresAPI_mdrQrsMeasureVersionResponsegroupsResponsegroupGet(apiClient_t *apiClient, char *measure, char *version, char *responsegroup);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**measure** | **char \*** | QRS Measure Identifier | 
**version** | **char \*** | CDISC Library Product Version | 
**responsegroup** | **char \*** | QRS Measure&#39;s Response Group Identifier | 

### Return type

[qrs_responsegroup_t](qrs_responsegroup.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

