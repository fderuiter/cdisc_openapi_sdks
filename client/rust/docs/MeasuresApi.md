# \MeasuresApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_qrs_measure_version_get**](MeasuresApi.md#mdr_qrs_measure_version_get) | **GET** /mdr/qrs/{measure}/{version} | 
[**mdr_qrs_measure_version_items_get**](MeasuresApi.md#mdr_qrs_measure_version_items_get) | **GET** /mdr/qrs/{measure}/{version}/items | 
[**mdr_qrs_measure_version_items_item_get**](MeasuresApi.md#mdr_qrs_measure_version_items_item_get) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | 
[**mdr_qrs_measure_version_responsegroups_get**](MeasuresApi.md#mdr_qrs_measure_version_responsegroups_get) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | 
[**mdr_qrs_measure_version_responsegroups_responsegroup_get**](MeasuresApi.md#mdr_qrs_measure_version_responsegroups_responsegroup_get) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 



## mdr_qrs_measure_version_get

> models::QrsProduct mdr_qrs_measure_version_get(measure, version)


Get QRS Product

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**measure** | **String** | QRS Measure Identifier | [required] |
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::QrsProduct**](QrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_qrs_measure_version_items_get

> models::QrsItems mdr_qrs_measure_version_items_get(measure, version)


Get QRS Item List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**measure** | **String** | QRS Measure Identifier | [required] |
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::QrsItems**](QrsItems.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_qrs_measure_version_items_item_get

> models::QrsItem mdr_qrs_measure_version_items_item_get(measure, version, item)


Get QRS Item

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**measure** | **String** | QRS Measure Identifier | [required] |
**version** | **String** | CDISC Library Product Version | [required] |
**item** | **String** | QRS Measure Item Identifier | [required] |

### Return type

[**models::QrsItem**](QrsItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_qrs_measure_version_responsegroups_get

> models::QrsResponsegroups mdr_qrs_measure_version_responsegroups_get(measure, version)


Get QRS Response Group List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**measure** | **String** | QRS Measure Identifier | [required] |
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::QrsResponsegroups**](QrsResponsegroups.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_qrs_measure_version_responsegroups_responsegroup_get

> models::QrsResponsegroup mdr_qrs_measure_version_responsegroups_responsegroup_get(measure, version, responsegroup)


Get QRS Response Group

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**measure** | **String** | QRS Measure Identifier | [required] |
**version** | **String** | CDISC Library Product Version | [required] |
**responsegroup** | **String** | QRS Measure's Response Group Identifier | [required] |

### Return type

[**models::QrsResponsegroup**](QrsResponsegroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

