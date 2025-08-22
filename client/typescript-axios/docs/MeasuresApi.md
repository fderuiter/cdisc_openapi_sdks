# MeasuresApi

All URIs are relative to *https://library.cdisc.org/api*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**mdrQrsMeasureVersionGet**](#mdrqrsmeasureversionget) | **GET** /mdr/qrs/{measure}/{version} | |
|[**mdrQrsMeasureVersionItemsGet**](#mdrqrsmeasureversionitemsget) | **GET** /mdr/qrs/{measure}/{version}/items | |
|[**mdrQrsMeasureVersionItemsItemGet**](#mdrqrsmeasureversionitemsitemget) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | |
|[**mdrQrsMeasureVersionResponsegroupsGet**](#mdrqrsmeasureversionresponsegroupsget) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | |
|[**mdrQrsMeasureVersionResponsegroupsResponsegroupGet**](#mdrqrsmeasureversionresponsegroupsresponsegroupget) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | |

# **mdrQrsMeasureVersionGet**
> QrsProduct mdrQrsMeasureVersionGet()

Get QRS Product

### Example

```typescript
import {
    MeasuresApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new MeasuresApi(configuration);

let measure: string; //QRS Measure Identifier (default to undefined)
let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrQrsMeasureVersionGet(
    measure,
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **measure** | [**string**] | QRS Measure Identifier | defaults to undefined|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**QrsProduct**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel


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

# **mdrQrsMeasureVersionItemsGet**
> QrsItems mdrQrsMeasureVersionItemsGet()

Get QRS Item List

### Example

```typescript
import {
    MeasuresApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new MeasuresApi(configuration);

let measure: string; //QRS Measure Identifier (default to undefined)
let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrQrsMeasureVersionItemsGet(
    measure,
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **measure** | [**string**] | QRS Measure Identifier | defaults to undefined|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**QrsItems**

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

# **mdrQrsMeasureVersionItemsItemGet**
> QrsItem mdrQrsMeasureVersionItemsItemGet()

Get QRS Item

### Example

```typescript
import {
    MeasuresApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new MeasuresApi(configuration);

let measure: string; //QRS Measure Identifier (default to undefined)
let version: string; //CDISC Library Product Version (default to undefined)
let item: string; //QRS Measure Item Identifier (default to undefined)

const { status, data } = await apiInstance.mdrQrsMeasureVersionItemsItemGet(
    measure,
    version,
    item
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **measure** | [**string**] | QRS Measure Identifier | defaults to undefined|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **item** | [**string**] | QRS Measure Item Identifier | defaults to undefined|


### Return type

**QrsItem**

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

# **mdrQrsMeasureVersionResponsegroupsGet**
> QrsResponsegroups mdrQrsMeasureVersionResponsegroupsGet()

Get QRS Response Group List

### Example

```typescript
import {
    MeasuresApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new MeasuresApi(configuration);

let measure: string; //QRS Measure Identifier (default to undefined)
let version: string; //CDISC Library Product Version (default to undefined)

const { status, data } = await apiInstance.mdrQrsMeasureVersionResponsegroupsGet(
    measure,
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **measure** | [**string**] | QRS Measure Identifier | defaults to undefined|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|


### Return type

**QrsResponsegroups**

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

# **mdrQrsMeasureVersionResponsegroupsResponsegroupGet**
> QrsResponsegroup mdrQrsMeasureVersionResponsegroupsResponsegroupGet()

Get QRS Response Group

### Example

```typescript
import {
    MeasuresApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new MeasuresApi(configuration);

let measure: string; //QRS Measure Identifier (default to undefined)
let version: string; //CDISC Library Product Version (default to undefined)
let responsegroup: string; //QRS Measure\'s Response Group Identifier (default to undefined)

const { status, data } = await apiInstance.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(
    measure,
    version,
    responsegroup
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **measure** | [**string**] | QRS Measure Identifier | defaults to undefined|
| **version** | [**string**] | CDISC Library Product Version | defaults to undefined|
| **responsegroup** | [**string**] | QRS Measure\&#39;s Response Group Identifier | defaults to undefined|


### Return type

**QrsResponsegroup**

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

