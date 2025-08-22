# MeasuresApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrQrsMeasureVersionGet**](MeasuresApi.md#mdrQrsMeasureVersionGet) | **GET** /mdr/qrs/{measure}/{version} | 
[**mdrQrsMeasureVersionItemsGet**](MeasuresApi.md#mdrQrsMeasureVersionItemsGet) | **GET** /mdr/qrs/{measure}/{version}/items | 
[**mdrQrsMeasureVersionItemsItemGet**](MeasuresApi.md#mdrQrsMeasureVersionItemsItemGet) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | 
[**mdrQrsMeasureVersionResponsegroupsGet**](MeasuresApi.md#mdrQrsMeasureVersionResponsegroupsGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | 
[**mdrQrsMeasureVersionResponsegroupsResponsegroupGet**](MeasuresApi.md#mdrQrsMeasureVersionResponsegroupsResponsegroupGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 



## mdrQrsMeasureVersionGet



Get QRS Product

### Example

```bash
 mdrQrsMeasureVersionGet measure=value version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **string** | QRS Measure Identifier | [default to null]
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**QrsProduct**](QrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrQrsMeasureVersionItemsGet



Get QRS Item List

### Example

```bash
 mdrQrsMeasureVersionItemsGet measure=value version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **string** | QRS Measure Identifier | [default to null]
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**QrsItems**](QrsItems.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrQrsMeasureVersionItemsItemGet



Get QRS Item

### Example

```bash
 mdrQrsMeasureVersionItemsItemGet measure=value version=value item=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **string** | QRS Measure Identifier | [default to null]
 **version** | **string** | CDISC Library Product Version | [default to null]
 **item** | **string** | QRS Measure Item Identifier | [default to null]

### Return type

[**QrsItem**](QrsItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrQrsMeasureVersionResponsegroupsGet



Get QRS Response Group List

### Example

```bash
 mdrQrsMeasureVersionResponsegroupsGet measure=value version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **string** | QRS Measure Identifier | [default to null]
 **version** | **string** | CDISC Library Product Version | [default to null]

### Return type

[**QrsResponsegroups**](QrsResponsegroups.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrQrsMeasureVersionResponsegroupsResponsegroupGet



Get QRS Response Group

### Example

```bash
 mdrQrsMeasureVersionResponsegroupsResponsegroupGet measure=value version=value responsegroup=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **string** | QRS Measure Identifier | [default to null]
 **version** | **string** | CDISC Library Product Version | [default to null]
 **responsegroup** | **string** | QRS Measure's Response Group Identifier | [default to null]

### Return type

[**QrsResponsegroup**](QrsResponsegroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

