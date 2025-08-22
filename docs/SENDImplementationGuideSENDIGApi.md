# WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::SENDImplementationGuideSENDIGApi;
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sendig_datasets_dataset_variables_var_get**](SENDImplementationGuideSENDIGApi.md#mdr_root_sendig_datasets_dataset_variables_var_get) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**mdr_sendig_version_classes_class_datasets_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_classes_class_datasets_get) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**mdr_sendig_version_classes_class_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_classes_class_get) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**mdr_sendig_version_classes_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_classes_get) | **GET** /mdr/sendig/{version}/classes | 
[**mdr_sendig_version_datasets_dataset_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_datasets_dataset_get) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**mdr_sendig_version_datasets_dataset_variables_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_datasets_dataset_variables_get) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**mdr_sendig_version_datasets_dataset_variables_var_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_datasets_dataset_variables_var_get) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**mdr_sendig_version_datasets_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_datasets_get) | **GET** /mdr/sendig/{version}/datasets | 
[**mdr_sendig_version_get**](SENDImplementationGuideSENDIGApi.md#mdr_sendig_version_get) | **GET** /mdr/sendig/{version} | 


# **mdr_root_sendig_datasets_dataset_variables_var_get**
> RootSendigDatasetVariable mdr_root_sendig_datasets_dataset_variables_var_get(dataset => $dataset, var => $var)



Get Root SENDIG Dataset Variable

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi;
my $api_instance = WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $dataset = VS; # string | SENDIG Dataset Identifier
my $var = VSTEST; # string | SENDIG Variable Identifier

eval {
    my $result = $api_instance->mdr_root_sendig_datasets_dataset_variables_var_get(dataset => $dataset, var => $var);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SENDImplementationGuideSENDIGApi->mdr_root_sendig_datasets_dataset_variables_var_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **string**| SENDIG Dataset Identifier | 
 **var** | **string**| SENDIG Variable Identifier | 

### Return type

[**RootSendigDatasetVariable**](RootSendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_classes_class_datasets_get**
> SendigClassDatasets mdr_sendig_version_classes_class_datasets_get(version => $version, class => $class)



Get SENDIG Class Dataset List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi;
my $api_instance = WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-1; # string | CDISC Library Product Version
my $class = Findings; # string | SENDIG Class Identifier

eval {
    my $result = $api_instance->mdr_sendig_version_classes_class_datasets_get(version => $version, class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_class_datasets_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| SENDIG Class Identifier | 

### Return type

[**SendigClassDatasets**](SendigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_classes_class_get**
> SendigClass mdr_sendig_version_classes_class_get(version => $version, class => $class)



Get SENDIG Class

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi;
my $api_instance = WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-1; # string | CDISC Library Product Version
my $class = Findings; # string | SENDIG Class Identifier

eval {
    my $result = $api_instance->mdr_sendig_version_classes_class_get(version => $version, class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_class_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| SENDIG Class Identifier | 

### Return type

[**SendigClass**](SendigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_classes_get**
> SendigClasses mdr_sendig_version_classes_get(version => $version)



Get SENDIG Class List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi;
my $api_instance = WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-1; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_sendig_version_classes_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_classes_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**SendigClasses**](SendigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_datasets_dataset_get**
> SendigDataset mdr_sendig_version_datasets_dataset_get(version => $version, dataset => $dataset)



Get SENDIG Dataset

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi;
my $api_instance = WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-1; # string | CDISC Library Product Version
my $dataset = VS; # string | SENDIG Class Identifier

eval {
    my $result = $api_instance->mdr_sendig_version_datasets_dataset_get(version => $version, dataset => $dataset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **dataset** | **string**| SENDIG Class Identifier | 

### Return type

[**SendigDataset**](SendigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_datasets_dataset_variables_get**
> SendigDatasetVariables mdr_sendig_version_datasets_dataset_variables_get(version => $version, dataset => $dataset)



Get SENDIG Dataset Variable List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi;
my $api_instance = WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-1; # string | CDISC Library Product Version
my $dataset = VS; # string | SENDIG Class Identifier

eval {
    my $result = $api_instance->mdr_sendig_version_datasets_dataset_variables_get(version => $version, dataset => $dataset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_variables_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **dataset** | **string**| SENDIG Class Identifier | 

### Return type

[**SendigDatasetVariables**](SendigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_datasets_dataset_variables_var_get**
> SendigDatasetVariable mdr_sendig_version_datasets_dataset_variables_var_get(version => $version, dataset => $dataset, var => $var)



Get SENDIG Dataset Variable

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi;
my $api_instance = WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-1; # string | CDISC Library Product Version
my $dataset = VS; # string | SENDIG Class Identifier
my $var = VSTEST; # string | SENDIG Variable Identifier

eval {
    my $result = $api_instance->mdr_sendig_version_datasets_dataset_variables_var_get(version => $version, dataset => $dataset, var => $var);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_dataset_variables_var_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **dataset** | **string**| SENDIG Class Identifier | 
 **var** | **string**| SENDIG Variable Identifier | 

### Return type

[**SendigDatasetVariable**](SendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_datasets_get**
> SendigDatasets mdr_sendig_version_datasets_get(version => $version)



Get SENDIG Dataset List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi;
my $api_instance = WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-1; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_sendig_version_datasets_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_datasets_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**SendigDatasets**](SendigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sendig_version_get**
> SendigProduct mdr_sendig_version_get(version => $version)



Get SENDIG product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi;
my $api_instance = WWW::OpenAPIClient::SENDImplementationGuideSENDIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-1; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_sendig_version_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SENDImplementationGuideSENDIGApi->mdr_sendig_version_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**SendigProduct**](SendigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

