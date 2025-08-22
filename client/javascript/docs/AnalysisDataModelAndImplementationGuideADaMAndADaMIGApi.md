# CdiscLibraryApi.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrAdamProductDatastructuresGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresGet) | **GET** /mdr/adam/{product}/datastructures | 
[**mdrAdamProductDatastructuresStructureGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureGet) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
[**mdrAdamProductDatastructuresStructureVariablesGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVariablesGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**mdrAdamProductDatastructuresStructureVariablesVarGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVariablesVarGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**mdrAdamProductDatastructuresStructureVarsetsGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVarsetsGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**mdrAdamProductDatastructuresStructureVarsetsVarsetGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVarsetsVarsetGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**mdrAdamProductGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductGet) | **GET** /mdr/adam/{product} | 



## mdrAdamProductDatastructuresGet

> AdamProductDatastructures mdrAdamProductDatastructuresGet(product)



Get ADaM Data Structure List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
let product = "adamig-1-1"; // String | CDISC Library Product
apiInstance.mdrAdamProductDatastructuresGet(product, (error, data, response) => {
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
 **product** | **String**| CDISC Library Product | 

### Return type

[**AdamProductDatastructures**](AdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv


## mdrAdamProductDatastructuresStructureGet

> AdamDatastructure mdrAdamProductDatastructuresStructureGet(product, structure)



Get ADaM Data Structure

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
let product = "adamig-1-1"; // String | CDISC Library Product
let structure = "ADSL"; // String | Data structure Identifier
apiInstance.mdrAdamProductDatastructuresStructureGet(product, structure, (error, data, response) => {
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
 **product** | **String**| CDISC Library Product | 
 **structure** | **String**| Data structure Identifier | 

### Return type

[**AdamDatastructure**](AdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrAdamProductDatastructuresStructureVariablesGet

> AdamDatastructureVariables mdrAdamProductDatastructuresStructureVariablesGet(product, structure)



Get ADaM Variable List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
let product = "adamig-1-1"; // String | CDISC Library Product
let structure = "ADSL"; // String | ADaM Data Structure Identifier
apiInstance.mdrAdamProductDatastructuresStructureVariablesGet(product, structure, (error, data, response) => {
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
 **product** | **String**| CDISC Library Product | 
 **structure** | **String**| ADaM Data Structure Identifier | 

### Return type

[**AdamDatastructureVariables**](AdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrAdamProductDatastructuresStructureVariablesVarGet

> AdamVariable mdrAdamProductDatastructuresStructureVariablesVarGet(product, structure, _var)



Get ADaM Variable

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
let product = "adamig-1-1"; // String | CDISC Library Product
let structure = "ADSL"; // String | ADaM Data Structure Identifier
let _var = "SITEGRy"; // String | ADaM Variable Identifier
apiInstance.mdrAdamProductDatastructuresStructureVariablesVarGet(product, structure, _var, (error, data, response) => {
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
 **product** | **String**| CDISC Library Product | 
 **structure** | **String**| ADaM Data Structure Identifier | 
 **_var** | **String**| ADaM Variable Identifier | 

### Return type

[**AdamVariable**](AdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrAdamProductDatastructuresStructureVarsetsGet

> AdamDatastructureVarsets mdrAdamProductDatastructuresStructureVarsetsGet(product, structure)



Get ADaM Variable Set List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
let product = "adamig-1-1"; // String | CDISC Library Product
let structure = "ADSL"; // String | ADaM Data Structure Identifier
apiInstance.mdrAdamProductDatastructuresStructureVarsetsGet(product, structure, (error, data, response) => {
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
 **product** | **String**| CDISC Library Product | 
 **structure** | **String**| ADaM Data Structure Identifier | 

### Return type

[**AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrAdamProductDatastructuresStructureVarsetsVarsetGet

> AdamVarset mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product, structure, varset)



Get ADaM Variable Set

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
let product = "adamig-1-1"; // String | CDISC Library Product
let structure = "ADSL"; // String | ADaM Data Structure Identifier
let varset = "Identifier"; // String | ADaM Variable Set Identifier
apiInstance.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product, structure, varset, (error, data, response) => {
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
 **product** | **String**| CDISC Library Product | 
 **structure** | **String**| ADaM Data Structure Identifier | 
 **varset** | **String**| ADaM Variable Set Identifier | 

### Return type

[**AdamVarset**](AdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrAdamProductGet

> AdamProduct mdrAdamProductGet(product)



Get ADaM Product

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
let product = "adamig-1-1"; // String | CDISC Library Product
apiInstance.mdrAdamProductGet(product, (error, data, response) => {
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
 **product** | **String**| CDISC Library Product | 

### Return type

[**AdamProduct**](AdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

