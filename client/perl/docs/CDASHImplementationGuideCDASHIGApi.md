# WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CDASHImplementationGuideCDASHIGApi;
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_cdashig_version_classes_class_domains_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_classes_class_domains_get) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | 
[**mdr_cdashig_version_classes_class_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_classes_class_get) | **GET** /mdr/cdashig/{version}/classes/{class} | 
[**mdr_cdashig_version_classes_class_scenarios_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_classes_class_scenarios_get) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | 
[**mdr_cdashig_version_classes_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_classes_get) | **GET** /mdr/cdashig/{version}/classes | 
[**mdr_cdashig_version_domains_domain_fields_field_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_domains_domain_fields_field_get) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
[**mdr_cdashig_version_domains_domain_fields_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_domains_domain_fields_get) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | 
[**mdr_cdashig_version_domains_domain_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_domains_domain_get) | **GET** /mdr/cdashig/{version}/domains/{domain} | 
[**mdr_cdashig_version_domains_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_domains_get) | **GET** /mdr/cdashig/{version}/domains | 
[**mdr_cdashig_version_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_get) | **GET** /mdr/cdashig/{version} | 
[**mdr_cdashig_version_scenarios_domain_scenario_fields_field_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_scenarios_domain_scenario_fields_field_get) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
[**mdr_cdashig_version_scenarios_domain_scenario_fields_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_scenarios_domain_scenario_fields_get) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
[**mdr_cdashig_version_scenarios_domain_scenario_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_scenarios_domain_scenario_get) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
[**mdr_cdashig_version_scenarios_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_cdashig_version_scenarios_get) | **GET** /mdr/cdashig/{version}/scenarios | 
[**mdr_root_cdashig_domains_domain_fields_field_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_root_cdashig_domains_domain_fields_field_get) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
[**mdr_root_cdashig_scenarios_domain_scenario_fields_field_get**](CDASHImplementationGuideCDASHIGApi.md#mdr_root_cdashig_scenarios_domain_scenario_fields_field_get) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 


# **mdr_cdashig_version_classes_class_domains_get**
> CdashigClassDomains mdr_cdashig_version_classes_class_domains_get(version => $version, class => $class)



Get CDASHIG Class Domain List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version
my $class = Findings; # string | CDASHIG Class Identifier

eval {
    my $result = $api_instance->mdr_cdashig_version_classes_class_domains_get(version => $version, class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_domains_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| CDASHIG Class Identifier | 

### Return type

[**CdashigClassDomains**](CdashigClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_classes_class_get**
> CdashigClass mdr_cdashig_version_classes_class_get(version => $version, class => $class)



Get CDASHIG Class

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version
my $class = Findings; # string | CDASHIG Class Identifier

eval {
    my $result = $api_instance->mdr_cdashig_version_classes_class_get(version => $version, class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| CDASHIG Class Identifier | 

### Return type

[**CdashigClass**](CdashigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_classes_class_scenarios_get**
> CdashigClassScenarios mdr_cdashig_version_classes_class_scenarios_get(version => $version, class => $class)



Get CDASHIG Class Scenario List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version
my $class = Findings; # string | CDASHIG Class Identifier

eval {
    my $result = $api_instance->mdr_cdashig_version_classes_class_scenarios_get(version => $version, class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_class_scenarios_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **class** | **string**| CDASHIG Class Identifier | 

### Return type

[**CdashigClassScenarios**](CdashigClassScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_classes_get**
> CdashigProductClasses mdr_cdashig_version_classes_get(version => $version)



Get CDASHIG Class List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_cdashig_version_classes_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_classes_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**CdashigProductClasses**](CdashigProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_domains_domain_fields_field_get**
> CdashigDomainField mdr_cdashig_version_domains_domain_fields_field_get(version => $version, domain => $domain, field => $field)



Get CDASHIG Domain Field

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version
my $domain = VS; # string | CDASHIG Domain Identifier
my $field = VSDAT; # string | CDASHIG Field Identifier

eval {
    my $result = $api_instance->mdr_cdashig_version_domains_domain_fields_field_get(version => $version, domain => $domain, field => $field);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_fields_field_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **domain** | **string**| CDASHIG Domain Identifier | 
 **field** | **string**| CDASHIG Field Identifier | 

### Return type

[**CdashigDomainField**](CdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_domains_domain_fields_get**
> CdashigDomainFields mdr_cdashig_version_domains_domain_fields_get(version => $version, domain => $domain)



Get CDASHIG Domain Field List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version
my $domain = VS; # string | CDASHIG Domain Identifier

eval {
    my $result = $api_instance->mdr_cdashig_version_domains_domain_fields_get(version => $version, domain => $domain);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_fields_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **domain** | **string**| CDASHIG Domain Identifier | 

### Return type

[**CdashigDomainFields**](CdashigDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_domains_domain_get**
> CdashigDomain mdr_cdashig_version_domains_domain_get(version => $version, domain => $domain)



Get CDASHIG Domain

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version
my $domain = VS; # string | CDASHIG Domain Identifier

eval {
    my $result = $api_instance->mdr_cdashig_version_domains_domain_get(version => $version, domain => $domain);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_domain_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **domain** | **string**| CDASHIG Domain Identifier | 

### Return type

[**CdashigDomain**](CdashigDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_domains_get**
> CdashigProductDomains mdr_cdashig_version_domains_get(version => $version)



Get CDASHIG Domain List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_cdashig_version_domains_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_domains_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**CdashigProductDomains**](CdashigProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_get**
> CdashigProduct mdr_cdashig_version_get(version => $version)



Get CDASHIG Product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_cdashig_version_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**CdashigProduct**](CdashigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_scenarios_domain_scenario_fields_field_get**
> CdashigScenarioField mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(version => $version, domain => $domain, scenario => $scenario, field => $field)



Get CDASHIG Scenario Field

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version
my $domain = VS; # string | CDASHIG Domain Identifier
my $scenario = Generic; # string | CDASHIG Scenario Identifier
my $field = VSDAT; # string | CDASHIG Field Identifier

eval {
    my $result = $api_instance->mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(version => $version, domain => $domain, scenario => $scenario, field => $field);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_fields_field_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **domain** | **string**| CDASHIG Domain Identifier | 
 **scenario** | **string**| CDASHIG Scenario Identifier | 
 **field** | **string**| CDASHIG Field Identifier | 

### Return type

[**CdashigScenarioField**](CdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_scenarios_domain_scenario_fields_get**
> CdashigScenarioFields mdr_cdashig_version_scenarios_domain_scenario_fields_get(version => $version, domain => $domain, scenario => $scenario)



Get CDASHIG Scenario Field List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version
my $domain = VS; # string | CDASHIG Domain Identifier
my $scenario = HorizontalGeneric; # string | CDASHIG Scenario Identifier

eval {
    my $result = $api_instance->mdr_cdashig_version_scenarios_domain_scenario_fields_get(version => $version, domain => $domain, scenario => $scenario);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_fields_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **domain** | **string**| CDASHIG Domain Identifier | 
 **scenario** | **string**| CDASHIG Scenario Identifier | 

### Return type

[**CdashigScenarioFields**](CdashigScenarioFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_scenarios_domain_scenario_get**
> CdashigScenario mdr_cdashig_version_scenarios_domain_scenario_get(version => $version, domain => $domain, scenario => $scenario)



Get CDASHIG Scenario

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version
my $domain = VS; # string | CDASHIG Domain Identifier
my $scenario = HorizontalGeneric; # string | CDASHIG Scenario Identifier

eval {
    my $result = $api_instance->mdr_cdashig_version_scenarios_domain_scenario_get(version => $version, domain => $domain, scenario => $scenario);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_domain_scenario_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 
 **domain** | **string**| CDASHIG Domain Identifier | 
 **scenario** | **string**| CDASHIG Scenario Identifier | 

### Return type

[**CdashigScenario**](CdashigScenario.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_scenarios_get**
> CdashigProductScenarios mdr_cdashig_version_scenarios_get(version => $version)



Get CDASHIG Scenario List

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $version = 2-1; # string | CDISC Library Product Version

eval {
    my $result = $api_instance->mdr_cdashig_version_scenarios_get(version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_cdashig_version_scenarios_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **string**| CDISC Library Product Version | 

### Return type

[**CdashigProductScenarios**](CdashigProductScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_cdashig_domains_domain_fields_field_get**
> RootCdashigDomainField mdr_root_cdashig_domains_domain_fields_field_get(domain => $domain, field => $field)



Get Root CDASHIG Domain Field

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $domain = VS; # string | CDASHIG Domain Identifier
my $field = VSDAT; # string | CDASHIG Field Identifier

eval {
    my $result = $api_instance->mdr_root_cdashig_domains_domain_fields_field_get(domain => $domain, field => $field);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_root_cdashig_domains_domain_fields_field_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **string**| CDASHIG Domain Identifier | 
 **field** | **string**| CDASHIG Field Identifier | 

### Return type

[**RootCdashigDomainField**](RootCdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_cdashig_scenarios_domain_scenario_fields_field_get**
> RootCdashigScenarioField mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(domain => $domain, scenario => $scenario, field => $field)



Get Root CDASHIG Scenario Field

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi;
my $api_instance = WWW::OpenAPIClient::CDASHImplementationGuideCDASHIGApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $domain = VS; # string | CDASHIG Domain Identifier
my $scenario = Generic; # string | CDASHIG Scenario Identifier
my $field = VSDAT; # string | CDASHIG Field Identifier

eval {
    my $result = $api_instance->mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(domain => $domain, scenario => $scenario, field => $field);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CDASHImplementationGuideCDASHIGApi->mdr_root_cdashig_scenarios_domain_scenario_fields_field_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **string**| CDASHIG Domain Identifier | 
 **scenario** | **string**| CDASHIG Scenario Identifier | 
 **field** | **string**| CDASHIG Field Identifier | 

### Return type

[**RootCdashigScenarioField**](RootCdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

