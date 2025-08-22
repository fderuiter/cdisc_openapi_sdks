# CdiscLibraryApi.ControlledTerminologyCTApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCtPackagesGet**](ControlledTerminologyCTApi.md#mdrCtPackagesGet) | **GET** /mdr/ct/packages | 
[**mdrCtPackagesPackageCodelistsCodelistGet**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | 
[**mdrCtPackagesPackageCodelistsCodelistTermsGet**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistTermsGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
[**mdrCtPackagesPackageCodelistsCodelistTermsTermGet**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistTermsTermGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
[**mdrCtPackagesPackageCodelistsGet**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsGet) | **GET** /mdr/ct/packages/{package}/codelists | 
[**mdrCtPackagesProductGet**](ControlledTerminologyCTApi.md#mdrCtPackagesProductGet) | **GET** /mdr/ct/packages/{product} | 
[**mdrRootCtProductGroupCodelistsCodelistGet**](ControlledTerminologyCTApi.md#mdrRootCtProductGroupCodelistsCodelistGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
[**mdrRootCtProductGroupCodelistsCodelistTermsTermGet**](ControlledTerminologyCTApi.md#mdrRootCtProductGroupCodelistsCodelistTermsTermGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 



## mdrCtPackagesGet

> CtPackages mdrCtPackagesGet()



Get CDISC Library CT Package List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ControlledTerminologyCTApi();
apiInstance.mdrCtPackagesGet((error, data, response) => {
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

[**CtPackages**](CtPackages.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCtPackagesPackageCodelistsCodelistGet

> CtCodelist mdrCtPackagesPackageCodelistsCodelistGet(_package, codelist)



Get CDISC Library CT Package Codelist

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ControlledTerminologyCTApi();
let _package = "sdtmct-2019-12-20"; // String | CT Package Identifier
let codelist = "C67154"; // String | CT Codelist Identifier
apiInstance.mdrCtPackagesPackageCodelistsCodelistGet(_package, codelist, (error, data, response) => {
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
 **_package** | **String**| CT Package Identifier | 
 **codelist** | **String**| CT Codelist Identifier | 

### Return type

[**CtCodelist**](CtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCtPackagesPackageCodelistsCodelistTermsGet

> CtCodelistTerms mdrCtPackagesPackageCodelistsCodelistTermsGet(_package, codelist)



Get CDISC Library CT Package Codelist Term List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ControlledTerminologyCTApi();
let _package = "sdtmct-2019-12-20"; // String | CT Package Identifier
let codelist = "C67154"; // String | CT Codelist Identifier
apiInstance.mdrCtPackagesPackageCodelistsCodelistTermsGet(_package, codelist, (error, data, response) => {
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
 **_package** | **String**| CT Package Identifier | 
 **codelist** | **String**| CT Codelist Identifier | 

### Return type

[**CtCodelistTerms**](CtCodelistTerms.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCtPackagesPackageCodelistsCodelistTermsTermGet

> CtTerm mdrCtPackagesPackageCodelistsCodelistTermsTermGet(_package, codelist, term)



Get CDISC Library CT Package Codelist Term

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ControlledTerminologyCTApi();
let _package = "sdtmct-2019-12-20"; // String | CT Package Product Identifier
let codelist = "C67154"; // String | CT Codelist Identifier
let term = "C64796"; // String | CT Codelist Term Identifier
apiInstance.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(_package, codelist, term, (error, data, response) => {
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
 **_package** | **String**| CT Package Product Identifier | 
 **codelist** | **String**| CT Codelist Identifier | 
 **term** | **String**| CT Codelist Term Identifier | 

### Return type

[**CtTerm**](CtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCtPackagesPackageCodelistsGet

> CtPackageCodelists mdrCtPackagesPackageCodelistsGet(_package)



Get CDISC Library CT Package Codelist List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ControlledTerminologyCTApi();
let _package = "sdtmct-2019-12-20"; // String | CT Package Identifier
apiInstance.mdrCtPackagesPackageCodelistsGet(_package, (error, data, response) => {
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
 **_package** | **String**| CT Package Identifier | 

### Return type

[**CtPackageCodelists**](CtPackageCodelists.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCtPackagesProductGet

> CtPackage mdrCtPackagesProductGet(product)



Get CDISC Library CT Package

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ControlledTerminologyCTApi();
let product = "sdtmct-2019-12-20"; // String | CT Package Product Identifier
apiInstance.mdrCtPackagesProductGet(product, (error, data, response) => {
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
 **product** | **String**| CT Package Product Identifier | 

### Return type

[**CtPackage**](CtPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet


## mdrRootCtProductGroupCodelistsCodelistGet

> RootCtCodelist mdrRootCtProductGroupCodelistsCodelistGet(productGroup, codelist)



Get CDISC Library Root CT Codelist

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ControlledTerminologyCTApi();
let productGroup = "sdtmct"; // String | CT Product Group Identifier
let codelist = "C67154"; // String | CT Codelist Identifier
apiInstance.mdrRootCtProductGroupCodelistsCodelistGet(productGroup, codelist, (error, data, response) => {
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
 **productGroup** | **String**| CT Product Group Identifier | 
 **codelist** | **String**| CT Codelist Identifier | 

### Return type

[**RootCtCodelist**](RootCtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrRootCtProductGroupCodelistsCodelistTermsTermGet

> RootCtTerm mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup, codelist, term)



Get CDISC Library Root CT Term

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ControlledTerminologyCTApi();
let productGroup = "sdtmct"; // String | CT Product Group Identifier
let codelist = "C67154"; // String | CT Codelist Identifier
let term = "C64796"; // String | CT Codelist Term Identifier
apiInstance.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup, codelist, term, (error, data, response) => {
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
 **productGroup** | **String**| CT Product Group Identifier | 
 **codelist** | **String**| CT Codelist Identifier | 
 **term** | **String**| CT Codelist Term Identifier | 

### Return type

[**RootCtTerm**](RootCtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

