# WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_adam_product_datastructures_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_get) | **GET** /mdr/adam/{product}/datastructures | 
[**mdr_adam_product_datastructures_structure_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_get) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
[**mdr_adam_product_datastructures_structure_variables_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_variables_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**mdr_adam_product_datastructures_structure_variables_var_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_variables_var_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**mdr_adam_product_datastructures_structure_varsets_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_varsets_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**mdr_adam_product_datastructures_structure_varsets_varset_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_datastructures_structure_varsets_varset_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**mdr_adam_product_get**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdr_adam_product_get) | **GET** /mdr/adam/{product} | 


# **mdr_adam_product_datastructures_get**
> AdamProductDatastructures mdr_adam_product_datastructures_get(product => $product)



Get ADaM Data Structure List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;
my $api_instance = WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $product = adamig-1-1; # string | CDISC Library Product

eval {
    my $result = $api_instance->mdr_adam_product_datastructures_get(product => $product);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string**| CDISC Library Product | 

### Return type

[**AdamProductDatastructures**](AdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_adam_product_datastructures_structure_get**
> AdamDatastructure mdr_adam_product_datastructures_structure_get(product => $product, structure => $structure)



Get ADaM Data Structure

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;
my $api_instance = WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $product = adamig-1-1; # string | CDISC Library Product
my $structure = ADSL; # string | Data structure Identifier

eval {
    my $result = $api_instance->mdr_adam_product_datastructures_structure_get(product => $product, structure => $structure);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string**| CDISC Library Product | 
 **structure** | **string**| Data structure Identifier | 

### Return type

[**AdamDatastructure**](AdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_adam_product_datastructures_structure_variables_get**
> AdamDatastructureVariables mdr_adam_product_datastructures_structure_variables_get(product => $product, structure => $structure)



Get ADaM Variable List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;
my $api_instance = WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $product = adamig-1-1; # string | CDISC Library Product
my $structure = ADSL; # string | ADaM Data Structure Identifier

eval {
    my $result = $api_instance->mdr_adam_product_datastructures_structure_variables_get(product => $product, structure => $structure);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_variables_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string**| CDISC Library Product | 
 **structure** | **string**| ADaM Data Structure Identifier | 

### Return type

[**AdamDatastructureVariables**](AdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_adam_product_datastructures_structure_variables_var_get**
> AdamVariable mdr_adam_product_datastructures_structure_variables_var_get(product => $product, structure => $structure, var => $var)



Get ADaM Variable

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;
my $api_instance = WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $product = adamig-1-1; # string | CDISC Library Product
my $structure = ADSL; # string | ADaM Data Structure Identifier
my $var = SITEGRy; # string | ADaM Variable Identifier

eval {
    my $result = $api_instance->mdr_adam_product_datastructures_structure_variables_var_get(product => $product, structure => $structure, var => $var);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_variables_var_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string**| CDISC Library Product | 
 **structure** | **string**| ADaM Data Structure Identifier | 
 **var** | **string**| ADaM Variable Identifier | 

### Return type

[**AdamVariable**](AdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_adam_product_datastructures_structure_varsets_get**
> AdamDatastructureVarsets mdr_adam_product_datastructures_structure_varsets_get(product => $product, structure => $structure)



Get ADaM Variable Set List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;
my $api_instance = WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $product = adamig-1-1; # string | CDISC Library Product
my $structure = ADSL; # string | ADaM Data Structure Identifier

eval {
    my $result = $api_instance->mdr_adam_product_datastructures_structure_varsets_get(product => $product, structure => $structure);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_varsets_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string**| CDISC Library Product | 
 **structure** | **string**| ADaM Data Structure Identifier | 

### Return type

[**AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_adam_product_datastructures_structure_varsets_varset_get**
> AdamVarset mdr_adam_product_datastructures_structure_varsets_varset_get(product => $product, structure => $structure, varset => $varset)



Get ADaM Variable Set

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;
my $api_instance = WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $product = adamig-1-1; # string | CDISC Library Product
my $structure = ADSL; # string | ADaM Data Structure Identifier
my $varset = Identifier; # string | ADaM Variable Set Identifier

eval {
    my $result = $api_instance->mdr_adam_product_datastructures_structure_varsets_varset_get(product => $product, structure => $structure, varset => $varset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_datastructures_structure_varsets_varset_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string**| CDISC Library Product | 
 **structure** | **string**| ADaM Data Structure Identifier | 
 **varset** | **string**| ADaM Variable Set Identifier | 

### Return type

[**AdamVarset**](AdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_adam_product_get**
> AdamProduct mdr_adam_product_get(product => $product)



Get ADaM Product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;
my $api_instance = WWW::OpenAPIClient::AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $product = adamig-1-1; # string | CDISC Library Product

eval {
    my $result = $api_instance->mdr_adam_product_get(product => $product);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdr_adam_product_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string**| CDISC Library Product | 

### Return type

[**AdamProduct**](AdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

