# WWW::OpenAPIClient::ControlledTerminologyCTApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ControlledTerminologyCTApi;
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_ct_packages_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_get) | **GET** /mdr/ct/packages | 
[**mdr_ct_packages_package_codelists_codelist_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_package_codelists_codelist_get) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | 
[**mdr_ct_packages_package_codelists_codelist_terms_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_package_codelists_codelist_terms_get) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
[**mdr_ct_packages_package_codelists_codelist_terms_term_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_package_codelists_codelist_terms_term_get) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
[**mdr_ct_packages_package_codelists_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_package_codelists_get) | **GET** /mdr/ct/packages/{package}/codelists | 
[**mdr_ct_packages_product_get**](ControlledTerminologyCTApi.md#mdr_ct_packages_product_get) | **GET** /mdr/ct/packages/{product} | 
[**mdr_root_ct_product_group_codelists_codelist_get**](ControlledTerminologyCTApi.md#mdr_root_ct_product_group_codelists_codelist_get) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
[**mdr_root_ct_product_group_codelists_codelist_terms_term_get**](ControlledTerminologyCTApi.md#mdr_root_ct_product_group_codelists_codelist_terms_term_get) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 


# **mdr_ct_packages_get**
> CtPackages mdr_ct_packages_get()



Get CDISC Library CT Package List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ControlledTerminologyCTApi;
my $api_instance = WWW::OpenAPIClient::ControlledTerminologyCTApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->mdr_ct_packages_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ControlledTerminologyCTApi->mdr_ct_packages_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CtPackages**](CtPackages.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_ct_packages_package_codelists_codelist_get**
> CtCodelist mdr_ct_packages_package_codelists_codelist_get(package => $package, codelist => $codelist)



Get CDISC Library CT Package Codelist

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ControlledTerminologyCTApi;
my $api_instance = WWW::OpenAPIClient::ControlledTerminologyCTApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $package = sdtmct-2019-12-20; # string | CT Package Identifier
my $codelist = C67154; # string | CT Codelist Identifier

eval {
    my $result = $api_instance->mdr_ct_packages_package_codelists_codelist_get(package => $package, codelist => $codelist);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **string**| CT Package Identifier | 
 **codelist** | **string**| CT Codelist Identifier | 

### Return type

[**CtCodelist**](CtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_ct_packages_package_codelists_codelist_terms_get**
> CtCodelistTerms mdr_ct_packages_package_codelists_codelist_terms_get(package => $package, codelist => $codelist)



Get CDISC Library CT Package Codelist Term List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ControlledTerminologyCTApi;
my $api_instance = WWW::OpenAPIClient::ControlledTerminologyCTApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $package = sdtmct-2019-12-20; # string | CT Package Identifier
my $codelist = C67154; # string | CT Codelist Identifier

eval {
    my $result = $api_instance->mdr_ct_packages_package_codelists_codelist_terms_get(package => $package, codelist => $codelist);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_terms_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **string**| CT Package Identifier | 
 **codelist** | **string**| CT Codelist Identifier | 

### Return type

[**CtCodelistTerms**](CtCodelistTerms.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_ct_packages_package_codelists_codelist_terms_term_get**
> CtTerm mdr_ct_packages_package_codelists_codelist_terms_term_get(package => $package, codelist => $codelist, term => $term)



Get CDISC Library CT Package Codelist Term

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ControlledTerminologyCTApi;
my $api_instance = WWW::OpenAPIClient::ControlledTerminologyCTApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $package = sdtmct-2019-12-20; # string | CT Package Product Identifier
my $codelist = C67154; # string | CT Codelist Identifier
my $term = C64796; # string | CT Codelist Term Identifier

eval {
    my $result = $api_instance->mdr_ct_packages_package_codelists_codelist_terms_term_get(package => $package, codelist => $codelist, term => $term);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_codelist_terms_term_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **string**| CT Package Product Identifier | 
 **codelist** | **string**| CT Codelist Identifier | 
 **term** | **string**| CT Codelist Term Identifier | 

### Return type

[**CtTerm**](CtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_ct_packages_package_codelists_get**
> CtPackageCodelists mdr_ct_packages_package_codelists_get(package => $package)



Get CDISC Library CT Package Codelist List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ControlledTerminologyCTApi;
my $api_instance = WWW::OpenAPIClient::ControlledTerminologyCTApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $package = sdtmct-2019-12-20; # string | CT Package Identifier

eval {
    my $result = $api_instance->mdr_ct_packages_package_codelists_get(package => $package);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ControlledTerminologyCTApi->mdr_ct_packages_package_codelists_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **string**| CT Package Identifier | 

### Return type

[**CtPackageCodelists**](CtPackageCodelists.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_ct_packages_product_get**
> CtPackage mdr_ct_packages_product_get(product => $product)



Get CDISC Library CT Package

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ControlledTerminologyCTApi;
my $api_instance = WWW::OpenAPIClient::ControlledTerminologyCTApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $product = sdtmct-2019-12-20; # string | CT Package Product Identifier

eval {
    my $result = $api_instance->mdr_ct_packages_product_get(product => $product);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ControlledTerminologyCTApi->mdr_ct_packages_product_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string**| CT Package Product Identifier | 

### Return type

[**CtPackage**](CtPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_ct_product_group_codelists_codelist_get**
> RootCtCodelist mdr_root_ct_product_group_codelists_codelist_get(product_group => $product_group, codelist => $codelist)



Get CDISC Library Root CT Codelist

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ControlledTerminologyCTApi;
my $api_instance = WWW::OpenAPIClient::ControlledTerminologyCTApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $product_group = sdtmct; # string | CT Product Group Identifier
my $codelist = C67154; # string | CT Codelist Identifier

eval {
    my $result = $api_instance->mdr_root_ct_product_group_codelists_codelist_get(product_group => $product_group, codelist => $codelist);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ControlledTerminologyCTApi->mdr_root_ct_product_group_codelists_codelist_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_group** | **string**| CT Product Group Identifier | 
 **codelist** | **string**| CT Codelist Identifier | 

### Return type

[**RootCtCodelist**](RootCtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_ct_product_group_codelists_codelist_terms_term_get**
> RootCtTerm mdr_root_ct_product_group_codelists_codelist_terms_term_get(product_group => $product_group, codelist => $codelist, term => $term)



Get CDISC Library Root CT Term

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ControlledTerminologyCTApi;
my $api_instance = WWW::OpenAPIClient::ControlledTerminologyCTApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $product_group = sdtmct; # string | CT Product Group Identifier
my $codelist = C67154; # string | CT Codelist Identifier
my $term = C64796; # string | CT Codelist Term Identifier

eval {
    my $result = $api_instance->mdr_root_ct_product_group_codelists_codelist_terms_term_get(product_group => $product_group, codelist => $codelist, term => $term);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ControlledTerminologyCTApi->mdr_root_ct_product_group_codelists_codelist_terms_term_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_group** | **string**| CT Product Group Identifier | 
 **codelist** | **string**| CT Codelist Identifier | 
 **term** | **string**| CT Codelist Term Identifier | 

### Return type

[**RootCtTerm**](RootCtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

