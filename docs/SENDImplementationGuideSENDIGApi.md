# SENDImplementationGuideSENDIGApi

All URIs are relative to *https://library.cdisc.org/api*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**mdrRootSendigDatasetsDatasetVariablesVarGet**](#mdrrootsendigdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | |
|[**mdrSendigVersionClassesClassDatasetsGet**](#mdrsendigversionclassesclassdatasetsget) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | |
|[**mdrSendigVersionClassesClassGet**](#mdrsendigversionclassesclassget) | **GET** /mdr/sendig/{version}/classes/{class} | |
|[**mdrSendigVersionClassesGet**](#mdrsendigversionclassesget) | **GET** /mdr/sendig/{version}/classes | |
|[**mdrSendigVersionDatasetsDatasetGet**](#mdrsendigversiondatasetsdatasetget) | **GET** /mdr/sendig/{version}/datasets/{dataset} | |
|[**mdrSendigVersionDatasetsDatasetVariablesGet**](#mdrsendigversiondatasetsdatasetvariablesget) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | |
|[**mdrSendigVersionDatasetsDatasetVariablesVarGet**](#mdrsendigversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | |
|[**mdrSendigVersionDatasetsGet**](#mdrsendigversiondatasetsget) | **GET** /mdr/sendig/{version}/datasets | |
|[**mdrSendigVersionGet**](#mdrsendigversionget) | **GET** /mdr/sendig/{version} | |

# **mdrRootSendigDatasetsDatasetVariablesVarGet**
> RootSendigDatasetVariable mdrRootSendigDatasetsDatasetVariablesVarGet()

Get Root SENDIG Dataset Variable

### Example

```typescript
import {
    SENDImplementationGuideSENDIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SENDImplementationGuideSENDIGApi(configuration);

let dataset: string; //SENDIG Dataset Identifier (default to undefined)
let _var: string; //SENDIG Variable Identifier (default to undefined)

const { status, data } = await apiInstance.mdrRootSendigDatasetsDatasetVariablesVarGet(
    dataset,
    _var
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **dataset** | [**string**] | SENDIG Dataset Identifier | defaults to undefined|
| **_var** | [**string**] | SENDIG Variable Identifier | defaults to undefined|


### Return type

**RootSendigDatasetVariable**

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

# **mdrSendigVersionClassesClassDatasetsGet**
> SendigClassDatasets mdrSendigVersionClassesClassDatasetsGet()

Get SENDIG Class Dataset List

### Example

```typescript
import {
    SENDImplementationGuideSENDIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SENDImplementationGuideSENDIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //SENDIG Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSendigVersionClassesClassDatasetsGet(
    version,
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | SENDIG Class Identifier | defaults to undefined|


### Return type

**SendigClassDatasets**

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

# **mdrSendigVersionClassesClassGet**
> SendigClass mdrSendigVersionClassesClassGet()

Get SENDIG Class

### Example

```typescript
import {
    SENDImplementationGuideSENDIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SENDImplementationGuideSENDIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //SENDIG Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSendigVersionClassesClassGet(
    version,
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | SENDIG Class Identifier | defaults to undefined|


### Return type

**SendigClass**

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

# **mdrSendigVersionClassesGet**
> SendigClasses mdrSendigVersionClassesGet()

Get SENDIG Class List

### Example

```typescript
import {
    SENDImplementationGuideSENDIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SENDImplementationGuideSENDIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrSendigVersionClassesGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**SendigClasses**

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

# **mdrSendigVersionDatasetsDatasetGet**
> SendigDataset mdrSendigVersionDatasetsDatasetGet()

Get SENDIG Dataset

### Example

```typescript
import {
    SENDImplementationGuideSENDIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SENDImplementationGuideSENDIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let dataset: string; //SENDIG Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSendigVersionDatasetsDatasetGet(
    version,
    dataset
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **dataset** | [**string**] | SENDIG Class Identifier | defaults to undefined|


### Return type

**SendigDataset**

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

# **mdrSendigVersionDatasetsDatasetVariablesGet**
> SendigDatasetVariables mdrSendigVersionDatasetsDatasetVariablesGet()

Get SENDIG Dataset Variable List

### Example

```typescript
import {
    SENDImplementationGuideSENDIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SENDImplementationGuideSENDIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let dataset: string; //SENDIG Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSendigVersionDatasetsDatasetVariablesGet(
    version,
    dataset
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **dataset** | [**string**] | SENDIG Class Identifier | defaults to undefined|


### Return type

**SendigDatasetVariables**

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

# **mdrSendigVersionDatasetsDatasetVariablesVarGet**
> SendigDatasetVariable mdrSendigVersionDatasetsDatasetVariablesVarGet()

Get SENDIG Dataset Variable

### Example

```typescript
import {
    SENDImplementationGuideSENDIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SENDImplementationGuideSENDIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let dataset: string; //SENDIG Class Identifier (default to undefined)
let _var: string; //SENDIG Variable Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSendigVersionDatasetsDatasetVariablesVarGet(
    version,
    dataset,
    _var
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **dataset** | [**string**] | SENDIG Class Identifier | defaults to undefined|
| **_var** | [**string**] | SENDIG Variable Identifier | defaults to undefined|


### Return type

**SendigDatasetVariable**

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

# **mdrSendigVersionDatasetsGet**
> SendigDatasets mdrSendigVersionDatasetsGet()

Get SENDIG Dataset List

### Example

```typescript
import {
    SENDImplementationGuideSENDIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SENDImplementationGuideSENDIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrSendigVersionDatasetsGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**SendigDatasets**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv


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

# **mdrSendigVersionGet**
> SendigProduct mdrSendigVersionGet()

Get SENDIG product

### Example

```typescript
import {
    SENDImplementationGuideSENDIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SENDImplementationGuideSENDIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrSendigVersionGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**SendigProduct**

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

