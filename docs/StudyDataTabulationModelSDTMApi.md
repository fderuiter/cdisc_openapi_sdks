# CdiscLibraryApi.StudyDataTabulationModelSDTMApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmClassesClassVariablesVarGet) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**mdrRootSdtmDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionClassesClassDatasetsGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassDatasetsGet) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**mdrSdtmVersionClassesClassGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassGet) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**mdrSdtmVersionClassesClassVariablesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**mdrSdtmVersionClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesVarGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**mdrSdtmVersionClassesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesGet) | **GET** /mdr/sdtm/{version}/classes | 
[**mdrSdtmVersionDatasetsDatasetGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**mdrSdtmVersionDatasetsDatasetVariablesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**mdrSdtmVersionDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionDatasetsGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsGet) | **GET** /mdr/sdtm/{version}/datasets | 
[**mdrSdtmVersionGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionGet) | **GET** /mdr/sdtm/{version} | 



## mdrRootSdtmClassesClassVariablesVarGet

> RootSdtmClassVariable mdrRootSdtmClassesClassVariablesVarGet(_class, _var)



Get Root of SDTM Class Variable

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StudyDataTabulationModelSDTMApi();
let _class = "GeneralObservations"; // String | SDTM Class Identifier
let _var = "--DTC"; // String | SDTM Variable Identifier
apiInstance.mdrRootSdtmClassesClassVariablesVarGet(_class, _var, (error, data, response) => {
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
 **_class** | **String**| SDTM Class Identifier | 
 **_var** | **String**| SDTM Variable Identifier | 

### Return type

[**RootSdtmClassVariable**](RootSdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrRootSdtmDatasetsDatasetVariablesVarGet

> RootSdtmDatasetVariable mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset, _var)



Get Root SDTM Dataset Variable

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StudyDataTabulationModelSDTMApi();
let dataset = "DM"; // String | SDTM Dataset Identifier
let _var = "SUBJID"; // String | SDTM Variable Identifier
apiInstance.mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset, _var, (error, data, response) => {
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
 **dataset** | **String**| SDTM Dataset Identifier | 
 **_var** | **String**| SDTM Variable Identifier | 

### Return type

[**RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionClassesClassDatasetsGet

> SdtmClassDatasets mdrSdtmVersionClassesClassDatasetsGet(version, _class)



Get SDTM Class Dataset List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StudyDataTabulationModelSDTMApi();
let version = "1-8"; // String | CDISC Library Product Version
let _class = "SpecialPurpose"; // String | SDTM Class Identifier
apiInstance.mdrSdtmVersionClassesClassDatasetsGet(version, _class, (error, data, response) => {
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
 **_class** | **String**| SDTM Class Identifier | 

### Return type

[**SdtmClassDatasets**](SdtmClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionClassesClassGet

> SdtmClass mdrSdtmVersionClassesClassGet(version, _class)



Get SDTM Class

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StudyDataTabulationModelSDTMApi();
let version = "1-8"; // String | CDISC Library Product Version
let _class = "Findings"; // String | SDTM Class Identifier
apiInstance.mdrSdtmVersionClassesClassGet(version, _class, (error, data, response) => {
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
 **_class** | **String**| SDTM Class Identifier | 

### Return type

[**SdtmClass**](SdtmClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionClassesClassVariablesGet

> SdtmClassVariables mdrSdtmVersionClassesClassVariablesGet(version, _class)



Get SDTM Class Variable List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StudyDataTabulationModelSDTMApi();
let version = "1-8"; // String | CDISC Library Product Version
let _class = "GeneralObservations"; // String | SDTM Class Identifier
apiInstance.mdrSdtmVersionClassesClassVariablesGet(version, _class, (error, data, response) => {
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
 **_class** | **String**| SDTM Class Identifier | 

### Return type

[**SdtmClassVariables**](SdtmClassVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionClassesClassVariablesVarGet

> SdtmClassVariable mdrSdtmVersionClassesClassVariablesVarGet(version, _class, _var)



Get SDTM Class Variable

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StudyDataTabulationModelSDTMApi();
let version = "1-8"; // String | CDISC Library Product Version
let _class = "GeneralObservations"; // String | SDTM Class Identifier
let _var = "--DTC"; // String | SDTM Variable Identifier
apiInstance.mdrSdtmVersionClassesClassVariablesVarGet(version, _class, _var, (error, data, response) => {
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
 **_class** | **String**| SDTM Class Identifier | 
 **_var** | **String**| SDTM Variable Identifier | 

### Return type

[**SdtmClassVariable**](SdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionClassesGet

> SdtmClasses mdrSdtmVersionClassesGet(version)



Get SDTM Class List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StudyDataTabulationModelSDTMApi();
let version = "1-8"; // String | CDISC Library Product Version
apiInstance.mdrSdtmVersionClassesGet(version, (error, data, response) => {
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

[**SdtmClasses**](SdtmClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionDatasetsDatasetGet

> SdtmDataset mdrSdtmVersionDatasetsDatasetGet(version, dataset)



Get SDTM Dataset

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StudyDataTabulationModelSDTMApi();
let version = "1-8"; // String | CDISC Library Product Version
let dataset = "DM"; // String | SDTM Dataset Identifier
apiInstance.mdrSdtmVersionDatasetsDatasetGet(version, dataset, (error, data, response) => {
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
 **dataset** | **String**| SDTM Dataset Identifier | 

### Return type

[**SdtmDataset**](SdtmDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionDatasetsDatasetVariablesGet

> SdtmDatasetVariables mdrSdtmVersionDatasetsDatasetVariablesGet(version, dataset)



Get SDTM Dataset Variable List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StudyDataTabulationModelSDTMApi();
let version = "1-8"; // String | CDISC Library Product Version
let dataset = "DM"; // String | SDTM Dataset Identifier
apiInstance.mdrSdtmVersionDatasetsDatasetVariablesGet(version, dataset, (error, data, response) => {
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
 **dataset** | **String**| SDTM Dataset Identifier | 

### Return type

[**SdtmDatasetVariables**](SdtmDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionDatasetsDatasetVariablesVarGet

> SdtmDatasetVariable mdrSdtmVersionDatasetsDatasetVariablesVarGet(version, dataset, _var)



Get SDTM Dataset Variable

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StudyDataTabulationModelSDTMApi();
let version = "1-8"; // String | CDISC Library Product Version
let dataset = "DM"; // String | SDTM Dataset Identifier
let _var = "SUBJID"; // String | SDTM Variable Identifier
apiInstance.mdrSdtmVersionDatasetsDatasetVariablesVarGet(version, dataset, _var, (error, data, response) => {
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
 **dataset** | **String**| SDTM Dataset Identifier | 
 **_var** | **String**| SDTM Variable Identifier | 

### Return type

[**SdtmDatasetVariable**](SdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionDatasetsGet

> SdtmDatasets mdrSdtmVersionDatasetsGet(version)



Get SDTM Dataset List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StudyDataTabulationModelSDTMApi();
let version = "1-8"; // String | CDISC Library Product Version
apiInstance.mdrSdtmVersionDatasetsGet(version, (error, data, response) => {
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

[**SdtmDatasets**](SdtmDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv


## mdrSdtmVersionGet

> SdtmProduct mdrSdtmVersionGet(version)



Get SDTM product

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.StudyDataTabulationModelSDTMApi();
let version = "1-8"; // String | CDISC Library Product Version
apiInstance.mdrSdtmVersionGet(version, (error, data, response) => {
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

[**SdtmProduct**](SdtmProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

