# WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::StudyDataTabulationModelSDTMApi;
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sdtm_classes_class_variables_var_get**](StudyDataTabulationModelSDTMApi.md#mdr_root_sdtm_classes_class_variables_var_get) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**mdr_root_sdtm_datasets_dataset_variables_var_get**](StudyDataTabulationModelSDTMApi.md#mdr_root_sdtm_datasets_dataset_variables_var_get) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**mdr_sdtm_version_classes_class_datasets_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_class_datasets_get) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**mdr_sdtm_version_classes_class_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_class_get) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**mdr_sdtm_version_classes_class_variables_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_class_variables_get) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**mdr_sdtm_version_classes_class_variables_var_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_class_variables_var_get) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**mdr_sdtm_version_classes_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_classes_get) | **GET** /mdr/sdtm/{version}/classes | 
[**mdr_sdtm_version_datasets_dataset_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_datasets_dataset_get) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**mdr_sdtm_version_datasets_dataset_variables_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_datasets_dataset_variables_get) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**mdr_sdtm_version_datasets_dataset_variables_var_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_datasets_dataset_variables_var_get) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**mdr_sdtm_version_datasets_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_datasets_get) | **GET** /mdr/sdtm/{version}/datasets | 
[**mdr_sdtm_version_get**](StudyDataTabulationModelSDTMApi.md#mdr_sdtm_version_get) | **GET** /mdr/sdtm/{version} | 


# **mdr_root_sdtm_classes_class_variables_var_get**
> RootSdtmClassVariable mdr_root_sdtm_classes_class_variables_var_get(class => $class, var => $var)



Get Root of SDTM Class Variable

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi;
my $api_instance = WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $class = GeneralObservations; # string | SDTM Class Identifier
my $var = --DTC; # string | SDTM Variable Identifier

eval {
    my $result = $api_instance->mdr_root_sdtm_classes_class_variables_var_get(class => $class, var => $var);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudyDataTabulationModelSDTMApi->mdr_root_sdtm_classes_class_variables_var_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class** | **string**| SDTM Class Identifier | 
 **var** | **string**| SDTM Variable Identifier | 

### Return type

[**RootSdtmClassVariable**](RootSdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_sdtm_datasets_dataset_variables_var_get**
> RootSdtmDatasetVariable mdr_root_sdtm_datasets_dataset_variables_var_get(dataset => $dataset, var => $var)



Get Root SDTM Dataset Variable

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi;
my $api_instance = WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $dataset = DM; # string | SDTM Dataset Identifier
my $var = SUBJID; # string | SDTM Variable Identifier

eval {
    my $result = $api_instance->mdr_root_sdtm_datasets_dataset_variables_var_get(dataset => $dataset, var => $var);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudyDataTabulationModelSDTMApi->mdr_root_sdtm_datasets_dataset_variables_var_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **string**| SDTM Dataset Identifier | 
 **var** | **string**| SDTM Variable Identifier | 

### Return type

[**RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_classes_class_datasets_get**
> SdtmClassDatasets mdr_sdtm_version_classes_class_datasets_get(version => $version, class => $class)



Get SDTM Class Dataset List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi;
my $api_instance = WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-8; # string | CDISC Library Product Version
my $class = SpecialPurpose; # string | SDTM Class Identifier

eval {
    my $result = $api_instance->mdr_sdtm_version_classes_class_datasets_get(version => $version, class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_datasets_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| SDTM Class Identifier | 

### Return type

[**SdtmClassDatasets**](SdtmClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_classes_class_get**
> SdtmClass mdr_sdtm_version_classes_class_get(version => $version, class => $class)



Get SDTM Class

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi;
my $api_instance = WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-8; # string | CDISC Library Product Version
my $class = Findings; # string | SDTM Class Identifier

eval {
    my $result = $api_instance->mdr_sdtm_version_classes_class_get(version => $version, class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| SDTM Class Identifier | 

### Return type

[**SdtmClass**](SdtmClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_classes_class_variables_get**
> SdtmClassVariables mdr_sdtm_version_classes_class_variables_get(version => $version, class => $class)



Get SDTM Class Variable List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi;
my $api_instance = WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-8; # string | CDISC Library Product Version
my $class = GeneralObservations; # string | SDTM Class Identifier

eval {
    my $result = $api_instance->mdr_sdtm_version_classes_class_variables_get(version => $version, class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_variables_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| SDTM Class Identifier | 

### Return type

[**SdtmClassVariables**](SdtmClassVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_classes_class_variables_var_get**
> SdtmClassVariable mdr_sdtm_version_classes_class_variables_var_get(version => $version, class => $class, var => $var)



Get SDTM Class Variable

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi;
my $api_instance = WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-8; # string | CDISC Library Product Version
my $class = GeneralObservations; # string | SDTM Class Identifier
my $var = --DTC; # string | SDTM Variable Identifier

eval {
    my $result = $api_instance->mdr_sdtm_version_classes_class_variables_var_get(version => $version, class => $class, var => $var);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_class_variables_var_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| SDTM Class Identifier | 
 **var** | **string**| SDTM Variable Identifier | 

### Return type

[**SdtmClassVariable**](SdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_classes_get**
> SdtmClasses mdr_sdtm_version_classes_get(version => $version)



Get SDTM Class List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi;
my $api_instance = WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-8; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_sdtm_version_classes_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_classes_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**SdtmClasses**](SdtmClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_datasets_dataset_get**
> SdtmDataset mdr_sdtm_version_datasets_dataset_get(version => $version, dataset => $dataset)



Get SDTM Dataset

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi;
my $api_instance = WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-8; # string | CDISC Library Product Version
my $dataset = DM; # string | SDTM Dataset Identifier

eval {
    my $result = $api_instance->mdr_sdtm_version_datasets_dataset_get(version => $version, dataset => $dataset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **dataset** | **string**| SDTM Dataset Identifier | 

### Return type

[**SdtmDataset**](SdtmDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_datasets_dataset_variables_get**
> SdtmDatasetVariables mdr_sdtm_version_datasets_dataset_variables_get(version => $version, dataset => $dataset)



Get SDTM Dataset Variable List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi;
my $api_instance = WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-8; # string | CDISC Library Product Version
my $dataset = DM; # string | SDTM Dataset Identifier

eval {
    my $result = $api_instance->mdr_sdtm_version_datasets_dataset_variables_get(version => $version, dataset => $dataset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_variables_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **dataset** | **string**| SDTM Dataset Identifier | 

### Return type

[**SdtmDatasetVariables**](SdtmDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_datasets_dataset_variables_var_get**
> SdtmDatasetVariable mdr_sdtm_version_datasets_dataset_variables_var_get(version => $version, dataset => $dataset, var => $var)



Get SDTM Dataset Variable

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi;
my $api_instance = WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-8; # string | CDISC Library Product Version
my $dataset = DM; # string | SDTM Dataset Identifier
my $var = SUBJID; # string | SDTM Variable Identifier

eval {
    my $result = $api_instance->mdr_sdtm_version_datasets_dataset_variables_var_get(version => $version, dataset => $dataset, var => $var);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_dataset_variables_var_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **dataset** | **string**| SDTM Dataset Identifier | 
 **var** | **string**| SDTM Variable Identifier | 

### Return type

[**SdtmDatasetVariable**](SdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_datasets_get**
> SdtmDatasets mdr_sdtm_version_datasets_get(version => $version)



Get SDTM Dataset List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi;
my $api_instance = WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-8; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_sdtm_version_datasets_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_datasets_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**SdtmDatasets**](SdtmDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_sdtm_version_get**
> SdtmProduct mdr_sdtm_version_get(version => $version)



Get SDTM product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi;
my $api_instance = WWW::OpenAPIClient::StudyDataTabulationModelSDTMApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-8; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_sdtm_version_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudyDataTabulationModelSDTMApi->mdr_sdtm_version_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**SdtmProduct**](SdtmProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

