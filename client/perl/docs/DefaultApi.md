# WWW::OpenAPIClient::DefaultApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::DefaultApi;
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_about_get**](DefaultApi.md#mdr_about_get) | **GET** /mdr/about | 
[**mdr_lastupdated_get**](DefaultApi.md#mdr_lastupdated_get) | **GET** /mdr/lastupdated | 
[**mdr_products_data_analysis_get**](DefaultApi.md#mdr_products_data_analysis_get) | **GET** /mdr/products/DataAnalysis | 
[**mdr_products_data_collection_get**](DefaultApi.md#mdr_products_data_collection_get) | **GET** /mdr/products/DataCollection | 
[**mdr_products_data_tabulation_get**](DefaultApi.md#mdr_products_data_tabulation_get) | **GET** /mdr/products/DataTabulation | 
[**mdr_products_get**](DefaultApi.md#mdr_products_get) | **GET** /mdr/products | 
[**mdr_products_measures_get**](DefaultApi.md#mdr_products_measures_get) | **GET** /mdr/products/Measures | 
[**mdr_products_terminology_get**](DefaultApi.md#mdr_products_terminology_get) | **GET** /mdr/products/Terminology | 


# **mdr_about_get**
> About mdr_about_get()



Get Information About CDISC Library

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->mdr_about_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->mdr_about_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**About**](About.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_lastupdated_get**
> Lastupdated mdr_lastupdated_get()



Get CDISC Library Last Updated

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->mdr_lastupdated_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->mdr_lastupdated_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Lastupdated**](Lastupdated.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_products_data_analysis_get**
> ProductgroupDataAnalysis mdr_products_data_analysis_get()



Get CDISC Library Product Group Data Analysis

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->mdr_products_data_analysis_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->mdr_products_data_analysis_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupDataAnalysis**](ProductgroupDataAnalysis.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_products_data_collection_get**
> ProductgroupDataCollection mdr_products_data_collection_get()



Get CDISC Library Product Group Data Collection

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->mdr_products_data_collection_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->mdr_products_data_collection_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupDataCollection**](ProductgroupDataCollection.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_products_data_tabulation_get**
> ProductgroupDataTabulation mdr_products_data_tabulation_get()



Get CDISC Library Product Group Data Tabulation

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->mdr_products_data_tabulation_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->mdr_products_data_tabulation_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupDataTabulation**](ProductgroupDataTabulation.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_products_get**
> Products mdr_products_get()



Get CDISC Library Products

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->mdr_products_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->mdr_products_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Products**](Products.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_products_measures_get**
> ProductgroupQrs mdr_products_measures_get()



Get CDISC Library Product Group QRS

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->mdr_products_measures_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->mdr_products_measures_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupQrs**](ProductgroupQrs.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_products_terminology_get**
> ProductgroupTerminology mdr_products_terminology_get()



Get CDISC Library Product Group Terminology

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->mdr_products_terminology_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->mdr_products_terminology_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductgroupTerminology**](ProductgroupTerminology.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

