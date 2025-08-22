# ControlledTerminologyCTApi

All URIs are relative to *https://library.cdisc.org/api*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**mdrCtPackagesGet**](#mdrctpackagesget) | **GET** /mdr/ct/packages | |
|[**mdrCtPackagesPackageCodelistsCodelistGet**](#mdrctpackagespackagecodelistscodelistget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | |
|[**mdrCtPackagesPackageCodelistsCodelistTermsGet**](#mdrctpackagespackagecodelistscodelisttermsget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | |
|[**mdrCtPackagesPackageCodelistsCodelistTermsTermGet**](#mdrctpackagespackagecodelistscodelisttermstermget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | |
|[**mdrCtPackagesPackageCodelistsGet**](#mdrctpackagespackagecodelistsget) | **GET** /mdr/ct/packages/{package}/codelists | |
|[**mdrCtPackagesProductGet**](#mdrctpackagesproductget) | **GET** /mdr/ct/packages/{product} | |
|[**mdrRootCtProductGroupCodelistsCodelistGet**](#mdrrootctproductgroupcodelistscodelistget) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | |
|[**mdrRootCtProductGroupCodelistsCodelistTermsTermGet**](#mdrrootctproductgroupcodelistscodelisttermstermget) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | |

# **mdrCtPackagesGet**
> CtPackages mdrCtPackagesGet()

Get CDISC Library CT Package List

### Example

```typescript
import {
    ControlledTerminologyCTApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ControlledTerminologyCTApi(configuration);

const { status, data } = await apiInstance.mdrCtPackagesGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**CtPackages**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |
|**400** | Bad Request |  -  |
|**401** | Unauthorized |  -  |
|**403** | Forbidden |  -  |
|**404** | Not Found |  -  |
|**405** | Method Not Allowed |  -  |
|**406** | Not Acceptable |  -  |
|**500** | Internal Server Error |  -  |
|**503** | Service Unavailable |  -  |
|**504** | Gateway Timeout Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsCodelistGet**
> CtCodelist mdrCtPackagesPackageCodelistsCodelistGet()

Get CDISC Library CT Package Codelist

### Example

```typescript
import {
    ControlledTerminologyCTApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ControlledTerminologyCTApi(configuration);

let _package: string; //CT Package Identifier (default to undefined)
let codelist: string; //CT Codelist Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCtPackagesPackageCodelistsCodelistGet(
    _package,
    codelist
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **_package** | [**string**] | CT Package Identifier | defaults to undefined|
| **codelist** | [**string**] | CT Codelist Identifier | defaults to undefined|


### Return type

**CtCodelist**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |
|**400** | Bad Request |  -  |
|**401** | Unauthorized |  -  |
|**403** | Forbidden |  -  |
|**404** | Not Found |  -  |
|**405** | Method Not Allowed |  -  |
|**406** | Not Acceptable |  -  |
|**500** | Internal Server Error |  -  |
|**503** | Service Unavailable |  -  |
|**504** | Gateway Timeout Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsCodelistTermsGet**
> CtCodelistTerms mdrCtPackagesPackageCodelistsCodelistTermsGet()

Get CDISC Library CT Package Codelist Term List

### Example

```typescript
import {
    ControlledTerminologyCTApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ControlledTerminologyCTApi(configuration);

let _package: string; //CT Package Identifier (default to undefined)
let codelist: string; //CT Codelist Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCtPackagesPackageCodelistsCodelistTermsGet(
    _package,
    codelist
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **_package** | [**string**] | CT Package Identifier | defaults to undefined|
| **codelist** | [**string**] | CT Codelist Identifier | defaults to undefined|


### Return type

**CtCodelistTerms**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |
|**400** | Bad Request |  -  |
|**401** | Unauthorized |  -  |
|**403** | Forbidden |  -  |
|**404** | Not Found |  -  |
|**405** | Method Not Allowed |  -  |
|**406** | Not Acceptable |  -  |
|**500** | Internal Server Error |  -  |
|**503** | Service Unavailable |  -  |
|**504** | Gateway Timeout Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsCodelistTermsTermGet**
> CtTerm mdrCtPackagesPackageCodelistsCodelistTermsTermGet()

Get CDISC Library CT Package Codelist Term

### Example

```typescript
import {
    ControlledTerminologyCTApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ControlledTerminologyCTApi(configuration);

let _package: string; //CT Package Product Identifier (default to undefined)
let codelist: string; //CT Codelist Identifier (default to undefined)
let term: string; //CT Codelist Term Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(
    _package,
    codelist,
    term
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **_package** | [**string**] | CT Package Product Identifier | defaults to undefined|
| **codelist** | [**string**] | CT Codelist Identifier | defaults to undefined|
| **term** | [**string**] | CT Codelist Term Identifier | defaults to undefined|


### Return type

**CtTerm**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |
|**400** | Bad Request |  -  |
|**401** | Unauthorized |  -  |
|**403** | Forbidden |  -  |
|**404** | Not Found |  -  |
|**405** | Method Not Allowed |  -  |
|**406** | Not Acceptable |  -  |
|**500** | Internal Server Error |  -  |
|**503** | Service Unavailable |  -  |
|**504** | Gateway Timeout Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsGet**
> CtPackageCodelists mdrCtPackagesPackageCodelistsGet()

Get CDISC Library CT Package Codelist List

### Example

```typescript
import {
    ControlledTerminologyCTApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ControlledTerminologyCTApi(configuration);

let _package: string; //CT Package Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCtPackagesPackageCodelistsGet(
    _package
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **_package** | [**string**] | CT Package Identifier | defaults to undefined|


### Return type

**CtPackageCodelists**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |
|**400** | Bad Request |  -  |
|**401** | Unauthorized |  -  |
|**403** | Forbidden |  -  |
|**404** | Not Found |  -  |
|**405** | Method Not Allowed |  -  |
|**406** | Not Acceptable |  -  |
|**500** | Internal Server Error |  -  |
|**503** | Service Unavailable |  -  |
|**504** | Gateway Timeout Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesProductGet**
> CtPackage mdrCtPackagesProductGet()

Get CDISC Library CT Package

### Example

```typescript
import {
    ControlledTerminologyCTApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ControlledTerminologyCTApi(configuration);

let product: string; //CT Package Product Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCtPackagesProductGet(
    product
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **product** | [**string**] | CT Package Product Identifier | defaults to undefined|


### Return type

**CtPackage**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |
|**400** | Bad Request |  -  |
|**401** | Unauthorized |  -  |
|**403** | Forbidden |  -  |
|**404** | Not Found |  -  |
|**405** | Method Not Allowed |  -  |
|**406** | Not Acceptable |  -  |
|**500** | Internal Server Error |  -  |
|**503** | Service Unavailable |  -  |
|**504** | Gateway Timeout Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCtProductGroupCodelistsCodelistGet**
> RootCtCodelist mdrRootCtProductGroupCodelistsCodelistGet()

Get CDISC Library Root CT Codelist

### Example

```typescript
import {
    ControlledTerminologyCTApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ControlledTerminologyCTApi(configuration);

let productGroup: string; //CT Product Group Identifier (default to undefined)
let codelist: string; //CT Codelist Identifier (default to undefined)

const { status, data } = await apiInstance.mdrRootCtProductGroupCodelistsCodelistGet(
    productGroup,
    codelist
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **productGroup** | [**string**] | CT Product Group Identifier | defaults to undefined|
| **codelist** | [**string**] | CT Codelist Identifier | defaults to undefined|


### Return type

**RootCtCodelist**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |
|**400** | Bad Request |  -  |
|**401** | Unauthorized |  -  |
|**403** | Forbidden |  -  |
|**404** | Not Found |  -  |
|**405** | Method Not Allowed |  -  |
|**406** | Not Acceptable |  -  |
|**500** | Internal Server Error |  -  |
|**503** | Service Unavailable |  -  |
|**504** | Gateway Timeout Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCtProductGroupCodelistsCodelistTermsTermGet**
> RootCtTerm mdrRootCtProductGroupCodelistsCodelistTermsTermGet()

Get CDISC Library Root CT Term

### Example

```typescript
import {
    ControlledTerminologyCTApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ControlledTerminologyCTApi(configuration);

let productGroup: string; //CT Product Group Identifier (default to undefined)
let codelist: string; //CT Codelist Identifier (default to undefined)
let term: string; //CT Codelist Term Identifier (default to undefined)

const { status, data } = await apiInstance.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(
    productGroup,
    codelist,
    term
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **productGroup** | [**string**] | CT Product Group Identifier | defaults to undefined|
| **codelist** | [**string**] | CT Codelist Identifier | defaults to undefined|
| **term** | [**string**] | CT Codelist Term Identifier | defaults to undefined|


### Return type

**RootCtTerm**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |
|**400** | Bad Request |  -  |
|**401** | Unauthorized |  -  |
|**403** | Forbidden |  -  |
|**404** | Not Found |  -  |
|**405** | Method Not Allowed |  -  |
|**406** | Not Acceptable |  -  |
|**500** | Internal Server Error |  -  |
|**503** | Service Unavailable |  -  |
|**504** | Gateway Timeout Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

