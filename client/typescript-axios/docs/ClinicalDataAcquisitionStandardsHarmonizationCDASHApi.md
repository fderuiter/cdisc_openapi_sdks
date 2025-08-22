# ClinicalDataAcquisitionStandardsHarmonizationCDASHApi

All URIs are relative to *https://library.cdisc.org/api*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**mdrCdashVersionClassesClassDomainsGet**](#mdrcdashversionclassesclassdomainsget) | **GET** /mdr/cdash/{version}/classes/{class}/domains | |
|[**mdrCdashVersionClassesClassFieldsFieldGet**](#mdrcdashversionclassesclassfieldsfieldget) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | |
|[**mdrCdashVersionClassesClassGet**](#mdrcdashversionclassesclassget) | **GET** /mdr/cdash/{version}/classes/{class} | |
|[**mdrCdashVersionClassesGet**](#mdrcdashversionclassesget) | **GET** /mdr/cdash/{version}/classes | |
|[**mdrCdashVersionDomainsDomainFieldsFieldGet**](#mdrcdashversiondomainsdomainfieldsfieldget) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | |
|[**mdrCdashVersionDomainsDomainFieldsGet**](#mdrcdashversiondomainsdomainfieldsget) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | |
|[**mdrCdashVersionDomainsDomainGet**](#mdrcdashversiondomainsdomainget) | **GET** /mdr/cdash/{version}/domains/{domain} | |
|[**mdrCdashVersionDomainsGet**](#mdrcdashversiondomainsget) | **GET** /mdr/cdash/{version}/domains | |
|[**mdrCdashVersionGet**](#mdrcdashversionget) | **GET** /mdr/cdash/{version} | |
|[**mdrRootCdashClassesClassFieldsFieldGet**](#mdrrootcdashclassesclassfieldsfieldget) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | |
|[**mdrRootCdashDomainsDomainFieldsFieldGet**](#mdrrootcdashdomainsdomainfieldsfieldget) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | |

# **mdrCdashVersionClassesClassDomainsGet**
> CdashClassDomains mdrCdashVersionClassesClassDomainsGet()

Get CDASH Class Domain List

### Example

```typescript
import {
    ClinicalDataAcquisitionStandardsHarmonizationCDASHApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //CDASH Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashVersionClassesClassDomainsGet(
    version,
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | CDASH Class Identifier | defaults to undefined|


### Return type

**CdashClassDomains**

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

# **mdrCdashVersionClassesClassFieldsFieldGet**
> CdashClassField mdrCdashVersionClassesClassFieldsFieldGet()

Get CDASH Class Field

### Example

```typescript
import {
    ClinicalDataAcquisitionStandardsHarmonizationCDASHApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //CDASH Class Identifier (default to undefined)
let field: string; //CDASH Field Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashVersionClassesClassFieldsFieldGet(
    version,
    _class,
    field
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | CDASH Class Identifier | defaults to undefined|
| **field** | [**string**] | CDASH Field Identifier | defaults to undefined|


### Return type

**CdashClassField**

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

# **mdrCdashVersionClassesClassGet**
> CdashClass mdrCdashVersionClassesClassGet()

Get CDASH Class

### Example

```typescript
import {
    ClinicalDataAcquisitionStandardsHarmonizationCDASHApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //CDASH Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashVersionClassesClassGet(
    version,
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | CDASH Class Identifier | defaults to undefined|


### Return type

**CdashClass**

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

# **mdrCdashVersionClassesGet**
> CdashProductClasses mdrCdashVersionClassesGet()

Get CDASH Class List

### Example

```typescript
import {
    ClinicalDataAcquisitionStandardsHarmonizationCDASHApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrCdashVersionClassesGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**CdashProductClasses**

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

# **mdrCdashVersionDomainsDomainFieldsFieldGet**
> CdashDomainField mdrCdashVersionDomainsDomainFieldsFieldGet()

Get CDASH Domain Field

### Example

```typescript
import {
    ClinicalDataAcquisitionStandardsHarmonizationCDASHApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let domain: string; //CDASH Domain Identifier (default to undefined)
let field: string; //CDASH Field Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashVersionDomainsDomainFieldsFieldGet(
    version,
    domain,
    field
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **domain** | [**string**] | CDASH Domain Identifier | defaults to undefined|
| **field** | [**string**] | CDASH Field Identifier | defaults to undefined|


### Return type

**CdashDomainField**

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

# **mdrCdashVersionDomainsDomainFieldsGet**
> CdashDomainFields mdrCdashVersionDomainsDomainFieldsGet()

Get CDASH Domain Field List

### Example

```typescript
import {
    ClinicalDataAcquisitionStandardsHarmonizationCDASHApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let domain: string; //CDASH Domain Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashVersionDomainsDomainFieldsGet(
    version,
    domain
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **domain** | [**string**] | CDASH Domain Identifier | defaults to undefined|


### Return type

**CdashDomainFields**

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

# **mdrCdashVersionDomainsDomainGet**
> CdashDomain mdrCdashVersionDomainsDomainGet()

Get CDASH Domain

### Example

```typescript
import {
    ClinicalDataAcquisitionStandardsHarmonizationCDASHApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let domain: string; //CDASH Domain Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashVersionDomainsDomainGet(
    version,
    domain
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **domain** | [**string**] | CDASH Domain Identifier | defaults to undefined|


### Return type

**CdashDomain**

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

# **mdrCdashVersionDomainsGet**
> CdashProductDomains mdrCdashVersionDomainsGet()

Get CDASH Domain List

### Example

```typescript
import {
    ClinicalDataAcquisitionStandardsHarmonizationCDASHApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrCdashVersionDomainsGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**CdashProductDomains**

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

# **mdrCdashVersionGet**
> CdashProduct mdrCdashVersionGet()

Get CDASH Product

### Example

```typescript
import {
    ClinicalDataAcquisitionStandardsHarmonizationCDASHApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrCdashVersionGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**CdashProduct**

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

# **mdrRootCdashClassesClassFieldsFieldGet**
> RootCdashClassField mdrRootCdashClassesClassFieldsFieldGet()

Get Root CDASH Class Field

### Example

```typescript
import {
    ClinicalDataAcquisitionStandardsHarmonizationCDASHApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(configuration);

let _class: string; //CDASH Class Identifier (default to undefined)
let field: string; //CDASH Field Identifier (default to undefined)

const { status, data } = await apiInstance.mdrRootCdashClassesClassFieldsFieldGet(
    _class,
    field
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **_class** | [**string**] | CDASH Class Identifier | defaults to undefined|
| **field** | [**string**] | CDASH Field Identifier | defaults to undefined|


### Return type

**RootCdashClassField**

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

# **mdrRootCdashDomainsDomainFieldsFieldGet**
> RootCdashDomainField mdrRootCdashDomainsDomainFieldsFieldGet()

Get Root CDASH Domain Field

### Example

```typescript
import {
    ClinicalDataAcquisitionStandardsHarmonizationCDASHApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(configuration);

let domain: string; //CDASH Domain Identifier (default to undefined)
let field: string; //CDASH Field Identifier (default to undefined)

const { status, data } = await apiInstance.mdrRootCdashDomainsDomainFieldsFieldGet(
    domain,
    field
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **domain** | [**string**] | CDASH Domain Identifier | defaults to undefined|
| **field** | [**string**] | CDASH Field Identifier | defaults to undefined|


### Return type

**RootCdashDomainField**

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

