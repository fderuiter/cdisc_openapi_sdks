# SDTMImplementationGuideSDTMIGApi

All URIs are relative to *https://library.cdisc.org/api*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**mdrRootSdtmigDatasetsDatasetVariablesVarGet**](#mdrrootsdtmigdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | |
|[**mdrSdtmigVersionClassesClassDatasetsGet**](#mdrsdtmigversionclassesclassdatasetsget) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | |
|[**mdrSdtmigVersionClassesClassGet**](#mdrsdtmigversionclassesclassget) | **GET** /mdr/sdtmig/{version}/classes/{class} | |
|[**mdrSdtmigVersionClassesGet**](#mdrsdtmigversionclassesget) | **GET** /mdr/sdtmig/{version}/classes | |
|[**mdrSdtmigVersionDatasetsDatasetGet**](#mdrsdtmigversiondatasetsdatasetget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | |
|[**mdrSdtmigVersionDatasetsDatasetVariablesGet**](#mdrsdtmigversiondatasetsdatasetvariablesget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | |
|[**mdrSdtmigVersionDatasetsDatasetVariablesVarGet**](#mdrsdtmigversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | |
|[**mdrSdtmigVersionDatasetsGet**](#mdrsdtmigversiondatasetsget) | **GET** /mdr/sdtmig/{version}/datasets | |
|[**mdrSdtmigVersionGet**](#mdrsdtmigversionget) | **GET** /mdr/sdtmig/{version} | |

# **mdrRootSdtmigDatasetsDatasetVariablesVarGet**
> RootSdtmigDatasetVariable mdrRootSdtmigDatasetsDatasetVariablesVarGet()

Get Root SDTMIG Dataset Variable

### Example

```typescript
import {
    SDTMImplementationGuideSDTMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SDTMImplementationGuideSDTMIGApi(configuration);

let dataset: string; //SDTMIG Dataset Identifier (default to undefined)
let _var: string; //SDTMIG Variable Identifier (default to undefined)

const { status, data } = await apiInstance.mdrRootSdtmigDatasetsDatasetVariablesVarGet(
    dataset,
    _var
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **dataset** | [**string**] | SDTMIG Dataset Identifier | defaults to undefined|
| **_var** | [**string**] | SDTMIG Variable Identifier | defaults to undefined|


### Return type

**RootSdtmigDatasetVariable**

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

# **mdrSdtmigVersionClassesClassDatasetsGet**
> SdtmigClassDatasets mdrSdtmigVersionClassesClassDatasetsGet()

Get SDTMIG Class Dataset List

### Example

```typescript
import {
    SDTMImplementationGuideSDTMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SDTMImplementationGuideSDTMIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //SDTMIG Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSdtmigVersionClassesClassDatasetsGet(
    version,
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | SDTMIG Class Identifier | defaults to undefined|


### Return type

**SdtmigClassDatasets**

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

# **mdrSdtmigVersionClassesClassGet**
> SdtmigClass mdrSdtmigVersionClassesClassGet()

Get SDTMIG Class

### Example

```typescript
import {
    SDTMImplementationGuideSDTMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SDTMImplementationGuideSDTMIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //SDTMIG Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSdtmigVersionClassesClassGet(
    version,
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | SDTMIG Class Identifier | defaults to undefined|


### Return type

**SdtmigClass**

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

# **mdrSdtmigVersionClassesGet**
> SdtmigClasses mdrSdtmigVersionClassesGet()

Get SDTMIG Class List

### Example

```typescript
import {
    SDTMImplementationGuideSDTMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SDTMImplementationGuideSDTMIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrSdtmigVersionClassesGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**SdtmigClasses**

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

# **mdrSdtmigVersionDatasetsDatasetGet**
> SdtmigDataset mdrSdtmigVersionDatasetsDatasetGet()

Get SDTMIG Dataset

### Example

```typescript
import {
    SDTMImplementationGuideSDTMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SDTMImplementationGuideSDTMIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let dataset: string; //SDTMIG Dataset Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSdtmigVersionDatasetsDatasetGet(
    version,
    dataset
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **dataset** | [**string**] | SDTMIG Dataset Identifier | defaults to undefined|


### Return type

**SdtmigDataset**

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

# **mdrSdtmigVersionDatasetsDatasetVariablesGet**
> SdtmigDatasetVariables mdrSdtmigVersionDatasetsDatasetVariablesGet()

Get SDTMIG Dataset Variable List

### Example

```typescript
import {
    SDTMImplementationGuideSDTMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SDTMImplementationGuideSDTMIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let dataset: string; //SDTMIG Dataset Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSdtmigVersionDatasetsDatasetVariablesGet(
    version,
    dataset
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **dataset** | [**string**] | SDTMIG Dataset Identifier | defaults to undefined|


### Return type

**SdtmigDatasetVariables**

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

# **mdrSdtmigVersionDatasetsDatasetVariablesVarGet**
> SdtmigDatasetVariable mdrSdtmigVersionDatasetsDatasetVariablesVarGet()

Get SDTMIG Dataset Variable

### Example

```typescript
import {
    SDTMImplementationGuideSDTMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SDTMImplementationGuideSDTMIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let dataset: string; //SDTMIG Dataset Identifier (default to undefined)
let _var: string; //SDTMIG Variable Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(
    version,
    dataset,
    _var
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **dataset** | [**string**] | SDTMIG Dataset Identifier | defaults to undefined|
| **_var** | [**string**] | SDTMIG Variable Identifier | defaults to undefined|


### Return type

**SdtmigDatasetVariable**

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

# **mdrSdtmigVersionDatasetsGet**
> SdtmigDatasets mdrSdtmigVersionDatasetsGet()

Get SDTMIG Dataset List

### Example

```typescript
import {
    SDTMImplementationGuideSDTMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SDTMImplementationGuideSDTMIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrSdtmigVersionDatasetsGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**SdtmigDatasets**

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

# **mdrSdtmigVersionGet**
> SdtmigProduct mdrSdtmigVersionGet()

Get SDTMIG product

### Example

```typescript
import {
    SDTMImplementationGuideSDTMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SDTMImplementationGuideSDTMIGApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrSdtmigVersionGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**SdtmigProduct**

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

