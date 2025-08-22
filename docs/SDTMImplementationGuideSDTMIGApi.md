# CdiscLibraryApi.SDTMImplementationGuideSDTMIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmigDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGApi.md#mdrRootSdtmigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**mdrSdtmigVersionClassesClassDatasetsGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesClassDatasetsGet) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**mdrSdtmigVersionClassesClassGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesClassGet) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
[**mdrSdtmigVersionClassesGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesGet) | **GET** /mdr/sdtmig/{version}/classes | 
[**mdrSdtmigVersionDatasetsDatasetGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**mdrSdtmigVersionDatasetsDatasetVariablesGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**mdrSdtmigVersionDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmigVersionDatasetsGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsGet) | **GET** /mdr/sdtmig/{version}/datasets | 
[**mdrSdtmigVersionGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionGet) | **GET** /mdr/sdtmig/{version} | 



## mdrRootSdtmigDatasetsDatasetVariablesVarGet

> RootSdtmigDatasetVariable mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset, _var)



Get Root SDTMIG Dataset Variable

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SDTMImplementationGuideSDTMIGApi();
let dataset = "DM"; // String | SDTMIG Dataset Identifier
let _var = "SUBJID"; // String | SDTMIG Variable Identifier
apiInstance.mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset, _var, (error, data, response) => {
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
 **dataset** | **String**| SDTMIG Dataset Identifier | 
 **_var** | **String**| SDTMIG Variable Identifier | 

### Return type

[**RootSdtmigDatasetVariable**](RootSdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionClassesClassDatasetsGet

> SdtmigClassDatasets mdrSdtmigVersionClassesClassDatasetsGet(version, _class)



Get SDTMIG Class Dataset List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SDTMImplementationGuideSDTMIGApi();
let version = "3-3"; // String | CDISC Library Product Version
let _class = "Findings"; // String | SDTMIG Class Identifier
apiInstance.mdrSdtmigVersionClassesClassDatasetsGet(version, _class, (error, data, response) => {
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
 **_class** | **String**| SDTMIG Class Identifier | 

### Return type

[**SdtmigClassDatasets**](SdtmigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionClassesClassGet

> SdtmigClass mdrSdtmigVersionClassesClassGet(version, _class)



Get SDTMIG Class

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SDTMImplementationGuideSDTMIGApi();
let version = "3-3"; // String | CDISC Library Product Version
let _class = "Findings"; // String | SDTMIG Class Identifier
apiInstance.mdrSdtmigVersionClassesClassGet(version, _class, (error, data, response) => {
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
 **_class** | **String**| SDTMIG Class Identifier | 

### Return type

[**SdtmigClass**](SdtmigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionClassesGet

> SdtmigClasses mdrSdtmigVersionClassesGet(version)



Get SDTMIG Class List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SDTMImplementationGuideSDTMIGApi();
let version = "3-3"; // String | CDISC Library Product Version
apiInstance.mdrSdtmigVersionClassesGet(version, (error, data, response) => {
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

[**SdtmigClasses**](SdtmigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionDatasetsDatasetGet

> SdtmigDataset mdrSdtmigVersionDatasetsDatasetGet(version, dataset)



Get SDTMIG Dataset

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SDTMImplementationGuideSDTMIGApi();
let version = "3-3"; // String | CDISC Library Product Version
let dataset = "LB"; // String | SDTMIG Dataset Identifier
apiInstance.mdrSdtmigVersionDatasetsDatasetGet(version, dataset, (error, data, response) => {
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
 **dataset** | **String**| SDTMIG Dataset Identifier | 

### Return type

[**SdtmigDataset**](SdtmigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionDatasetsDatasetVariablesGet

> SdtmigDatasetVariables mdrSdtmigVersionDatasetsDatasetVariablesGet(version, dataset)



Get SDTMIG Dataset Variable List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SDTMImplementationGuideSDTMIGApi();
let version = "3-3"; // String | CDISC Library Product Version
let dataset = "LB"; // String | SDTMIG Dataset Identifier
apiInstance.mdrSdtmigVersionDatasetsDatasetVariablesGet(version, dataset, (error, data, response) => {
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
 **dataset** | **String**| SDTMIG Dataset Identifier | 

### Return type

[**SdtmigDatasetVariables**](SdtmigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionDatasetsDatasetVariablesVarGet

> SdtmigDatasetVariable mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version, dataset, _var)



Get SDTMIG Dataset Variable

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SDTMImplementationGuideSDTMIGApi();
let version = "3-3"; // String | CDISC Library Product Version
let dataset = "LB"; // String | SDTMIG Dataset Identifier
let _var = "LBDTC"; // String | SDTMIG Variable Identifier
apiInstance.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version, dataset, _var, (error, data, response) => {
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
 **dataset** | **String**| SDTMIG Dataset Identifier | 
 **_var** | **String**| SDTMIG Variable Identifier | 

### Return type

[**SdtmigDatasetVariable**](SdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionDatasetsGet

> SdtmigDatasets mdrSdtmigVersionDatasetsGet(version)



Get SDTMIG Dataset List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SDTMImplementationGuideSDTMIGApi();
let version = "3-3"; // String | CDISC Library Product Version
apiInstance.mdrSdtmigVersionDatasetsGet(version, (error, data, response) => {
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

[**SdtmigDatasets**](SdtmigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv


## mdrSdtmigVersionGet

> SdtmigProduct mdrSdtmigVersionGet(version)



Get SDTMIG product

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.SDTMImplementationGuideSDTMIGApi();
let version = "3-3"; // String | CDISC Library Product Version
apiInstance.mdrSdtmigVersionGet(version, (error, data, response) => {
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

[**SdtmigProduct**](SdtmigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

