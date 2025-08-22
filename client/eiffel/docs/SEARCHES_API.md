# SEARCHES_API

All URIs are relative to *https://library.cdisc.org/api*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**mdr_search_get**](SEARCHES_API.md#mdr_search_get) | **Get** /mdr/search | 
[**mdr_search_scopes_get**](SEARCHES_API.md#mdr_search_scopes_get) | **Get** /mdr/search/scopes | 
[**mdr_search_scopes_scope_get**](SEARCHES_API.md#mdr_search_scopes_scope_get) | **Get** /mdr/search/scopes/{scope} | 


# **mdr_search_get**
> mdr_search_get (q: STRING_32 ; highlight:  detachable STRING_32 ; start:  detachable REAL_32 ; page_size:  detachable REAL_32 ; var_class:  detachable STRING_32 ; codelist:  detachable STRING_32 ; concept_id:  detachable STRING_32 ; core:  detachable STRING_32 ; data_structure:  detachable STRING_32 ; dataset_structure:  detachable STRING_32 ; definition:  detachable STRING_32 ; description:  detachable STRING_32 ; domain:  detachable STRING_32 ; effective_date:  detachable STRING_32 ; extensible:  detachable STRING_32 ; href:  detachable STRING_32 ; label:  detachable STRING_32 ; measure_type:  detachable STRING_32 ; name:  detachable STRING_32 ; preferred_term:  detachable STRING_32 ; product:  detachable STRING_32 ; product_group:  detachable STRING_32 ; registration_status:  detachable STRING_32 ; role_description:  detachable STRING_32 ; sdtm_target:  detachable STRING_32 ; simple_datatype:  detachable STRING_32 ; submission_value:  detachable STRING_32 ; synonyms:  detachable STRING_32 ; type:  detachable STRING_32 ; ui_href:  detachable STRING_32 ; value_domain:  detachable STRING_32 ; variable_set:  detachable STRING_32 ; version:  detachable STRING_32 ): detachable DEFAULT_SEARCH_RESPONSE




Get Search Results Across CDISC Library


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **STRING_32**| Search Term Expression | [default to null]
 **highlight** | **STRING_32**| Search Highlight Expression | [optional] [default to null]
 **start** | **REAL_32**| Initial Search Result Index | [optional] [default to 0]
 **page_size** | **REAL_32**| Number of Search Results to Return | [optional] [default to 100]
 **var_class** | **STRING_32**| Limit Search by Setting Scope to Class | [optional] [default to null]
 **codelist** | **STRING_32**| Limit Search by Setting Scope to Codelist | [optional] [default to null]
 **concept_id** | **STRING_32**| Limit Search by Setting Scope to Concept ID | [optional] [default to null]
 **core** | **STRING_32**| Limit Search by Setting Scope to Core | [optional] [default to null]
 **data_structure** | **STRING_32**| Limit Search by Setting Scope to Data Structure | [optional] [default to null]
 **dataset_structure** | **STRING_32**| Limit Search by Setting Scope to Dataset Structure | [optional] [default to null]
 **definition** | **STRING_32**| Limit Search by Setting Scope to Definition | [optional] [default to null]
 **description** | **STRING_32**| Limit Search by Setting Scope to Description | [optional] [default to null]
 **domain** | **STRING_32**| Limit Search by Setting Scope to Domain | [optional] [default to null]
 **effective_date** | **STRING_32**| Limit Search by Setting Scope to Effective Date | [optional] [default to null]
 **extensible** | **STRING_32**| Limit Search by Setting Scope to Extensible | [optional] [default to null]
 **href** | **STRING_32**| Limit Search by Setting Scope to Href | [optional] [default to null]
 **label** | **STRING_32**| Limit Search by Setting Scope to Label | [optional] [default to null]
 **measure_type** | **STRING_32**| SLimit Search by Setting Scope to Measure Type | [optional] [default to null]
 **name** | **STRING_32**| Limit Search by Setting Scope to Name | [optional] [default to null]
 **preferred_term** | **STRING_32**| Limit Search by Setting Scope to Preferred Term | [optional] [default to null]
 **product** | **STRING_32**| Limit Search by Setting Scope to Product | [optional] [default to null]
 **product_group** | **STRING_32**| Limit Search by Setting Scope to Product Group | [optional] [default to null]
 **registration_status** | **STRING_32**| Limit Search by Setting Scope to Registration Status | [optional] [default to null]
 **role_description** | **STRING_32**| Limit Search by Setting Scope to Role Description | [optional] [default to null]
 **sdtm_target** | **STRING_32**| Limit Search by Setting Scope to SDTM Target | [optional] [default to null]
 **simple_datatype** | **STRING_32**| Limit Search by Setting Scope to Simple Datatype | [optional] [default to null]
 **submission_value** | **STRING_32**| Limit Search by Setting Scope to Submission Value | [optional] [default to null]
 **synonyms** | **STRING_32**| Limit Search by Setting Scope to Synonyms | [optional] [default to null]
 **type** | **STRING_32**| Limit Search by Setting Scope to Type | [optional] [default to null]
 **ui_href** | **STRING_32**| Limit Search by Setting Scope to UI Href | [optional] [default to null]
 **value_domain** | **STRING_32**| Limit Search by Setting Scope to Value Domain | [optional] [default to null]
 **variable_set** | **STRING_32**| Limit Search by Setting Scope to Variable Set | [optional] [default to null]
 **version** | **STRING_32**| Limit Search by Setting Scope to Version | [optional] [default to null]

### Return type

[**DEFAULT_SEARCH_RESPONSE**](DefaultSearchResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_search_scopes_get**
> mdr_search_scopes_get : detachable MODEL_MDR_SEARCH_SCOPES_GET_200_RESPONSE




Get Search Results Across CDISC Library


### Parameters
This endpoint does not need any parameter.

### Return type

[**MODEL_MDR_SEARCH_SCOPES_GET_200_RESPONSE**](_mdr_search_scopes_get_200_response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_search_scopes_scope_get**
> mdr_search_scopes_scope_get (scope: DEFAULT_SEARCH_SCOPES ): detachable SCOPE_VALUES




Get Search Results Limited to Scope


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | [**DEFAULT_SEARCH_SCOPES**](.md)| Search Scope | [default to null]

### Return type

[**SCOPE_VALUES**](ScopeValues.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

