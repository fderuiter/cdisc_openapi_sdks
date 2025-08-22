# MEASURES_API

All URIs are relative to *https://library.cdisc.org/api*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**mdr_qrs_measure_version_get**](MEASURES_API.md#mdr_qrs_measure_version_get) | **Get** /mdr/qrs/{measure}/{version} | 
[**mdr_qrs_measure_version_items_get**](MEASURES_API.md#mdr_qrs_measure_version_items_get) | **Get** /mdr/qrs/{measure}/{version}/items | 
[**mdr_qrs_measure_version_items_item_get**](MEASURES_API.md#mdr_qrs_measure_version_items_item_get) | **Get** /mdr/qrs/{measure}/{version}/items/{item} | 
[**mdr_qrs_measure_version_responsegroups_get**](MEASURES_API.md#mdr_qrs_measure_version_responsegroups_get) | **Get** /mdr/qrs/{measure}/{version}/responsegroups | 
[**mdr_qrs_measure_version_responsegroups_responsegroup_get**](MEASURES_API.md#mdr_qrs_measure_version_responsegroups_responsegroup_get) | **Get** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 


# **mdr_qrs_measure_version_get**
> mdr_qrs_measure_version_get (measure: STRING_32 ; version: STRING_32 ): detachable QRS_PRODUCT




Get QRS Product


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **STRING_32**| QRS Measure Identifier | [default to null]
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**QRS_PRODUCT**](QrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_qrs_measure_version_items_get**
> mdr_qrs_measure_version_items_get (measure: STRING_32 ; version: STRING_32 ): detachable QRS_ITEMS




Get QRS Item List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **STRING_32**| QRS Measure Identifier | [default to null]
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**QRS_ITEMS**](QrsItems.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_qrs_measure_version_items_item_get**
> mdr_qrs_measure_version_items_item_get (measure: STRING_32 ; version: STRING_32 ; item: STRING_32 ): detachable QRS_ITEM




Get QRS Item


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **STRING_32**| QRS Measure Identifier | [default to null]
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **item** | **STRING_32**| QRS Measure Item Identifier | [default to null]

### Return type

[**QRS_ITEM**](QrsItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_qrs_measure_version_responsegroups_get**
> mdr_qrs_measure_version_responsegroups_get (measure: STRING_32 ; version: STRING_32 ): detachable QRS_RESPONSEGROUPS




Get QRS Response Group List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **STRING_32**| QRS Measure Identifier | [default to null]
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**QRS_RESPONSEGROUPS**](QrsResponsegroups.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_qrs_measure_version_responsegroups_responsegroup_get**
> mdr_qrs_measure_version_responsegroups_responsegroup_get (measure: STRING_32 ; version: STRING_32 ; responsegroup: STRING_32 ): detachable QRS_RESPONSEGROUP




Get QRS Response Group


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **STRING_32**| QRS Measure Identifier | [default to null]
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **responsegroup** | **STRING_32**| QRS Measure&#39;s Response Group Identifier | [default to null]

### Return type

[**QRS_RESPONSEGROUP**](QrsResponsegroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

