# \SearchesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_search_get**](SearchesApi.md#mdr_search_get) | **GET** /mdr/search | 
[**mdr_search_scopes_get**](SearchesApi.md#mdr_search_scopes_get) | **GET** /mdr/search/scopes | 
[**mdr_search_scopes_scope_get**](SearchesApi.md#mdr_search_scopes_scope_get) | **GET** /mdr/search/scopes/{scope} | 



## mdr_search_get

> models::DefaultSearchResponse mdr_search_get(q, highlight, start, page_size, class, codelist, concept_id, core, data_structure, dataset_structure, definition, description, domain, effective_date, extensible, href, label, measure_type, name, preferred_term, product, product_group, registration_status, role_description, sdtm_target, simple_datatype, submission_value, synonyms, r#type, ui_href, value_domain, variable_set, version)


Get Search Results Across CDISC Library

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**q** | **String** | Search Term Expression | [required] |
**highlight** | Option<**String**> | Search Highlight Expression |  |
**start** | Option<**f64**> | Initial Search Result Index |  |[default to 0]
**page_size** | Option<**f64**> | Number of Search Results to Return |  |[default to 100]
**class** | Option<**String**> | Limit Search by Setting Scope to Class |  |
**codelist** | Option<**String**> | Limit Search by Setting Scope to Codelist |  |
**concept_id** | Option<**String**> | Limit Search by Setting Scope to Concept ID |  |
**core** | Option<**String**> | Limit Search by Setting Scope to Core |  |
**data_structure** | Option<**String**> | Limit Search by Setting Scope to Data Structure |  |
**dataset_structure** | Option<**String**> | Limit Search by Setting Scope to Dataset Structure |  |
**definition** | Option<**String**> | Limit Search by Setting Scope to Definition |  |
**description** | Option<**String**> | Limit Search by Setting Scope to Description |  |
**domain** | Option<**String**> | Limit Search by Setting Scope to Domain |  |
**effective_date** | Option<**String**> | Limit Search by Setting Scope to Effective Date |  |
**extensible** | Option<**String**> | Limit Search by Setting Scope to Extensible |  |
**href** | Option<**String**> | Limit Search by Setting Scope to Href |  |
**label** | Option<**String**> | Limit Search by Setting Scope to Label |  |
**measure_type** | Option<**String**> | SLimit Search by Setting Scope to Measure Type |  |
**name** | Option<**String**> | Limit Search by Setting Scope to Name |  |
**preferred_term** | Option<**String**> | Limit Search by Setting Scope to Preferred Term |  |
**product** | Option<**String**> | Limit Search by Setting Scope to Product |  |
**product_group** | Option<**String**> | Limit Search by Setting Scope to Product Group |  |
**registration_status** | Option<**String**> | Limit Search by Setting Scope to Registration Status |  |
**role_description** | Option<**String**> | Limit Search by Setting Scope to Role Description |  |
**sdtm_target** | Option<**String**> | Limit Search by Setting Scope to SDTM Target |  |
**simple_datatype** | Option<**String**> | Limit Search by Setting Scope to Simple Datatype |  |
**submission_value** | Option<**String**> | Limit Search by Setting Scope to Submission Value |  |
**synonyms** | Option<**String**> | Limit Search by Setting Scope to Synonyms |  |
**r#type** | Option<**String**> | Limit Search by Setting Scope to Type |  |
**ui_href** | Option<**String**> | Limit Search by Setting Scope to UI Href |  |
**value_domain** | Option<**String**> | Limit Search by Setting Scope to Value Domain |  |
**variable_set** | Option<**String**> | Limit Search by Setting Scope to Variable Set |  |
**version** | Option<**String**> | Limit Search by Setting Scope to Version |  |

### Return type

[**models::DefaultSearchResponse**](DefaultSearchResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_search_scopes_get

> models::MdrSearchScopesGet200Response mdr_search_scopes_get()


Get Search Results Across CDISC Library

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::MdrSearchScopesGet200Response**](_mdr_search_scopes_get_200_response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_search_scopes_scope_get

> models::ScopeValues mdr_search_scopes_scope_get(scope)


Get Search Results Limited to Scope

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**scope** | [**DefaultSearchScopes**](.md) | Search Scope | [required] |

### Return type

[**models::ScopeValues**](ScopeValues.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

