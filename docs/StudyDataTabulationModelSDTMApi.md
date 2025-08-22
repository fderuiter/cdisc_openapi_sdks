# StudyDataTabulationModelSDTMApi

All URIs are relative to *https://library.cdisc.org/api*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**mdrRootSdtmClassesClassVariablesVarGet**](#mdrrootsdtmclassesclassvariablesvarget) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | |
|[**mdrRootSdtmDatasetsDatasetVariablesVarGet**](#mdrrootsdtmdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | |
|[**mdrSdtmVersionClassesClassDatasetsGet**](#mdrsdtmversionclassesclassdatasetsget) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | |
|[**mdrSdtmVersionClassesClassGet**](#mdrsdtmversionclassesclassget) | **GET** /mdr/sdtm/{version}/classes/{class} | |
|[**mdrSdtmVersionClassesClassVariablesGet**](#mdrsdtmversionclassesclassvariablesget) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | |
|[**mdrSdtmVersionClassesClassVariablesVarGet**](#mdrsdtmversionclassesclassvariablesvarget) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | |
|[**mdrSdtmVersionClassesGet**](#mdrsdtmversionclassesget) | **GET** /mdr/sdtm/{version}/classes | |
|[**mdrSdtmVersionDatasetsDatasetGet**](#mdrsdtmversiondatasetsdatasetget) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | |
|[**mdrSdtmVersionDatasetsDatasetVariablesGet**](#mdrsdtmversiondatasetsdatasetvariablesget) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | |
|[**mdrSdtmVersionDatasetsDatasetVariablesVarGet**](#mdrsdtmversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | |
|[**mdrSdtmVersionDatasetsGet**](#mdrsdtmversiondatasetsget) | **GET** /mdr/sdtm/{version}/datasets | |
|[**mdrSdtmVersionGet**](#mdrsdtmversionget) | **GET** /mdr/sdtm/{version} | |

# **mdrRootSdtmClassesClassVariablesVarGet**
> RootSdtmClassVariable mdrRootSdtmClassesClassVariablesVarGet()

Get Root of SDTM Class Variable

### Example

```typescript
import {
    StudyDataTabulationModelSDTMApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StudyDataTabulationModelSDTMApi(configuration);

let _class: string; //SDTM Class Identifier (default to undefined)
let _var: string; //SDTM Variable Identifier (default to undefined)

const { status, data } = await apiInstance.mdrRootSdtmClassesClassVariablesVarGet(
    _class,
    _var
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **_class** | [**string**] | SDTM Class Identifier | defaults to undefined|
| **_var** | [**string**] | SDTM Variable Identifier | defaults to undefined|


### Return type

**RootSdtmClassVariable**

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

# **mdrRootSdtmDatasetsDatasetVariablesVarGet**
> RootSdtmDatasetVariable mdrRootSdtmDatasetsDatasetVariablesVarGet()

Get Root SDTM Dataset Variable

### Example

```typescript
import {
    StudyDataTabulationModelSDTMApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StudyDataTabulationModelSDTMApi(configuration);

let dataset: string; //SDTM Dataset Identifier (default to undefined)
let _var: string; //SDTM Variable Identifier (default to undefined)

const { status, data } = await apiInstance.mdrRootSdtmDatasetsDatasetVariablesVarGet(
    dataset,
    _var
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **dataset** | [**string**] | SDTM Dataset Identifier | defaults to undefined|
| **_var** | [**string**] | SDTM Variable Identifier | defaults to undefined|


### Return type

**RootSdtmDatasetVariable**

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

# **mdrSdtmVersionClassesClassDatasetsGet**
> SdtmClassDatasets mdrSdtmVersionClassesClassDatasetsGet()

Get SDTM Class Dataset List

### Example

```typescript
import {
    StudyDataTabulationModelSDTMApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StudyDataTabulationModelSDTMApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //SDTM Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSdtmVersionClassesClassDatasetsGet(
    version,
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | SDTM Class Identifier | defaults to undefined|


### Return type

**SdtmClassDatasets**

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

# **mdrSdtmVersionClassesClassGet**
> SdtmClass mdrSdtmVersionClassesClassGet()

Get SDTM Class

### Example

```typescript
import {
    StudyDataTabulationModelSDTMApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StudyDataTabulationModelSDTMApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //SDTM Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSdtmVersionClassesClassGet(
    version,
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | SDTM Class Identifier | defaults to undefined|


### Return type

**SdtmClass**

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

# **mdrSdtmVersionClassesClassVariablesGet**
> SdtmClassVariables mdrSdtmVersionClassesClassVariablesGet()

Get SDTM Class Variable List

### Example

```typescript
import {
    StudyDataTabulationModelSDTMApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StudyDataTabulationModelSDTMApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //SDTM Class Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSdtmVersionClassesClassVariablesGet(
    version,
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | SDTM Class Identifier | defaults to undefined|


### Return type

**SdtmClassVariables**

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

# **mdrSdtmVersionClassesClassVariablesVarGet**
> SdtmClassVariable mdrSdtmVersionClassesClassVariablesVarGet()

Get SDTM Class Variable

### Example

```typescript
import {
    StudyDataTabulationModelSDTMApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StudyDataTabulationModelSDTMApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let _class: string; //SDTM Class Identifier (default to undefined)
let _var: string; //SDTM Variable Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSdtmVersionClassesClassVariablesVarGet(
    version,
    _class,
    _var
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **_class** | [**string**] | SDTM Class Identifier | defaults to undefined|
| **_var** | [**string**] | SDTM Variable Identifier | defaults to undefined|


### Return type

**SdtmClassVariable**

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

# **mdrSdtmVersionClassesGet**
> SdtmClasses mdrSdtmVersionClassesGet()

Get SDTM Class List

### Example

```typescript
import {
    StudyDataTabulationModelSDTMApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StudyDataTabulationModelSDTMApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrSdtmVersionClassesGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**SdtmClasses**

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

# **mdrSdtmVersionDatasetsDatasetGet**
> SdtmDataset mdrSdtmVersionDatasetsDatasetGet()

Get SDTM Dataset

### Example

```typescript
import {
    StudyDataTabulationModelSDTMApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StudyDataTabulationModelSDTMApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let dataset: string; //SDTM Dataset Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSdtmVersionDatasetsDatasetGet(
    version,
    dataset
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **dataset** | [**string**] | SDTM Dataset Identifier | defaults to undefined|


### Return type

**SdtmDataset**

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

# **mdrSdtmVersionDatasetsDatasetVariablesGet**
> SdtmDatasetVariables mdrSdtmVersionDatasetsDatasetVariablesGet()

Get SDTM Dataset Variable List

### Example

```typescript
import {
    StudyDataTabulationModelSDTMApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StudyDataTabulationModelSDTMApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let dataset: string; //SDTM Dataset Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSdtmVersionDatasetsDatasetVariablesGet(
    version,
    dataset
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **dataset** | [**string**] | SDTM Dataset Identifier | defaults to undefined|


### Return type

**SdtmDatasetVariables**

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

# **mdrSdtmVersionDatasetsDatasetVariablesVarGet**
> SdtmDatasetVariable mdrSdtmVersionDatasetsDatasetVariablesVarGet()

Get SDTM Dataset Variable

### Example

```typescript
import {
    StudyDataTabulationModelSDTMApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StudyDataTabulationModelSDTMApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)
let dataset: string; //SDTM Dataset Identifier (default to undefined)
let _var: string; //SDTM Variable Identifier (default to undefined)

const { status, data } = await apiInstance.mdrSdtmVersionDatasetsDatasetVariablesVarGet(
    version,
    dataset,
    _var
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **dataset** | [**string**] | SDTM Dataset Identifier | defaults to undefined|
| **_var** | [**string**] | SDTM Variable Identifier | defaults to undefined|


### Return type

**SdtmDatasetVariable**

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

# **mdrSdtmVersionDatasetsGet**
> SdtmDatasets mdrSdtmVersionDatasetsGet()

Get SDTM Dataset List

### Example

```typescript
import {
    StudyDataTabulationModelSDTMApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StudyDataTabulationModelSDTMApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrSdtmVersionDatasetsGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**SdtmDatasets**

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

# **mdrSdtmVersionGet**
> SdtmProduct mdrSdtmVersionGet()

Get SDTM product

### Example

```typescript
import {
    StudyDataTabulationModelSDTMApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StudyDataTabulationModelSDTMApi(configuration);

let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrSdtmVersionGet(
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**SdtmProduct**

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

