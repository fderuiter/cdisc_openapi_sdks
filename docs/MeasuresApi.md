# CdiscLibraryApi.MeasuresApi

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

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.MeasuresApi();
let measure = "AIMS1"; // String | QRS Measure Identifier
let version = "1-0"; // String | CDISC Library Product Version
apiInstance.mdrQrsMeasureVersionGet(measure, version, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | 
 **version** | **String**| CDISC Library Product Version | 

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

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.MeasuresApi();
let measure = "AIMS1"; // String | QRS Measure Identifier
let version = "1-0"; // String | CDISC Library Product Version
apiInstance.mdrQrsMeasureVersionItemsGet(measure, version, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | 
 **version** | **String**| CDISC Library Product Version | 

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

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.MeasuresApi();
let measure = "AIMS1"; // String | QRS Measure Identifier
let version = "1-0"; // String | CDISC Library Product Version
let item = "AIMS01.001"; // String | QRS Measure Item Identifier
apiInstance.mdrQrsMeasureVersionItemsItemGet(measure, version, item, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | 
 **version** | **String**| CDISC Library Product Version | 
 **item** | **String**| QRS Measure Item Identifier | 

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

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.MeasuresApi();
let measure = "AIMS1"; // String | QRS Measure Identifier
let version = "1-0"; // String | CDISC Library Product Version
apiInstance.mdrQrsMeasureVersionResponsegroupsGet(measure, version, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | 
 **version** | **String**| CDISC Library Product Version | 

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

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.MeasuresApi();
let measure = "AIMS1"; // String | QRS Measure Identifier
let version = "1-0"; // String | CDISC Library Product Version
let responsegroup = "AIMS1.11to12"; // String | QRS Measure's Response Group Identifier
apiInstance.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure, version, responsegroup, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | 
 **version** | **String**| CDISC Library Product Version | 
 **responsegroup** | **String**| QRS Measure&#39;s Response Group Identifier | 

### Return type

[**QrsResponsegroup**](QrsResponsegroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

