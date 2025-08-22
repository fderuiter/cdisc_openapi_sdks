# MeasuresApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrQrsMeasureVersionGet**](MeasuresApi.md#mdrQrsMeasureVersionGet) | **GET** /mdr/qrs/{measure}/{version} | 
[**mdrQrsMeasureVersionItemsGet**](MeasuresApi.md#mdrQrsMeasureVersionItemsGet) | **GET** /mdr/qrs/{measure}/{version}/items | 
[**mdrQrsMeasureVersionItemsItemGet**](MeasuresApi.md#mdrQrsMeasureVersionItemsItemGet) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | 
[**mdrQrsMeasureVersionResponsegroupsGet**](MeasuresApi.md#mdrQrsMeasureVersionResponsegroupsGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | 
[**mdrQrsMeasureVersionResponsegroupsResponsegroupGet**](MeasuresApi.md#mdrQrsMeasureVersionResponsegroupsResponsegroupGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 



## mdrQrsMeasureVersionGet

> QrsProduct mdrQrsMeasureVersionGet(measure, version)



Get QRS Product

### Example

```java
// Import classes:
//import org.openapitools.client.api.MeasuresApi;

MeasuresApi apiInstance = new MeasuresApi();
String measure = AIMS1; // String | QRS Measure Identifier
String version = 1-0; // String | CDISC Library Product Version
try {
    QrsProduct result = apiInstance.mdrQrsMeasureVersionGet(measure, version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MeasuresApi#mdrQrsMeasureVersionGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | [default to null]
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**QrsProduct**](QrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel


## mdrQrsMeasureVersionItemsGet

> QrsItems mdrQrsMeasureVersionItemsGet(measure, version)



Get QRS Item List

### Example

```java
// Import classes:
//import org.openapitools.client.api.MeasuresApi;

MeasuresApi apiInstance = new MeasuresApi();
String measure = AIMS1; // String | QRS Measure Identifier
String version = 1-0; // String | CDISC Library Product Version
try {
    QrsItems result = apiInstance.mdrQrsMeasureVersionItemsGet(measure, version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MeasuresApi#mdrQrsMeasureVersionItemsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | [default to null]
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**QrsItems**](QrsItems.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrQrsMeasureVersionItemsItemGet

> QrsItem mdrQrsMeasureVersionItemsItemGet(measure, version, item)



Get QRS Item

### Example

```java
// Import classes:
//import org.openapitools.client.api.MeasuresApi;

MeasuresApi apiInstance = new MeasuresApi();
String measure = AIMS1; // String | QRS Measure Identifier
String version = 1-0; // String | CDISC Library Product Version
String item = AIMS01.001; // String | QRS Measure Item Identifier
try {
    QrsItem result = apiInstance.mdrQrsMeasureVersionItemsItemGet(measure, version, item);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MeasuresApi#mdrQrsMeasureVersionItemsItemGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | [default to null]
 **version** | **String**| CDISC Library Product Version | [default to null]
 **item** | **String**| QRS Measure Item Identifier | [default to null]

### Return type

[**QrsItem**](QrsItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrQrsMeasureVersionResponsegroupsGet

> QrsResponsegroups mdrQrsMeasureVersionResponsegroupsGet(measure, version)



Get QRS Response Group List

### Example

```java
// Import classes:
//import org.openapitools.client.api.MeasuresApi;

MeasuresApi apiInstance = new MeasuresApi();
String measure = AIMS1; // String | QRS Measure Identifier
String version = 1-0; // String | CDISC Library Product Version
try {
    QrsResponsegroups result = apiInstance.mdrQrsMeasureVersionResponsegroupsGet(measure, version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MeasuresApi#mdrQrsMeasureVersionResponsegroupsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | [default to null]
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**QrsResponsegroups**](QrsResponsegroups.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrQrsMeasureVersionResponsegroupsResponsegroupGet

> QrsResponsegroup mdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure, version, responsegroup)



Get QRS Response Group

### Example

```java
// Import classes:
//import org.openapitools.client.api.MeasuresApi;

MeasuresApi apiInstance = new MeasuresApi();
String measure = AIMS1; // String | QRS Measure Identifier
String version = 1-0; // String | CDISC Library Product Version
String responsegroup = AIMS1.11to12; // String | QRS Measure's Response Group Identifier
try {
    QrsResponsegroup result = apiInstance.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure, version, responsegroup);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MeasuresApi#mdrQrsMeasureVersionResponsegroupsResponsegroupGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | [default to null]
 **version** | **String**| CDISC Library Product Version | [default to null]
 **responsegroup** | **String**| QRS Measure&#39;s Response Group Identifier | [default to null]

### Return type

[**QrsResponsegroup**](QrsResponsegroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

