# CDASHImplementationGuideCDASHIGApi

All URIs are relative to *https://library.cdisc.org/api*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**mdrCdashigVersionClassesClassDomainsGet**](#mdrcdashigversionclassesclassdomainsget) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | |
|[**mdrCdashigVersionClassesClassGet**](#mdrcdashigversionclassesclassget) | **GET** /mdr/cdashig/{version}/classes/{class} | |
|[**mdrCdashigVersionClassesClassScenariosGet**](#mdrcdashigversionclassesclassscenariosget) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | |
|[**mdrCdashigVersionClassesGet**](#mdrcdashigversionclassesget) | **GET** /mdr/cdashig/{version}/classes | |
|[**mdrCdashigVersionDomainsDomainFieldsFieldGet**](#mdrcdashigversiondomainsdomainfieldsfieldget) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | |
|[**mdrCdashigVersionDomainsDomainFieldsGet**](#mdrcdashigversiondomainsdomainfieldsget) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | |
|[**mdrCdashigVersionDomainsDomainGet**](#mdrcdashigversiondomainsdomainget) | **GET** /mdr/cdashig/{version}/domains/{domain} | |
|[**mdrCdashigVersionDomainsGet**](#mdrcdashigversiondomainsget) | **GET** /mdr/cdashig/{version}/domains | |
|[**mdrCdashigVersionGet**](#mdrcdashigversionget) | **GET** /mdr/cdashig/{version} | |
|[**mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](#mdrcdashigversionscenariosdomainscenariofieldsfieldget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | |
|[**mdrCdashigVersionScenariosDomainScenarioFieldsGet**](#mdrcdashigversionscenariosdomainscenariofieldsget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | |
|[**mdrCdashigVersionScenariosDomainScenarioGet**](#mdrcdashigversionscenariosdomainscenarioget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | |
|[**mdrCdashigVersionScenariosGet**](#mdrcdashigversionscenariosget) | **GET** /mdr/cdashig/{version}/scenarios | |
|[**mdrRootCdashigDomainsDomainFieldsFieldGet**](#mdrrootcdashigdomainsdomainfieldsfieldget) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | |
|[**mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](#mdrrootcdashigscenariosdomainscenariofieldsfieldget) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | |

# **mdrCdashigVersionClassesClassDomainsGet**
> CdashigClassDomains mdrCdashigVersionClassesClassDomainsGet()

Get CDASHIG Class Domain List

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //CDASHIG Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionClassesClassDomainsGet(
    version,
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | CDASHIG Class Identifier | defaults to undefined|


### Return type

**CdashigClassDomains**

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

# **mdrCdashigVersionClassesClassGet**
> CdashigClass mdrCdashigVersionClassesClassGet()

Get CDASHIG Class

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //CDASHIG Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionClassesClassGet(
    version,
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | CDASHIG Class Identifier | defaults to undefined|


### Return type

**CdashigClass**

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

# **mdrCdashigVersionClassesClassScenariosGet**
> CdashigClassScenarios mdrCdashigVersionClassesClassScenariosGet()

Get CDASHIG Class Scenario List

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //CDASHIG Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionClassesClassScenariosGet(
    version,
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | CDASHIG Class Identifier | defaults to undefined|


### Return type

**CdashigClassScenarios**

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

# **mdrCdashigVersionClassesGet**
> CdashigProductClasses mdrCdashigVersionClassesGet()

Get CDASHIG Class List

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionClassesGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**CdashigProductClasses**

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

# **mdrCdashigVersionDomainsDomainFieldsFieldGet**
> CdashigDomainField mdrCdashigVersionDomainsDomainFieldsFieldGet()

Get CDASHIG Domain Field

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let domain: string; //CDASHIG Domain Identifier (default to undefined)
let field: string; //CDASHIG Field Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionDomainsDomainFieldsFieldGet(
    version,
    domain,
    field
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **domain** | [**string**] | CDASHIG Domain Identifier | defaults to undefined|
| **field** | [**string**] | CDASHIG Field Identifier | defaults to undefined|


### Return type

**CdashigDomainField**

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

# **mdrCdashigVersionDomainsDomainFieldsGet**
> CdashigDomainFields mdrCdashigVersionDomainsDomainFieldsGet()

Get CDASHIG Domain Field List

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let domain: string; //CDASHIG Domain Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionDomainsDomainFieldsGet(
    version,
    domain
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **domain** | [**string**] | CDASHIG Domain Identifier | defaults to undefined|


### Return type

**CdashigDomainFields**

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

# **mdrCdashigVersionDomainsDomainGet**
> CdashigDomain mdrCdashigVersionDomainsDomainGet()

Get CDASHIG Domain

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let domain: string; //CDASHIG Domain Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionDomainsDomainGet(
    version,
    domain
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **domain** | [**string**] | CDASHIG Domain Identifier | defaults to undefined|


### Return type

**CdashigDomain**

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

# **mdrCdashigVersionDomainsGet**
> CdashigProductDomains mdrCdashigVersionDomainsGet()

Get CDASHIG Domain List

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionDomainsGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**CdashigProductDomains**

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

# **mdrCdashigVersionGet**
> CdashigProduct mdrCdashigVersionGet()

Get CDASHIG Product

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**CdashigProduct**

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

# **mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**
> CdashigScenarioField mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet()

Get CDASHIG Scenario Field

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let domain: string; //CDASHIG Domain Identifier (default to undefined)
let scenario: string; //CDASHIG Scenario Identifier (default to undefined)
let field: string; //CDASHIG Field Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(
    version,
    domain,
    scenario,
    field
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **domain** | [**string**] | CDASHIG Domain Identifier | defaults to undefined|
| **scenario** | [**string**] | CDASHIG Scenario Identifier | defaults to undefined|
| **field** | [**string**] | CDASHIG Field Identifier | defaults to undefined|


### Return type

**CdashigScenarioField**

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

# **mdrCdashigVersionScenariosDomainScenarioFieldsGet**
> CdashigScenarioFields mdrCdashigVersionScenariosDomainScenarioFieldsGet()

Get CDASHIG Scenario Field List

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let domain: string; //CDASHIG Domain Identifier (default to undefined)
let scenario: string; //CDASHIG Scenario Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionScenariosDomainScenarioFieldsGet(
    version,
    domain,
    scenario
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **domain** | [**string**] | CDASHIG Domain Identifier | defaults to undefined|
| **scenario** | [**string**] | CDASHIG Scenario Identifier | defaults to undefined|


### Return type

**CdashigScenarioFields**

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

# **mdrCdashigVersionScenariosDomainScenarioGet**
> CdashigScenario mdrCdashigVersionScenariosDomainScenarioGet()

Get CDASHIG Scenario

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let domain: string; //CDASHIG Domain Identifier (default to undefined)
let scenario: string; //CDASHIG Scenario Identifier (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionScenariosDomainScenarioGet(
    version,
    domain,
    scenario
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **domain** | [**string**] | CDASHIG Domain Identifier | defaults to undefined|
| **scenario** | [**string**] | CDASHIG Scenario Identifier | defaults to undefined|


### Return type

**CdashigScenario**

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

# **mdrCdashigVersionScenariosGet**
> CdashigProductScenarios mdrCdashigVersionScenariosGet()

Get CDASHIG Scenario List

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrCdashigVersionScenariosGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**CdashigProductScenarios**

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

# **mdrRootCdashigDomainsDomainFieldsFieldGet**
> RootCdashigDomainField mdrRootCdashigDomainsDomainFieldsFieldGet()

Get Root CDASHIG Domain Field

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let domain: string; //CDASHIG Domain Identifier (default to undefined)
let field: string; //CDASHIG Field Identifier (default to undefined)

const { status, data } = await apiInstance.mdrRootCdashigDomainsDomainFieldsFieldGet(
    domain,
    field
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **domain** | [**string**] | CDASHIG Domain Identifier | defaults to undefined|
| **field** | [**string**] | CDASHIG Field Identifier | defaults to undefined|


### Return type

**RootCdashigDomainField**

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

# **mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**
> RootCdashigScenarioField mdrRootCdashigScenariosDomainScenarioFieldsFieldGet()

Get Root CDASHIG Scenario Field

### Example

```typescript
import {
    CDASHImplementationGuideCDASHIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CDASHImplementationGuideCDASHIGApi(configuration);

let domain: string; //CDASHIG Domain Identifier (default to undefined)
let scenario: string; //CDASHIG Scenario Identifier (default to undefined)
let field: string; //CDASHIG Field Identifier (default to undefined)

const { status, data } = await apiInstance.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(
    domain,
    scenario,
    field
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **domain** | [**string**] | CDASHIG Domain Identifier | defaults to undefined|
| **scenario** | [**string**] | CDASHIG Scenario Identifier | defaults to undefined|
| **field** | [**string**] | CDASHIG Field Identifier | defaults to undefined|


### Return type

**RootCdashigScenarioField**

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

