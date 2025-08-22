# WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_cdash_version_classes_class_domains_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_classes_class_domains_get) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
[**mdr_cdash_version_classes_class_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_classes_class_fields_field_get) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**mdr_cdash_version_classes_class_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_classes_class_get) | **GET** /mdr/cdash/{version}/classes/{class} | 
[**mdr_cdash_version_classes_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_classes_get) | **GET** /mdr/cdash/{version}/classes | 
[**mdr_cdash_version_domains_domain_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_domains_domain_fields_field_get) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**mdr_cdash_version_domains_domain_fields_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_domains_domain_fields_get) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
[**mdr_cdash_version_domains_domain_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_domains_domain_get) | **GET** /mdr/cdash/{version}/domains/{domain} | 
[**mdr_cdash_version_domains_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_domains_get) | **GET** /mdr/cdash/{version}/domains | 
[**mdr_cdash_version_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_cdash_version_get) | **GET** /mdr/cdash/{version} | 
[**mdr_root_cdash_classes_class_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_root_cdash_classes_class_fields_field_get) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**mdr_root_cdash_domains_domain_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdr_root_cdash_domains_domain_fields_field_get) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 


# **mdr_cdash_version_classes_class_domains_get**
> CdashClassDomains mdr_cdash_version_classes_class_domains_get(version => $version, class => $class)



Get CDASH Class Domain List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;
my $api_instance = WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-1; # string | CDISC Library Product Version
my $class = SpecialPurpose; # string | CDASH Class Identifier

eval {
    my $result = $api_instance->mdr_cdash_version_classes_class_domains_get(version => $version, class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_domains_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| CDASH Class Identifier | 

### Return type

[**CdashClassDomains**](CdashClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_classes_class_fields_field_get**
> CdashClassField mdr_cdash_version_classes_class_fields_field_get(version => $version, class => $class, field => $field)



Get CDASH Class Field

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;
my $api_instance = WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-1; # string | CDISC Library Product Version
my $class = Timing; # string | CDASH Class Identifier
my $field = --DAT; # string | CDASH Field Identifier

eval {
    my $result = $api_instance->mdr_cdash_version_classes_class_fields_field_get(version => $version, class => $class, field => $field);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_fields_field_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| CDASH Class Identifier | 
 **field** | **string**| CDASH Field Identifier | 

### Return type

[**CdashClassField**](CdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_classes_class_get**
> CdashClass mdr_cdash_version_classes_class_get(version => $version, class => $class)



Get CDASH Class

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;
my $api_instance = WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-1; # string | CDISC Library Product Version
my $class = Timing; # string | CDASH Class Identifier

eval {
    my $result = $api_instance->mdr_cdash_version_classes_class_get(version => $version, class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_class_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| CDASH Class Identifier | 

### Return type

[**CdashClass**](CdashClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_classes_get**
> CdashProductClasses mdr_cdash_version_classes_get(version => $version)



Get CDASH Class List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;
my $api_instance = WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-1; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_cdash_version_classes_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_classes_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**CdashProductClasses**](CdashProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_domains_domain_fields_field_get**
> CdashDomainField mdr_cdash_version_domains_domain_fields_field_get(version => $version, domain => $domain, field => $field)



Get CDASH Domain Field

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;
my $api_instance = WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-1; # string | CDISC Library Product Version
my $domain = DM; # string | CDASH Domain Identifier
my $field = AGE; # string | CDASH Field Identifier

eval {
    my $result = $api_instance->mdr_cdash_version_domains_domain_fields_field_get(version => $version, domain => $domain, field => $field);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_fields_field_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **domain** | **string**| CDASH Domain Identifier | 
 **field** | **string**| CDASH Field Identifier | 

### Return type

[**CdashDomainField**](CdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_domains_domain_fields_get**
> CdashDomainFields mdr_cdash_version_domains_domain_fields_get(version => $version, domain => $domain)



Get CDASH Domain Field List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;
my $api_instance = WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-1; # string | CDISC Library Product Version
my $domain = DM; # string | CDASH Domain Identifier

eval {
    my $result = $api_instance->mdr_cdash_version_domains_domain_fields_get(version => $version, domain => $domain);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_fields_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **domain** | **string**| CDASH Domain Identifier | 

### Return type

[**CdashDomainFields**](CdashDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_domains_domain_get**
> CdashDomain mdr_cdash_version_domains_domain_get(version => $version, domain => $domain)



Get CDASH Domain

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;
my $api_instance = WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-1; # string | CDISC Library Product Version
my $domain = DM; # string | CDASH Domain Identifier

eval {
    my $result = $api_instance->mdr_cdash_version_domains_domain_get(version => $version, domain => $domain);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_domain_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **domain** | **string**| CDASH Domain Identifier | 

### Return type

[**CdashDomain**](CdashDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_domains_get**
> CdashProductDomains mdr_cdash_version_domains_get(version => $version)



Get CDASH Domain List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;
my $api_instance = WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-1; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_cdash_version_domains_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_domains_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**CdashProductDomains**](CdashProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_get**
> CdashProduct mdr_cdash_version_get(version => $version)



Get CDASH Product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;
my $api_instance = WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 1-1; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_cdash_version_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_cdash_version_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**CdashProduct**](CdashProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_cdash_classes_class_fields_field_get**
> RootCdashClassField mdr_root_cdash_classes_class_fields_field_get(class => $class, field => $field)



Get Root CDASH Class Field

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;
my $api_instance = WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $class = Timing; # string | CDASH Class Identifier
my $field = --DAT; # string | CDASH Field Identifier

eval {
    my $result = $api_instance->mdr_root_cdash_classes_class_fields_field_get(class => $class, field => $field);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_root_cdash_classes_class_fields_field_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class** | **string**| CDASH Class Identifier | 
 **field** | **string**| CDASH Field Identifier | 

### Return type

[**RootCdashClassField**](RootCdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_cdash_domains_domain_fields_field_get**
> RootCdashDomainField mdr_root_cdash_domains_domain_fields_field_get(domain => $domain, field => $field)



Get Root CDASH Domain Field

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi;
my $api_instance = WWW::OpenAPIClient::ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $domain = DM; # string | CDASH Domain Identifier
my $field = AGE; # string | CDASH Field Identifier

eval {
    my $result = $api_instance->mdr_root_cdash_domains_domain_fields_field_get(domain => $domain, field => $field);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdr_root_cdash_domains_domain_fields_field_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **string**| CDASH Domain Identifier | 
 **field** | **string**| CDASH Field Identifier | 

### Return type

[**RootCdashDomainField**](RootCdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

