# CdiscLibraryApi.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCdashVersionClassesClassDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassDomainsGet) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
[**mdrCdashVersionClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassFieldsFieldGet) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**mdrCdashVersionClassesClassGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassGet) | **GET** /mdr/cdash/{version}/classes/{class} | 
[**mdrCdashVersionClassesGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesGet) | **GET** /mdr/cdash/{version}/classes | 
[**mdrCdashVersionDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**mdrCdashVersionDomainsDomainFieldsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
[**mdrCdashVersionDomainsDomainGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainGet) | **GET** /mdr/cdash/{version}/domains/{domain} | 
[**mdrCdashVersionDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsGet) | **GET** /mdr/cdash/{version}/domains | 
[**mdrCdashVersionGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionGet) | **GET** /mdr/cdash/{version} | 
[**mdrRootCdashClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashClassesClassFieldsFieldGet) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**mdrRootCdashDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 



## mdrCdashVersionClassesClassDomainsGet

> CdashClassDomains mdrCdashVersionClassesClassDomainsGet(version, _class)



Get CDASH Class Domain List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
let version = "1-1"; // String | CDISC Library Product Version
let _class = "SpecialPurpose"; // String | CDASH Class Identifier
apiInstance.mdrCdashVersionClassesClassDomainsGet(version, _class, (error, data, response) => {
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
 **_class** | **String**| CDASH Class Identifier | 

### Return type

[**CdashClassDomains**](CdashClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionClassesClassFieldsFieldGet

> CdashClassField mdrCdashVersionClassesClassFieldsFieldGet(version, _class, field)



Get CDASH Class Field

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
let version = "1-1"; // String | CDISC Library Product Version
let _class = "Timing"; // String | CDASH Class Identifier
let field = "--DAT"; // String | CDASH Field Identifier
apiInstance.mdrCdashVersionClassesClassFieldsFieldGet(version, _class, field, (error, data, response) => {
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
 **_class** | **String**| CDASH Class Identifier | 
 **field** | **String**| CDASH Field Identifier | 

### Return type

[**CdashClassField**](CdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionClassesClassGet

> CdashClass mdrCdashVersionClassesClassGet(version, _class)



Get CDASH Class

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
let version = "1-1"; // String | CDISC Library Product Version
let _class = "Timing"; // String | CDASH Class Identifier
apiInstance.mdrCdashVersionClassesClassGet(version, _class, (error, data, response) => {
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
 **_class** | **String**| CDASH Class Identifier | 

### Return type

[**CdashClass**](CdashClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionClassesGet

> CdashProductClasses mdrCdashVersionClassesGet(version)



Get CDASH Class List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
let version = "1-1"; // String | CDISC Library Product Version
apiInstance.mdrCdashVersionClassesGet(version, (error, data, response) => {
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

[**CdashProductClasses**](CdashProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionDomainsDomainFieldsFieldGet

> CdashDomainField mdrCdashVersionDomainsDomainFieldsFieldGet(version, domain, field)



Get CDASH Domain Field

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
let version = "1-1"; // String | CDISC Library Product Version
let domain = "DM"; // String | CDASH Domain Identifier
let field = "AGE"; // String | CDASH Field Identifier
apiInstance.mdrCdashVersionDomainsDomainFieldsFieldGet(version, domain, field, (error, data, response) => {
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
 **domain** | **String**| CDASH Domain Identifier | 
 **field** | **String**| CDASH Field Identifier | 

### Return type

[**CdashDomainField**](CdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionDomainsDomainFieldsGet

> CdashDomainFields mdrCdashVersionDomainsDomainFieldsGet(version, domain)



Get CDASH Domain Field List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
let version = "1-1"; // String | CDISC Library Product Version
let domain = "DM"; // String | CDASH Domain Identifier
apiInstance.mdrCdashVersionDomainsDomainFieldsGet(version, domain, (error, data, response) => {
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
 **domain** | **String**| CDASH Domain Identifier | 

### Return type

[**CdashDomainFields**](CdashDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionDomainsDomainGet

> CdashDomain mdrCdashVersionDomainsDomainGet(version, domain)



Get CDASH Domain

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
let version = "1-1"; // String | CDISC Library Product Version
let domain = "DM"; // String | CDASH Domain Identifier
apiInstance.mdrCdashVersionDomainsDomainGet(version, domain, (error, data, response) => {
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
 **domain** | **String**| CDASH Domain Identifier | 

### Return type

[**CdashDomain**](CdashDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionDomainsGet

> CdashProductDomains mdrCdashVersionDomainsGet(version)



Get CDASH Domain List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
let version = "1-1"; // String | CDISC Library Product Version
apiInstance.mdrCdashVersionDomainsGet(version, (error, data, response) => {
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

[**CdashProductDomains**](CdashProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashVersionGet

> CdashProduct mdrCdashVersionGet(version)



Get CDASH Product

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
let version = "1-1"; // String | CDISC Library Product Version
apiInstance.mdrCdashVersionGet(version, (error, data, response) => {
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

[**CdashProduct**](CdashProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet


## mdrRootCdashClassesClassFieldsFieldGet

> RootCdashClassField mdrRootCdashClassesClassFieldsFieldGet(_class, field)



Get Root CDASH Class Field

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
let _class = "Timing"; // String | CDASH Class Identifier
let field = "--DAT"; // String | CDASH Field Identifier
apiInstance.mdrRootCdashClassesClassFieldsFieldGet(_class, field, (error, data, response) => {
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
 **_class** | **String**| CDASH Class Identifier | 
 **field** | **String**| CDASH Field Identifier | 

### Return type

[**RootCdashClassField**](RootCdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrRootCdashDomainsDomainFieldsFieldGet

> RootCdashDomainField mdrRootCdashDomainsDomainFieldsFieldGet(domain, field)



Get Root CDASH Domain Field

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
let domain = "DM"; // String | CDASH Domain Identifier
let field = "AGE"; // String | CDASH Field Identifier
apiInstance.mdrRootCdashDomainsDomainFieldsFieldGet(domain, field, (error, data, response) => {
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
 **domain** | **String**| CDASH Domain Identifier | 
 **field** | **String**| CDASH Field Identifier | 

### Return type

[**RootCdashDomainField**](RootCdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

