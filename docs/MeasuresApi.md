# WWW::OpenAPIClient::MeasuresApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MeasuresApi;
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_qrs_measure_version_get**](MeasuresApi.md#mdr_qrs_measure_version_get) | **GET** /mdr/qrs/{measure}/{version} | 
[**mdr_qrs_measure_version_items_get**](MeasuresApi.md#mdr_qrs_measure_version_items_get) | **GET** /mdr/qrs/{measure}/{version}/items | 
[**mdr_qrs_measure_version_items_item_get**](MeasuresApi.md#mdr_qrs_measure_version_items_item_get) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | 
[**mdr_qrs_measure_version_responsegroups_get**](MeasuresApi.md#mdr_qrs_measure_version_responsegroups_get) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | 
[**mdr_qrs_measure_version_responsegroups_responsegroup_get**](MeasuresApi.md#mdr_qrs_measure_version_responsegroups_responsegroup_get) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 


# **mdr_qrs_measure_version_get**
> QrsProduct mdr_qrs_measure_version_get(measure => $measure, version => $version)



Get QRS Product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MeasuresApi;
my $api_instance = WWW::OpenAPIClient::MeasuresApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $measure = AIMS1; # string | QRS Measure Identifier
my $version = 1-0; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_qrs_measure_version_get(measure => $measure, version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MeasuresApi->mdr_qrs_measure_version_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **string**| QRS Measure Identifier | 
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**QrsProduct**](QrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_qrs_measure_version_items_get**
> QrsItems mdr_qrs_measure_version_items_get(measure => $measure, version => $version)



Get QRS Item List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MeasuresApi;
my $api_instance = WWW::OpenAPIClient::MeasuresApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $measure = AIMS1; # string | QRS Measure Identifier
my $version = 1-0; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_qrs_measure_version_items_get(measure => $measure, version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MeasuresApi->mdr_qrs_measure_version_items_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **string**| QRS Measure Identifier | 
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**QrsItems**](QrsItems.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_qrs_measure_version_items_item_get**
> QrsItem mdr_qrs_measure_version_items_item_get(measure => $measure, version => $version, item => $item)



Get QRS Item

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MeasuresApi;
my $api_instance = WWW::OpenAPIClient::MeasuresApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $measure = AIMS1; # string | QRS Measure Identifier
my $version = 1-0; # string | CDISC Library Product Version
my $item = AIMS01.001; # string | QRS Measure Item Identifier

eval {
    my $result = $api_instance->mdr_qrs_measure_version_items_item_get(measure => $measure, version => $version, item => $item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MeasuresApi->mdr_qrs_measure_version_items_item_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **string**| QRS Measure Identifier | 
 **version** | **string**| CDISC Library Product Version | 
 **item** | **string**| QRS Measure Item Identifier | 

### Return type

[**QrsItem**](QrsItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_qrs_measure_version_responsegroups_get**
> QrsResponsegroups mdr_qrs_measure_version_responsegroups_get(measure => $measure, version => $version)



Get QRS Response Group List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MeasuresApi;
my $api_instance = WWW::OpenAPIClient::MeasuresApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $measure = AIMS1; # string | QRS Measure Identifier
my $version = 1-0; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_qrs_measure_version_responsegroups_get(measure => $measure, version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MeasuresApi->mdr_qrs_measure_version_responsegroups_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **string**| QRS Measure Identifier | 
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**QrsResponsegroups**](QrsResponsegroups.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_qrs_measure_version_responsegroups_responsegroup_get**
> QrsResponsegroup mdr_qrs_measure_version_responsegroups_responsegroup_get(measure => $measure, version => $version, responsegroup => $responsegroup)



Get QRS Response Group

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MeasuresApi;
my $api_instance = WWW::OpenAPIClient::MeasuresApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $measure = AIMS1; # string | QRS Measure Identifier
my $version = 1-0; # string | CDISC Library Product Version
my $responsegroup = AIMS1.11to12; # string | QRS Measure's Response Group Identifier

eval {
    my $result = $api_instance->mdr_qrs_measure_version_responsegroups_responsegroup_get(measure => $measure, version => $version, responsegroup => $responsegroup);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MeasuresApi->mdr_qrs_measure_version_responsegroups_responsegroup_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **string**| QRS Measure Identifier | 
 **version** | **string**| CDISC Library Product Version | 
 **responsegroup** | **string**| QRS Measure&#39;s Response Group Identifier | 

### Return type

[**QrsResponsegroup**](QrsResponsegroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

