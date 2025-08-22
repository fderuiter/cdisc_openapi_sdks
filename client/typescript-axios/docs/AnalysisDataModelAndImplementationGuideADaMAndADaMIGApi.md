# AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

All URIs are relative to *https://library.cdisc.org/api*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**mdrAdamProductDatastructuresGet**](#mdradamproductdatastructuresget) | **GET** /mdr/adam/{product}/datastructures | |
|[**mdrAdamProductDatastructuresStructureGet**](#mdradamproductdatastructuresstructureget) | **GET** /mdr/adam/{product}/datastructures/{structure} | |
|[**mdrAdamProductDatastructuresStructureVariablesGet**](#mdradamproductdatastructuresstructurevariablesget) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | |
|[**mdrAdamProductDatastructuresStructureVariablesVarGet**](#mdradamproductdatastructuresstructurevariablesvarget) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | |
|[**mdrAdamProductDatastructuresStructureVarsetsGet**](#mdradamproductdatastructuresstructurevarsetsget) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | |
|[**mdrAdamProductDatastructuresStructureVarsetsVarsetGet**](#mdradamproductdatastructuresstructurevarsetsvarsetget) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | |
|[**mdrAdamProductGet**](#mdradamproductget) | **GET** /mdr/adam/{product} | |

# **mdrAdamProductDatastructuresGet**
> AdamProductDatastructures mdrAdamProductDatastructuresGet()

Get ADaM Data Structure List

### Example

```typescript
import {
    AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(configuration);

let product: string; //CDISC Library Product (default to undefined)

const { status, data } = await apiInstance.mdrAdamProductDatastructuresGet(
    product
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **product** | [**string**] | CDISC Library Product | defaults to undefined|


### Return type

**AdamProductDatastructures**

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

# **mdrAdamProductDatastructuresStructureGet**
> AdamDatastructure mdrAdamProductDatastructuresStructureGet()

Get ADaM Data Structure

### Example

```typescript
import {
    AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(configuration);

let product: string; //CDISC Library Product (default to undefined)
let structure: string; //Data structure Identifier (default to undefined)

const { status, data } = await apiInstance.mdrAdamProductDatastructuresStructureGet(
    product,
    structure
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **product** | [**string**] | CDISC Library Product | defaults to undefined|
| **structure** | [**string**] | Data structure Identifier | defaults to undefined|


### Return type

**AdamDatastructure**

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

# **mdrAdamProductDatastructuresStructureVariablesGet**
> AdamDatastructureVariables mdrAdamProductDatastructuresStructureVariablesGet()

Get ADaM Variable List

### Example

```typescript
import {
    AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(configuration);

let product: string; //CDISC Library Product (default to undefined)
let structure: string; //ADaM Data Structure Identifier (default to undefined)

const { status, data } = await apiInstance.mdrAdamProductDatastructuresStructureVariablesGet(
    product,
    structure
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **product** | [**string**] | CDISC Library Product | defaults to undefined|
| **structure** | [**string**] | ADaM Data Structure Identifier | defaults to undefined|


### Return type

**AdamDatastructureVariables**

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

# **mdrAdamProductDatastructuresStructureVariablesVarGet**
> AdamVariable mdrAdamProductDatastructuresStructureVariablesVarGet()

Get ADaM Variable

### Example

```typescript
import {
    AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(configuration);

let product: string; //CDISC Library Product (default to undefined)
let structure: string; //ADaM Data Structure Identifier (default to undefined)
let _var: string; //ADaM Variable Identifier (default to undefined)

const { status, data } = await apiInstance.mdrAdamProductDatastructuresStructureVariablesVarGet(
    product,
    structure,
    _var
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **product** | [**string**] | CDISC Library Product | defaults to undefined|
| **structure** | [**string**] | ADaM Data Structure Identifier | defaults to undefined|
| **_var** | [**string**] | ADaM Variable Identifier | defaults to undefined|


### Return type

**AdamVariable**

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

# **mdrAdamProductDatastructuresStructureVarsetsGet**
> AdamDatastructureVarsets mdrAdamProductDatastructuresStructureVarsetsGet()

Get ADaM Variable Set List

### Example

```typescript
import {
    AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(configuration);

let product: string; //CDISC Library Product (default to undefined)
let structure: string; //ADaM Data Structure Identifier (default to undefined)

const { status, data } = await apiInstance.mdrAdamProductDatastructuresStructureVarsetsGet(
    product,
    structure
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **product** | [**string**] | CDISC Library Product | defaults to undefined|
| **structure** | [**string**] | ADaM Data Structure Identifier | defaults to undefined|


### Return type

**AdamDatastructureVarsets**

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

# **mdrAdamProductDatastructuresStructureVarsetsVarsetGet**
> AdamVarset mdrAdamProductDatastructuresStructureVarsetsVarsetGet()

Get ADaM Variable Set

### Example

```typescript
import {
    AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(configuration);

let product: string; //CDISC Library Product (default to undefined)
let structure: string; //ADaM Data Structure Identifier (default to undefined)
let varset: string; //ADaM Variable Set Identifier (default to undefined)

const { status, data } = await apiInstance.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(
    product,
    structure,
    varset
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **product** | [**string**] | CDISC Library Product | defaults to undefined|
| **structure** | [**string**] | ADaM Data Structure Identifier | defaults to undefined|
| **varset** | [**string**] | ADaM Variable Set Identifier | defaults to undefined|


### Return type

**AdamVarset**

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

# **mdrAdamProductGet**
> AdamProduct mdrAdamProductGet()

Get ADaM Product

### Example

```typescript
import {
    AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(configuration);

let product: string; //CDISC Library Product (default to undefined)

const { status, data } = await apiInstance.mdrAdamProductGet(
    product
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **product** | [**string**] | CDISC Library Product | defaults to undefined|


### Return type

**AdamProduct**

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

