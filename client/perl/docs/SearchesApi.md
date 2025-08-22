# WWW::OpenAPIClient::SearchesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::SearchesApi;
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_search_get**](SearchesApi.md#mdr_search_get) | **GET** /mdr/search | 
[**mdr_search_scopes_get**](SearchesApi.md#mdr_search_scopes_get) | **GET** /mdr/search/scopes | 
[**mdr_search_scopes_scope_get**](SearchesApi.md#mdr_search_scopes_scope_get) | **GET** /mdr/search/scopes/{scope} | 


# **mdr_search_get**
> DefaultSearchResponse mdr_search_get(q => $q, highlight => $highlight, start => $start, page_size => $page_size, class => $class, codelist => $codelist, concept_id => $concept_id, core => $core, data_structure => $data_structure, dataset_structure => $dataset_structure, definition => $definition, description => $description, domain => $domain, effective_date => $effective_date, extensible => $extensible, href => $href, label => $label, measure_type => $measure_type, name => $name, preferred_term => $preferred_term, product => $product, product_group => $product_group, registration_status => $registration_status, role_description => $role_description, sdtm_target => $sdtm_target, simple_datatype => $simple_datatype, submission_value => $submission_value, synonyms => $synonyms, type => $type, ui_href => $ui_href, value_domain => $value_domain, variable_set => $variable_set, version => $version)



Get Search Results Across CDISC Library

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SearchesApi;
my $api_instance = WWW::OpenAPIClient::SearchesApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $q = "q_example"; # string | Search Term Expression
my $highlight = "highlight_example"; # string | Search Highlight Expression
my $start = 0; # double | Initial Search Result Index
my $page_size = 100; # double | Number of Search Results to Return
my $class = "class_example"; # string | Limit Search by Setting Scope to Class
my $codelist = "codelist_example"; # string | Limit Search by Setting Scope to Codelist
my $concept_id = "concept_id_example"; # string | Limit Search by Setting Scope to Concept ID
my $core = "core_example"; # string | Limit Search by Setting Scope to Core
my $data_structure = "data_structure_example"; # string | Limit Search by Setting Scope to Data Structure
my $dataset_structure = "dataset_structure_example"; # string | Limit Search by Setting Scope to Dataset Structure
my $definition = "definition_example"; # string | Limit Search by Setting Scope to Definition
my $description = "description_example"; # string | Limit Search by Setting Scope to Description
my $domain = "domain_example"; # string | Limit Search by Setting Scope to Domain
my $effective_date = "effective_date_example"; # string | Limit Search by Setting Scope to Effective Date
my $extensible = "extensible_example"; # string | Limit Search by Setting Scope to Extensible
my $href = "href_example"; # string | Limit Search by Setting Scope to Href
my $label = "label_example"; # string | Limit Search by Setting Scope to Label
my $measure_type = "measure_type_example"; # string | SLimit Search by Setting Scope to Measure Type
my $name = "name_example"; # string | Limit Search by Setting Scope to Name
my $preferred_term = "preferred_term_example"; # string | Limit Search by Setting Scope to Preferred Term
my $product = "product_example"; # string | Limit Search by Setting Scope to Product
my $product_group = "product_group_example"; # string | Limit Search by Setting Scope to Product Group
my $registration_status = "registration_status_example"; # string | Limit Search by Setting Scope to Registration Status
my $role_description = "role_description_example"; # string | Limit Search by Setting Scope to Role Description
my $sdtm_target = "sdtm_target_example"; # string | Limit Search by Setting Scope to SDTM Target
my $simple_datatype = "simple_datatype_example"; # string | Limit Search by Setting Scope to Simple Datatype
my $submission_value = "submission_value_example"; # string | Limit Search by Setting Scope to Submission Value
my $synonyms = "synonyms_example"; # string | Limit Search by Setting Scope to Synonyms
my $type = "type_example"; # string | Limit Search by Setting Scope to Type
my $ui_href = "ui_href_example"; # string | Limit Search by Setting Scope to UI Href
my $value_domain = "value_domain_example"; # string | Limit Search by Setting Scope to Value Domain
my $variable_set = "variable_set_example"; # string | Limit Search by Setting Scope to Variable Set
my $version = "version_example"; # string | Limit Search by Setting Scope to Version

eval {
    my $result = $api_instance->mdr_search_get(q => $q, highlight => $highlight, start => $start, page_size => $page_size, class => $class, codelist => $codelist, concept_id => $concept_id, core => $core, data_structure => $data_structure, dataset_structure => $dataset_structure, definition => $definition, description => $description, domain => $domain, effective_date => $effective_date, extensible => $extensible, href => $href, label => $label, measure_type => $measure_type, name => $name, preferred_term => $preferred_term, product => $product, product_group => $product_group, registration_status => $registration_status, role_description => $role_description, sdtm_target => $sdtm_target, simple_datatype => $simple_datatype, submission_value => $submission_value, synonyms => $synonyms, type => $type, ui_href => $ui_href, value_domain => $value_domain, variable_set => $variable_set, version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SearchesApi->mdr_search_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Search Term Expression | 
 **highlight** | **string**| Search Highlight Expression | [optional] 
 **start** | **double**| Initial Search Result Index | [optional] [default to 0]
 **page_size** | **double**| Number of Search Results to Return | [optional] [default to 100]
 **class** | **string**| Limit Search by Setting Scope to Class | [optional] 
 **codelist** | **string**| Limit Search by Setting Scope to Codelist | [optional] 
 **concept_id** | **string**| Limit Search by Setting Scope to Concept ID | [optional] 
 **core** | **string**| Limit Search by Setting Scope to Core | [optional] 
 **data_structure** | **string**| Limit Search by Setting Scope to Data Structure | [optional] 
 **dataset_structure** | **string**| Limit Search by Setting Scope to Dataset Structure | [optional] 
 **definition** | **string**| Limit Search by Setting Scope to Definition | [optional] 
 **description** | **string**| Limit Search by Setting Scope to Description | [optional] 
 **domain** | **string**| Limit Search by Setting Scope to Domain | [optional] 
 **effective_date** | **string**| Limit Search by Setting Scope to Effective Date | [optional] 
 **extensible** | **string**| Limit Search by Setting Scope to Extensible | [optional] 
 **href** | **string**| Limit Search by Setting Scope to Href | [optional] 
 **label** | **string**| Limit Search by Setting Scope to Label | [optional] 
 **measure_type** | **string**| SLimit Search by Setting Scope to Measure Type | [optional] 
 **name** | **string**| Limit Search by Setting Scope to Name | [optional] 
 **preferred_term** | **string**| Limit Search by Setting Scope to Preferred Term | [optional] 
 **product** | **string**| Limit Search by Setting Scope to Product | [optional] 
 **product_group** | **string**| Limit Search by Setting Scope to Product Group | [optional] 
 **registration_status** | **string**| Limit Search by Setting Scope to Registration Status | [optional] 
 **role_description** | **string**| Limit Search by Setting Scope to Role Description | [optional] 
 **sdtm_target** | **string**| Limit Search by Setting Scope to SDTM Target | [optional] 
 **simple_datatype** | **string**| Limit Search by Setting Scope to Simple Datatype | [optional] 
 **submission_value** | **string**| Limit Search by Setting Scope to Submission Value | [optional] 
 **synonyms** | **string**| Limit Search by Setting Scope to Synonyms | [optional] 
 **type** | **string**| Limit Search by Setting Scope to Type | [optional] 
 **ui_href** | **string**| Limit Search by Setting Scope to UI Href | [optional] 
 **value_domain** | **string**| Limit Search by Setting Scope to Value Domain | [optional] 
 **variable_set** | **string**| Limit Search by Setting Scope to Variable Set | [optional] 
 **version** | **string**| Limit Search by Setting Scope to Version | [optional] 

### Return type

[**DefaultSearchResponse**](DefaultSearchResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_search_scopes_get**
> MdrSearchScopesGet200Response mdr_search_scopes_get()



Get Search Results Across CDISC Library

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SearchesApi;
my $api_instance = WWW::OpenAPIClient::SearchesApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->mdr_search_scopes_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SearchesApi->mdr_search_scopes_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MdrSearchScopesGet200Response**](MdrSearchScopesGet200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_search_scopes_scope_get**
> ScopeValues mdr_search_scopes_scope_get(scope => $scope)



Get Search Results Limited to Scope

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SearchesApi;
my $api_instance = WWW::OpenAPIClient::SearchesApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $scope = new WWW::OpenAPIClient.DefaultSearchScopes(); # DefaultSearchScopes | Search Scope

eval {
    my $result = $api_instance->mdr_search_scopes_scope_get(scope => $scope);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SearchesApi->mdr_search_scopes_scope_get: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

