# WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::SDTMImplementationGuideSDTMIGApi;
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sdtmig_datasets_dataset_variables_var_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_root_sdtmig_datasets_dataset_variables_var_get) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**mdr_sdtmig_version_classes_class_datasets_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_classes_class_datasets_get) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**mdr_sdtmig_version_classes_class_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_classes_class_get) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
[**mdr_sdtmig_version_classes_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_classes_get) | **GET** /mdr/sdtmig/{version}/classes | 
[**mdr_sdtmig_version_datasets_dataset_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_datasets_dataset_get) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**mdr_sdtmig_version_datasets_dataset_variables_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_datasets_dataset_variables_get) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**mdr_sdtmig_version_datasets_dataset_variables_var_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_datasets_dataset_variables_var_get) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**mdr_sdtmig_version_datasets_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_datasets_get) | **GET** /mdr/sdtmig/{version}/datasets | 
[**mdr_sdtmig_version_get**](SDTMImplementationGuideSDTMIGApi.md#mdr_sdtmig_version_get) | **GET** /mdr/sdtmig/{version} | 


# **mdr_root_sdtmig_datasets_dataset_variables_var_get**
> RootSdtmigDatasetVariable mdr_root_sdtmig_datasets_dataset_variables_var_get(dataset => $dataset, var => $var)



Get Root SDTMIG Dataset Variable

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi;
my $api_instance = WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $dataset = DM; # string | SDTMIG Dataset Identifier
my $var = SUBJID; # string | SDTMIG Variable Identifier

eval {
    my $result = $api_instance->mdr_root_sdtmig_datasets_dataset_variables_var_get(dataset => $dataset, var => $var);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_root_sdtmig_datasets_dataset_variables_var_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **string**| SDTMIG Dataset Identifier | 
 **var** | **string**| SDTMIG Variable Identifier | 

### Return type

[**RootSdtmigDatasetVariable**](RootSdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_classes_class_datasets_get**
> SdtmigClassDatasets mdr_sdtmig_version_classes_class_datasets_get(version => $version, class => $class)



Get SDTMIG Class Dataset List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi;
my $api_instance = WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-3; # string | CDISC Library Product Version
my $class = Findings; # string | SDTMIG Class Identifier

eval {
    my $result = $api_instance->mdr_sdtmig_version_classes_class_datasets_get(version => $version, class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_class_datasets_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| SDTMIG Class Identifier | 

### Return type

[**SdtmigClassDatasets**](SdtmigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_classes_class_get**
> SdtmigClass mdr_sdtmig_version_classes_class_get(version => $version, class => $class)



Get SDTMIG Class

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi;
my $api_instance = WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-3; # string | CDISC Library Product Version
my $class = Findings; # string | SDTMIG Class Identifier

eval {
    my $result = $api_instance->mdr_sdtmig_version_classes_class_get(version => $version, class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_class_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| SDTMIG Class Identifier | 

### Return type

[**SdtmigClass**](SdtmigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_classes_get**
> SdtmigClasses mdr_sdtmig_version_classes_get(version => $version)



Get SDTMIG Class List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi;
my $api_instance = WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-3; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_sdtmig_version_classes_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_classes_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**SdtmigClasses**](SdtmigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_datasets_dataset_get**
> SdtmigDataset mdr_sdtmig_version_datasets_dataset_get(version => $version, dataset => $dataset)



Get SDTMIG Dataset

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi;
my $api_instance = WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-3; # string | CDISC Library Product Version
my $dataset = LB; # string | SDTMIG Dataset Identifier

eval {
    my $result = $api_instance->mdr_sdtmig_version_datasets_dataset_get(version => $version, dataset => $dataset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **dataset** | **string**| SDTMIG Dataset Identifier | 

### Return type

[**SdtmigDataset**](SdtmigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_datasets_dataset_variables_get**
> SdtmigDatasetVariables mdr_sdtmig_version_datasets_dataset_variables_get(version => $version, dataset => $dataset)



Get SDTMIG Dataset Variable List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi;
my $api_instance = WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-3; # string | CDISC Library Product Version
my $dataset = LB; # string | SDTMIG Dataset Identifier

eval {
    my $result = $api_instance->mdr_sdtmig_version_datasets_dataset_variables_get(version => $version, dataset => $dataset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_variables_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **dataset** | **string**| SDTMIG Dataset Identifier | 

### Return type

[**SdtmigDatasetVariables**](SdtmigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_datasets_dataset_variables_var_get**
> SdtmigDatasetVariable mdr_sdtmig_version_datasets_dataset_variables_var_get(version => $version, dataset => $dataset, var => $var)



Get SDTMIG Dataset Variable

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi;
my $api_instance = WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-3; # string | CDISC Library Product Version
my $dataset = LB; # string | SDTMIG Dataset Identifier
my $var = LBDTC; # string | SDTMIG Variable Identifier

eval {
    my $result = $api_instance->mdr_sdtmig_version_datasets_dataset_variables_var_get(version => $version, dataset => $dataset, var => $var);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_dataset_variables_var_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **dataset** | **string**| SDTMIG Dataset Identifier | 
 **var** | **string**| SDTMIG Variable Identifier | 

### Return type

[**SdtmigDatasetVariable**](SdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_datasets_get**
> SdtmigDatasets mdr_sdtmig_version_datasets_get(version => $version)



Get SDTMIG Dataset List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi;
my $api_instance = WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-3; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_sdtmig_version_datasets_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_datasets_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**SdtmigDatasets**](SdtmigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtmig_version_get**
> SdtmigProduct mdr_sdtmig_version_get(version => $version)



Get SDTMIG product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi;
my $api_instance = WWW::OpenAPIClient::SDTMImplementationGuideSDTMIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 3-3; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_sdtmig_version_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SDTMImplementationGuideSDTMIGApi->mdr_sdtmig_version_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**SdtmigProduct**](SdtmigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

