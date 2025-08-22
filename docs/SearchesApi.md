# SearchesApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrSearchGet**](SearchesApi.md#MdrSearchGet) | **GET** /mdr/search | 
[**MdrSearchScopesGet**](SearchesApi.md#MdrSearchScopesGet) | **GET** /mdr/search/scopes | 
[**MdrSearchScopesScopeGet**](SearchesApi.md#MdrSearchScopesScopeGet) | **GET** /mdr/search/scopes/{scope} | 


# **MdrSearchGet**
> DefaultSearchResponse MdrSearchGet(q, highlight = var.highlight, start = 0, page_size = 100, class = var.class, codelist = var.codelist, concept_id = var.concept_id, core = var.core, data_structure = var.data_structure, dataset_structure = var.dataset_structure, definition = var.definition, description = var.description, domain = var.domain, effective_date = var.effective_date, extensible = var.extensible, href = var.href, label = var.label, measure_type = var.measure_type, name = var.name, preferred_term = var.preferred_term, product = var.product, product_group = var.product_group, registration_status = var.registration_status, role_description = var.role_description, sdtm_target = var.sdtm_target, simple_datatype = var.simple_datatype, submission_value = var.submission_value, synonyms = var.synonyms, type = var.type, ui_href = var.ui_href, value_domain = var.value_domain, variable_set = var.variable_set, version = var.version)



Get Search Results Across CDISC Library

### Example
```R
library(openapi)

# prepare function argument(s)
var_q <- "q_example" # character | Search Term Expression
var_highlight <- "highlight_example" # character | Search Highlight Expression (Optional)
var_start <- 0 # numeric | Initial Search Result Index (Optional)
var_page_size <- 100 # numeric | Number of Search Results to Return (Optional)
var_class <- "class_example" # character | Limit Search by Setting Scope to Class (Optional)
var_codelist <- "codelist_example" # character | Limit Search by Setting Scope to Codelist (Optional)
var_concept_id <- "concept_id_example" # character | Limit Search by Setting Scope to Concept ID (Optional)
var_core <- "core_example" # character | Limit Search by Setting Scope to Core (Optional)
var_data_structure <- "data_structure_example" # character | Limit Search by Setting Scope to Data Structure (Optional)
var_dataset_structure <- "dataset_structure_example" # character | Limit Search by Setting Scope to Dataset Structure (Optional)
var_definition <- "definition_example" # character | Limit Search by Setting Scope to Definition (Optional)
var_description <- "description_example" # character | Limit Search by Setting Scope to Description (Optional)
var_domain <- "domain_example" # character | Limit Search by Setting Scope to Domain (Optional)
var_effective_date <- "effective_date_example" # character | Limit Search by Setting Scope to Effective Date (Optional)
var_extensible <- "extensible_example" # character | Limit Search by Setting Scope to Extensible (Optional)
var_href <- "href_example" # character | Limit Search by Setting Scope to Href (Optional)
var_label <- "label_example" # character | Limit Search by Setting Scope to Label (Optional)
var_measure_type <- "measure_type_example" # character | SLimit Search by Setting Scope to Measure Type (Optional)
var_name <- "name_example" # character | Limit Search by Setting Scope to Name (Optional)
var_preferred_term <- "preferred_term_example" # character | Limit Search by Setting Scope to Preferred Term (Optional)
var_product <- "product_example" # character | Limit Search by Setting Scope to Product (Optional)
var_product_group <- "product_group_example" # character | Limit Search by Setting Scope to Product Group (Optional)
var_registration_status <- "registration_status_example" # character | Limit Search by Setting Scope to Registration Status (Optional)
var_role_description <- "role_description_example" # character | Limit Search by Setting Scope to Role Description (Optional)
var_sdtm_target <- "sdtm_target_example" # character | Limit Search by Setting Scope to SDTM Target (Optional)
var_simple_datatype <- "simple_datatype_example" # character | Limit Search by Setting Scope to Simple Datatype (Optional)
var_submission_value <- "submission_value_example" # character | Limit Search by Setting Scope to Submission Value (Optional)
var_synonyms <- "synonyms_example" # character | Limit Search by Setting Scope to Synonyms (Optional)
var_type <- "type_example" # character | Limit Search by Setting Scope to Type (Optional)
var_ui_href <- "ui_href_example" # character | Limit Search by Setting Scope to UI Href (Optional)
var_value_domain <- "value_domain_example" # character | Limit Search by Setting Scope to Value Domain (Optional)
var_variable_set <- "variable_set_example" # character | Limit Search by Setting Scope to Variable Set (Optional)
var_version <- "version_example" # character | Limit Search by Setting Scope to Version (Optional)

api_instance <- SearchesApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSearchGet(var_q, highlight = var_highlight, start = var_start, page_size = var_page_size, class = var_class, codelist = var_codelist, concept_id = var_concept_id, core = var_core, data_structure = var_data_structure, dataset_structure = var_dataset_structure, definition = var_definition, description = var_description, domain = var_domain, effective_date = var_effective_date, extensible = var_extensible, href = var_href, label = var_label, measure_type = var_measure_type, name = var_name, preferred_term = var_preferred_term, product = var_product, product_group = var_product_group, registration_status = var_registration_status, role_description = var_role_description, sdtm_target = var_sdtm_target, simple_datatype = var_simple_datatype, submission_value = var_submission_value, synonyms = var_synonyms, type = var_type, ui_href = var_ui_href, value_domain = var_value_domain, variable_set = var_variable_set, version = var_versiondata_file = "result.txt")
result <- api_instance$MdrSearchGet(var_q, highlight = var_highlight, start = var_start, page_size = var_page_size, class = var_class, codelist = var_codelist, concept_id = var_concept_id, core = var_core, data_structure = var_data_structure, dataset_structure = var_dataset_structure, definition = var_definition, description = var_description, domain = var_domain, effective_date = var_effective_date, extensible = var_extensible, href = var_href, label = var_label, measure_type = var_measure_type, name = var_name, preferred_term = var_preferred_term, product = var_product, product_group = var_product_group, registration_status = var_registration_status, role_description = var_role_description, sdtm_target = var_sdtm_target, simple_datatype = var_simple_datatype, submission_value = var_submission_value, synonyms = var_synonyms, type = var_type, ui_href = var_ui_href, value_domain = var_value_domain, variable_set = var_variable_set, version = var_version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **character**| Search Term Expression | 
 **highlight** | **character**| Search Highlight Expression | [optional] 
 **start** | **numeric**| Initial Search Result Index | [optional] [default to 0]
 **page_size** | **numeric**| Number of Search Results to Return | [optional] [default to 100]
 **class** | **character**| Limit Search by Setting Scope to Class | [optional] 
 **codelist** | **character**| Limit Search by Setting Scope to Codelist | [optional] 
 **concept_id** | **character**| Limit Search by Setting Scope to Concept ID | [optional] 
 **core** | **character**| Limit Search by Setting Scope to Core | [optional] 
 **data_structure** | **character**| Limit Search by Setting Scope to Data Structure | [optional] 
 **dataset_structure** | **character**| Limit Search by Setting Scope to Dataset Structure | [optional] 
 **definition** | **character**| Limit Search by Setting Scope to Definition | [optional] 
 **description** | **character**| Limit Search by Setting Scope to Description | [optional] 
 **domain** | **character**| Limit Search by Setting Scope to Domain | [optional] 
 **effective_date** | **character**| Limit Search by Setting Scope to Effective Date | [optional] 
 **extensible** | **character**| Limit Search by Setting Scope to Extensible | [optional] 
 **href** | **character**| Limit Search by Setting Scope to Href | [optional] 
 **label** | **character**| Limit Search by Setting Scope to Label | [optional] 
 **measure_type** | **character**| SLimit Search by Setting Scope to Measure Type | [optional] 
 **name** | **character**| Limit Search by Setting Scope to Name | [optional] 
 **preferred_term** | **character**| Limit Search by Setting Scope to Preferred Term | [optional] 
 **product** | **character**| Limit Search by Setting Scope to Product | [optional] 
 **product_group** | **character**| Limit Search by Setting Scope to Product Group | [optional] 
 **registration_status** | **character**| Limit Search by Setting Scope to Registration Status | [optional] 
 **role_description** | **character**| Limit Search by Setting Scope to Role Description | [optional] 
 **sdtm_target** | **character**| Limit Search by Setting Scope to SDTM Target | [optional] 
 **simple_datatype** | **character**| Limit Search by Setting Scope to Simple Datatype | [optional] 
 **submission_value** | **character**| Limit Search by Setting Scope to Submission Value | [optional] 
 **synonyms** | **character**| Limit Search by Setting Scope to Synonyms | [optional] 
 **type** | **character**| Limit Search by Setting Scope to Type | [optional] 
 **ui_href** | **character**| Limit Search by Setting Scope to UI Href | [optional] 
 **value_domain** | **character**| Limit Search by Setting Scope to Value Domain | [optional] 
 **variable_set** | **character**| Limit Search by Setting Scope to Variable Set | [optional] 
 **version** | **character**| Limit Search by Setting Scope to Version | [optional] 

### Return type

[**DefaultSearchResponse**](DefaultSearchResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrSearchScopesGet**
> MdrSearchScopesGet200Response MdrSearchScopesGet()



Get Search Results Across CDISC Library

### Example
```R
library(openapi)


api_instance <- SearchesApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSearchScopesGet(data_file = "result.txt")
result <- api_instance$MdrSearchScopesGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MdrSearchScopesGet200Response**](_mdr_search_scopes_get_200_response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **MdrSearchScopesScopeGet**
> ScopeValues MdrSearchScopesScopeGet(scope)



Get Search Results Limited to Scope

### Example
```R
library(openapi)

# prepare function argument(s)
var_scope <- DefaultSearchScopes$new() # DefaultSearchScopes | Search Scope

api_instance <- SearchesApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrSearchScopesScopeGet(var_scopedata_file = "result.txt")
result <- api_instance$MdrSearchScopesScopeGet(var_scope)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | [**DefaultSearchScopes**](.md)| Search Scope | 

### Return type

[**ScopeValues**](ScopeValues.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

