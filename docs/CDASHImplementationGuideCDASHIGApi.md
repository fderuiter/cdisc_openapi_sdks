# CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCdashigVersionClassesClassDomainsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassDomainsGet) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | 
[**mdrCdashigVersionClassesClassGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassGet) | **GET** /mdr/cdashig/{version}/classes/{class} | 
[**mdrCdashigVersionClassesClassScenariosGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassScenariosGet) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | 
[**mdrCdashigVersionClassesGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesGet) | **GET** /mdr/cdashig/{version}/classes | 
[**mdrCdashigVersionDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
[**mdrCdashigVersionDomainsDomainFieldsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainFieldsGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | 
[**mdrCdashigVersionDomainsDomainGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainGet) | **GET** /mdr/cdashig/{version}/domains/{domain} | 
[**mdrCdashigVersionDomainsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsGet) | **GET** /mdr/cdashig/{version}/domains | 
[**mdrCdashigVersionGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionGet) | **GET** /mdr/cdashig/{version} | 
[**mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
[**mdrCdashigVersionScenariosDomainScenarioFieldsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioFieldsGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
[**mdrCdashigVersionScenariosDomainScenarioGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
[**mdrCdashigVersionScenariosGet**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosGet) | **GET** /mdr/cdashig/{version}/scenarios | 
[**mdrRootCdashigDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrRootCdashigDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
[**mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrRootCdashigScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 



## mdrCdashigVersionClassesClassDomainsGet

> CdashigClassDomains mdrCdashigVersionClassesClassDomainsGet(version, _class)



Get CDASHIG Class Domain List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
let _class = "Findings"; // String | CDASHIG Class Identifier
apiInstance.mdrCdashigVersionClassesClassDomainsGet(version, _class, (error, data, response) => {
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
 **_class** | **String**| CDASHIG Class Identifier | 

### Return type

[**CdashigClassDomains**](CdashigClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionClassesClassGet

> CdashigClass mdrCdashigVersionClassesClassGet(version, _class)



Get CDASHIG Class

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
let _class = "Findings"; // String | CDASHIG Class Identifier
apiInstance.mdrCdashigVersionClassesClassGet(version, _class, (error, data, response) => {
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
 **_class** | **String**| CDASHIG Class Identifier | 

### Return type

[**CdashigClass**](CdashigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionClassesClassScenariosGet

> CdashigClassScenarios mdrCdashigVersionClassesClassScenariosGet(version, _class)



Get CDASHIG Class Scenario List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
let _class = "Findings"; // String | CDASHIG Class Identifier
apiInstance.mdrCdashigVersionClassesClassScenariosGet(version, _class, (error, data, response) => {
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
 **_class** | **String**| CDASHIG Class Identifier | 

### Return type

[**CdashigClassScenarios**](CdashigClassScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionClassesGet

> CdashigProductClasses mdrCdashigVersionClassesGet(version)



Get CDASHIG Class List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
apiInstance.mdrCdashigVersionClassesGet(version, (error, data, response) => {
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

[**CdashigProductClasses**](CdashigProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionDomainsDomainFieldsFieldGet

> CdashigDomainField mdrCdashigVersionDomainsDomainFieldsFieldGet(version, domain, field)



Get CDASHIG Domain Field

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
let domain = "VS"; // String | CDASHIG Domain Identifier
let field = "VSDAT"; // String | CDASHIG Field Identifier
apiInstance.mdrCdashigVersionDomainsDomainFieldsFieldGet(version, domain, field, (error, data, response) => {
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
 **domain** | **String**| CDASHIG Domain Identifier | 
 **field** | **String**| CDASHIG Field Identifier | 

### Return type

[**CdashigDomainField**](CdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionDomainsDomainFieldsGet

> CdashigDomainFields mdrCdashigVersionDomainsDomainFieldsGet(version, domain)



Get CDASHIG Domain Field List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
let domain = "VS"; // String | CDASHIG Domain Identifier
apiInstance.mdrCdashigVersionDomainsDomainFieldsGet(version, domain, (error, data, response) => {
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
 **domain** | **String**| CDASHIG Domain Identifier | 

### Return type

[**CdashigDomainFields**](CdashigDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionDomainsDomainGet

> CdashigDomain mdrCdashigVersionDomainsDomainGet(version, domain)



Get CDASHIG Domain

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
let domain = "VS"; // String | CDASHIG Domain Identifier
apiInstance.mdrCdashigVersionDomainsDomainGet(version, domain, (error, data, response) => {
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
 **domain** | **String**| CDASHIG Domain Identifier | 

### Return type

[**CdashigDomain**](CdashigDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionDomainsGet

> CdashigProductDomains mdrCdashigVersionDomainsGet(version)



Get CDASHIG Domain List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
apiInstance.mdrCdashigVersionDomainsGet(version, (error, data, response) => {
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

[**CdashigProductDomains**](CdashigProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionGet

> CdashigProduct mdrCdashigVersionGet(version)



Get CDASHIG Product

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
apiInstance.mdrCdashigVersionGet(version, (error, data, response) => {
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

[**CdashigProduct**](CdashigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet


## mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet

> CdashigScenarioField mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version, domain, scenario, field)



Get CDASHIG Scenario Field

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
let domain = "VS"; // String | CDASHIG Domain Identifier
let scenario = "Generic"; // String | CDASHIG Scenario Identifier
let field = "VSDAT"; // String | CDASHIG Field Identifier
apiInstance.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version, domain, scenario, field, (error, data, response) => {
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
 **domain** | **String**| CDASHIG Domain Identifier | 
 **scenario** | **String**| CDASHIG Scenario Identifier | 
 **field** | **String**| CDASHIG Field Identifier | 

### Return type

[**CdashigScenarioField**](CdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionScenariosDomainScenarioFieldsGet

> CdashigScenarioFields mdrCdashigVersionScenariosDomainScenarioFieldsGet(version, domain, scenario)



Get CDASHIG Scenario Field List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
let domain = "VS"; // String | CDASHIG Domain Identifier
let scenario = "HorizontalGeneric"; // String | CDASHIG Scenario Identifier
apiInstance.mdrCdashigVersionScenariosDomainScenarioFieldsGet(version, domain, scenario, (error, data, response) => {
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
 **domain** | **String**| CDASHIG Domain Identifier | 
 **scenario** | **String**| CDASHIG Scenario Identifier | 

### Return type

[**CdashigScenarioFields**](CdashigScenarioFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionScenariosDomainScenarioGet

> CdashigScenario mdrCdashigVersionScenariosDomainScenarioGet(version, domain, scenario)



Get CDASHIG Scenario

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
let domain = "VS"; // String | CDASHIG Domain Identifier
let scenario = "HorizontalGeneric"; // String | CDASHIG Scenario Identifier
apiInstance.mdrCdashigVersionScenariosDomainScenarioGet(version, domain, scenario, (error, data, response) => {
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
 **domain** | **String**| CDASHIG Domain Identifier | 
 **scenario** | **String**| CDASHIG Scenario Identifier | 

### Return type

[**CdashigScenario**](CdashigScenario.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrCdashigVersionScenariosGet

> CdashigProductScenarios mdrCdashigVersionScenariosGet(version)



Get CDASHIG Scenario List

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let version = "2-1"; // String | CDISC Library Product Version
apiInstance.mdrCdashigVersionScenariosGet(version, (error, data, response) => {
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

[**CdashigProductScenarios**](CdashigProductScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrRootCdashigDomainsDomainFieldsFieldGet

> RootCdashigDomainField mdrRootCdashigDomainsDomainFieldsFieldGet(domain, field)



Get Root CDASHIG Domain Field

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let domain = "VS"; // String | CDASHIG Domain Identifier
let field = "VSDAT"; // String | CDASHIG Field Identifier
apiInstance.mdrRootCdashigDomainsDomainFieldsFieldGet(domain, field, (error, data, response) => {
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
 **domain** | **String**| CDASHIG Domain Identifier | 
 **field** | **String**| CDASHIG Field Identifier | 

### Return type

[**RootCdashigDomainField**](RootCdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrRootCdashigScenariosDomainScenarioFieldsFieldGet

> RootCdashigScenarioField mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain, scenario, field)



Get Root CDASHIG Scenario Field

### Example

```javascript
import CdiscLibraryApi from 'cdisc_library_api';
let defaultClient = CdiscLibraryApi.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new CdiscLibraryApi.CDASHImplementationGuideCDASHIGApi();
let domain = "VS"; // String | CDASHIG Domain Identifier
let scenario = "Generic"; // String | CDASHIG Scenario Identifier
let field = "VSDAT"; // String | CDASHIG Field Identifier
apiInstance.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain, scenario, field, (error, data, response) => {
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
 **domain** | **String**| CDASHIG Domain Identifier | 
 **scenario** | **String**| CDASHIG Scenario Identifier | 
 **field** | **String**| CDASHIG Field Identifier | 

### Return type

[**RootCdashigScenarioField**](RootCdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

