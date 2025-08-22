# SearchesApi

All URIs are relative to *https://library.cdisc.org/api*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**mdrSearchGet**](#mdrsearchget) | **GET** /mdr/search | |
|[**mdrSearchScopesGet**](#mdrsearchscopesget) | **GET** /mdr/search/scopes | |
|[**mdrSearchScopesScopeGet**](#mdrsearchscopesscopeget) | **GET** /mdr/search/scopes/{scope} | |

# **mdrSearchGet**
> DefaultSearchResponse mdrSearchGet()

Get Search Results Across CDISC Library

### Example

```typescript
import {
    SearchesApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SearchesApi(configuration);

let q: string; //Search Term Expression (default to undefined)
let highlight: string; //Search Highlight Expression (optional) (default to undefined)
let start: number; //Initial Search Result Index (optional) (default to 0)
let pageSize: number; //Number of Search Results to Return (optional) (default to 100)
let _class: string; //Limit Search by Setting Scope to Class (optional) (default to undefined)
let codelist: string; //Limit Search by Setting Scope to Codelist (optional) (default to undefined)
let conceptId: string; //Limit Search by Setting Scope to Concept ID (optional) (default to undefined)
let core: string; //Limit Search by Setting Scope to Core (optional) (default to undefined)
let dataStructure: string; //Limit Search by Setting Scope to Data Structure (optional) (default to undefined)
let datasetStructure: string; //Limit Search by Setting Scope to Dataset Structure (optional) (default to undefined)
let definition: string; //Limit Search by Setting Scope to Definition (optional) (default to undefined)
let description: string; //Limit Search by Setting Scope to Description (optional) (default to undefined)
let domain: string; //Limit Search by Setting Scope to Domain (optional) (default to undefined)
let effectiveDate: string; //Limit Search by Setting Scope to Effective Date (optional) (default to undefined)
let extensible: string; //Limit Search by Setting Scope to Extensible (optional) (default to undefined)
let href: string; //Limit Search by Setting Scope to Href (optional) (default to undefined)
let label: string; //Limit Search by Setting Scope to Label (optional) (default to undefined)
let measureType: string; //SLimit Search by Setting Scope to Measure Type (optional) (default to undefined)
let name: string; //Limit Search by Setting Scope to Name (optional) (default to undefined)
let preferredTerm: string; //Limit Search by Setting Scope to Preferred Term (optional) (default to undefined)
let product: string; //Limit Search by Setting Scope to Product (optional) (default to undefined)
let productGroup: string; //Limit Search by Setting Scope to Product Group (optional) (default to undefined)
let registrationStatus: string; //Limit Search by Setting Scope to Registration Status (optional) (default to undefined)
let roleDescription: string; //Limit Search by Setting Scope to Role Description (optional) (default to undefined)
let sdtmTarget: string; //Limit Search by Setting Scope to SDTM Target (optional) (default to undefined)
let simpleDatatype: string; //Limit Search by Setting Scope to Simple Datatype (optional) (default to undefined)
let submissionValue: string; //Limit Search by Setting Scope to Submission Value (optional) (default to undefined)
let synonyms: string; //Limit Search by Setting Scope to Synonyms (optional) (default to undefined)
let type: string; //Limit Search by Setting Scope to Type (optional) (default to undefined)
let uiHref: string; //Limit Search by Setting Scope to UI Href (optional) (default to undefined)
let valueDomain: string; //Limit Search by Setting Scope to Value Domain (optional) (default to undefined)
let variableSet: string; //Limit Search by Setting Scope to Variable Set (optional) (default to undefined)
let version: string; //Limit Search by Setting Scope to Version (optional) (default to undefined)

const { status, data } = await apiInstance.mdrSearchGet(
    q,
    highlight,
    start,
    pageSize,
    _class,
    codelist,
    conceptId,
    core,
    dataStructure,
    datasetStructure,
    definition,
    description,
    domain,
    effectiveDate,
    extensible,
    href,
    label,
    measureType,
    name,
    preferredTerm,
    product,
    productGroup,
    registrationStatus,
    roleDescription,
    sdtmTarget,
    simpleDatatype,
    submissionValue,
    synonyms,
    type,
    uiHref,
    valueDomain,
    variableSet,
    version
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **q** | [**string**] | Search Term Expression | defaults to undefined|
| **highlight** | [**string**] | Search Highlight Expression | (optional) defaults to undefined|
| **start** | [**number**] | Initial Search Result Index | (optional) defaults to 0|
| **pageSize** | [**number**] | Number of Search Results to Return | (optional) defaults to 100|
| **_class** | [**string**] | Limit Search by Setting Scope to Class | (optional) defaults to undefined|
| **codelist** | [**string**] | Limit Search by Setting Scope to Codelist | (optional) defaults to undefined|
| **conceptId** | [**string**] | Limit Search by Setting Scope to Concept ID | (optional) defaults to undefined|
| **core** | [**string**] | Limit Search by Setting Scope to Core | (optional) defaults to undefined|
| **dataStructure** | [**string**] | Limit Search by Setting Scope to Data Structure | (optional) defaults to undefined|
| **datasetStructure** | [**string**] | Limit Search by Setting Scope to Dataset Structure | (optional) defaults to undefined|
| **definition** | [**string**] | Limit Search by Setting Scope to Definition | (optional) defaults to undefined|
| **description** | [**string**] | Limit Search by Setting Scope to Description | (optional) defaults to undefined|
| **domain** | [**string**] | Limit Search by Setting Scope to Domain | (optional) defaults to undefined|
| **effectiveDate** | [**string**] | Limit Search by Setting Scope to Effective Date | (optional) defaults to undefined|
| **extensible** | [**string**] | Limit Search by Setting Scope to Extensible | (optional) defaults to undefined|
| **href** | [**string**] | Limit Search by Setting Scope to Href | (optional) defaults to undefined|
| **label** | [**string**] | Limit Search by Setting Scope to Label | (optional) defaults to undefined|
| **measureType** | [**string**] | SLimit Search by Setting Scope to Measure Type | (optional) defaults to undefined|
| **name** | [**string**] | Limit Search by Setting Scope to Name | (optional) defaults to undefined|
| **preferredTerm** | [**string**] | Limit Search by Setting Scope to Preferred Term | (optional) defaults to undefined|
| **product** | [**string**] | Limit Search by Setting Scope to Product | (optional) defaults to undefined|
| **productGroup** | [**string**] | Limit Search by Setting Scope to Product Group | (optional) defaults to undefined|
| **registrationStatus** | [**string**] | Limit Search by Setting Scope to Registration Status | (optional) defaults to undefined|
| **roleDescription** | [**string**] | Limit Search by Setting Scope to Role Description | (optional) defaults to undefined|
| **sdtmTarget** | [**string**] | Limit Search by Setting Scope to SDTM Target | (optional) defaults to undefined|
| **simpleDatatype** | [**string**] | Limit Search by Setting Scope to Simple Datatype | (optional) defaults to undefined|
| **submissionValue** | [**string**] | Limit Search by Setting Scope to Submission Value | (optional) defaults to undefined|
| **synonyms** | [**string**] | Limit Search by Setting Scope to Synonyms | (optional) defaults to undefined|
| **type** | [**string**] | Limit Search by Setting Scope to Type | (optional) defaults to undefined|
| **uiHref** | [**string**] | Limit Search by Setting Scope to UI Href | (optional) defaults to undefined|
| **valueDomain** | [**string**] | Limit Search by Setting Scope to Value Domain | (optional) defaults to undefined|
| **variableSet** | [**string**] | Limit Search by Setting Scope to Variable Set | (optional) defaults to undefined|
| **version** | [**string**] | Limit Search by Setting Scope to Version | (optional) defaults to undefined|


### Return type

**DefaultSearchResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


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

# **mdrSearchScopesGet**
> MdrSearchScopesGet200Response mdrSearchScopesGet()

Get Search Results Across CDISC Library

### Example

```typescript
import {
    SearchesApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SearchesApi(configuration);

const { status, data } = await apiInstance.mdrSearchScopesGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**MdrSearchScopesGet200Response**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSearchScopesScopeGet**
> ScopeValues mdrSearchScopesScopeGet()

Get Search Results Limited to Scope

### Example

```typescript
import {
    SearchesApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SearchesApi(configuration);

let scope: DefaultSearchScopes; //Search Scope (default to undefined)

const { status, data } = await apiInstance.mdrSearchScopesScopeGet(
    scope
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **scope** | **DefaultSearchScopes** | Search Scope | defaults to undefined|


### Return type

**ScopeValues**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

