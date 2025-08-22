# CdiscLibraryApi.SENDImplementationGuideSENDIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSendigDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#mdrRootSendigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionClassesClassDatasetsGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassDatasetsGet) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**mdrSendigVersionClassesClassGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassGet) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**mdrSendigVersionClassesGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesGet) | **GET** /mdr/sendig/{version}/classes | 
[**mdrSendigVersionDatasetsDatasetGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetGet) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**mdrSendigVersionDatasetsDatasetVariablesGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**mdrSendigVersionDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionDatasetsGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsGet) | **GET** /mdr/sendig/{version}/datasets | 
[**mdrSendigVersionGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionGet) | **GET** /mdr/sendig/{version} | 



## mdrRootSendigDatasetsDatasetVariablesVarGet

> RootSendigDatasetVariable mdrRootSendigDatasetsDatasetVariablesVarGet(dataset, _var)



Get Root SENDIG Dataset Variable

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SENDImplementationGuideSENDIGApi();
let dataset = "VS"; // String | SENDIG Dataset Identifier
let _var = "VSTEST"; // String | SENDIG Variable Identifier
apiInstance.mdrRootSendigDatasetsDatasetVariablesVarGet(dataset, _var, (error, data, response) => {
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
 **dataset** | **String**| SENDIG Dataset Identifier | 
 **_var** | **String**| SENDIG Variable Identifier | 

### Return type

[**RootSendigDatasetVariable**](RootSendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionClassesClassDatasetsGet

> SendigClassDatasets mdrSendigVersionClassesClassDatasetsGet(version, _class)



Get SENDIG Class Dataset List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SENDImplementationGuideSENDIGApi();
let version = "3-1"; // String | CDISC Library Product Version
let _class = "Findings"; // String | SENDIG Class Identifier
apiInstance.mdrSendigVersionClassesClassDatasetsGet(version, _class, (error, data, response) => {
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
 **version** | **String**| CDISC Library Product Version | 
 **_class** | **String**| SENDIG Class Identifier | 

### Return type

[**SendigClassDatasets**](SendigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionClassesClassGet

> SendigClass mdrSendigVersionClassesClassGet(version, _class)



Get SENDIG Class

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SENDImplementationGuideSENDIGApi();
let version = "3-1"; // String | CDISC Library Product Version
let _class = "Findings"; // String | SENDIG Class Identifier
apiInstance.mdrSendigVersionClassesClassGet(version, _class, (error, data, response) => {
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
 **version** | **String**| CDISC Library Product Version | 
 **_class** | **String**| SENDIG Class Identifier | 

### Return type

[**SendigClass**](SendigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionClassesGet

> SendigClasses mdrSendigVersionClassesGet(version)



Get SENDIG Class List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SENDImplementationGuideSENDIGApi();
let version = "3-1"; // String | CDISC Library Product Version
apiInstance.mdrSendigVersionClassesGet(version, (error, data, response) => {
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
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**SendigClasses**](SendigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionDatasetsDatasetGet

> SendigDataset mdrSendigVersionDatasetsDatasetGet(version, dataset)



Get SENDIG Dataset

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SENDImplementationGuideSENDIGApi();
let version = "3-1"; // String | CDISC Library Product Version
let dataset = "VS"; // String | SENDIG Class Identifier
apiInstance.mdrSendigVersionDatasetsDatasetGet(version, dataset, (error, data, response) => {
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
 **version** | **String**| CDISC Library Product Version | 
 **dataset** | **String**| SENDIG Class Identifier | 

### Return type

[**SendigDataset**](SendigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionDatasetsDatasetVariablesGet

> SendigDatasetVariables mdrSendigVersionDatasetsDatasetVariablesGet(version, dataset)



Get SENDIG Dataset Variable List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SENDImplementationGuideSENDIGApi();
let version = "3-1"; // String | CDISC Library Product Version
let dataset = "VS"; // String | SENDIG Class Identifier
apiInstance.mdrSendigVersionDatasetsDatasetVariablesGet(version, dataset, (error, data, response) => {
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
 **version** | **String**| CDISC Library Product Version | 
 **dataset** | **String**| SENDIG Class Identifier | 

### Return type

[**SendigDatasetVariables**](SendigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionDatasetsDatasetVariablesVarGet

> SendigDatasetVariable mdrSendigVersionDatasetsDatasetVariablesVarGet(version, dataset, _var)



Get SENDIG Dataset Variable

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SENDImplementationGuideSENDIGApi();
let version = "3-1"; // String | CDISC Library Product Version
let dataset = "VS"; // String | SENDIG Class Identifier
let _var = "VSTEST"; // String | SENDIG Variable Identifier
apiInstance.mdrSendigVersionDatasetsDatasetVariablesVarGet(version, dataset, _var, (error, data, response) => {
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
 **version** | **String**| CDISC Library Product Version | 
 **dataset** | **String**| SENDIG Class Identifier | 
 **_var** | **String**| SENDIG Variable Identifier | 

### Return type

[**SendigDatasetVariable**](SendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionDatasetsGet

> SendigDatasets mdrSendigVersionDatasetsGet(version)



Get SENDIG Dataset List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SENDImplementationGuideSENDIGApi();
let version = "3-1"; // String | CDISC Library Product Version
apiInstance.mdrSendigVersionDatasetsGet(version, (error, data, response) => {
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
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**SendigDatasets**](SendigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv


## mdrSendigVersionGet

> SendigProduct mdrSendigVersionGet(version)



Get SENDIG product

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SENDImplementationGuideSENDIGApi();
let version = "3-1"; // String | CDISC Library Product Version
apiInstance.mdrSendigVersionGet(version, (error, data, response) => {
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
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**SendigProduct**](SendigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

