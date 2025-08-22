# CdiscLibraryApi.DefaultApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrAboutGet**](DefaultApi.md#mdrAboutGet) | **GET** /mdr/about | 
[**mdrLastupdatedGet**](DefaultApi.md#mdrLastupdatedGet) | **GET** /mdr/lastupdated | 
[**mdrProductsDataAnalysisGet**](DefaultApi.md#mdrProductsDataAnalysisGet) | **GET** /mdr/products/DataAnalysis | 
[**mdrProductsDataCollectionGet**](DefaultApi.md#mdrProductsDataCollectionGet) | **GET** /mdr/products/DataCollection | 
[**mdrProductsDataTabulationGet**](DefaultApi.md#mdrProductsDataTabulationGet) | **GET** /mdr/products/DataTabulation | 
[**mdrProductsGet**](DefaultApi.md#mdrProductsGet) | **GET** /mdr/products | 
[**mdrProductsMeasuresGet**](DefaultApi.md#mdrProductsMeasuresGet) | **GET** /mdr/products/Measures | 
[**mdrProductsTerminologyGet**](DefaultApi.md#mdrProductsTerminologyGet) | **GET** /mdr/products/Terminology | 



## mdrAboutGet

> About mdrAboutGet()



Get Information About CDISC Library

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.DefaultApi();
apiInstance.mdrAboutGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**About**](About.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrLastupdatedGet

> Lastupdated mdrLastupdatedGet()



Get CDISC Library Last Updated

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.DefaultApi();
apiInstance.mdrLastupdatedGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Lastupdated**](Lastupdated.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrProductsDataAnalysisGet

> ProductgroupDataAnalysis mdrProductsDataAnalysisGet()



Get CDISC Library Product Group Data Analysis

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.DefaultApi();
apiInstance.mdrProductsDataAnalysisGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupDataAnalysis**](ProductgroupDataAnalysis.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrProductsDataCollectionGet

> ProductgroupDataCollection mdrProductsDataCollectionGet()



Get CDISC Library Product Group Data Collection

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.DefaultApi();
apiInstance.mdrProductsDataCollectionGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupDataCollection**](ProductgroupDataCollection.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrProductsDataTabulationGet

> ProductgroupDataTabulation mdrProductsDataTabulationGet()



Get CDISC Library Product Group Data Tabulation

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.DefaultApi();
apiInstance.mdrProductsDataTabulationGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupDataTabulation**](ProductgroupDataTabulation.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrProductsGet

> Products mdrProductsGet()



Get CDISC Library Products

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.DefaultApi();
apiInstance.mdrProductsGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Products**](Products.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrProductsMeasuresGet

> ProductgroupQrs mdrProductsMeasuresGet()



Get CDISC Library Product Group QRS

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.DefaultApi();
apiInstance.mdrProductsMeasuresGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupQrs**](ProductgroupQrs.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mdrProductsTerminologyGet

> ProductgroupTerminology mdrProductsTerminologyGet()



Get CDISC Library Product Group Terminology

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.DefaultApi();
apiInstance.mdrProductsTerminologyGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupTerminology**](ProductgroupTerminology.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

