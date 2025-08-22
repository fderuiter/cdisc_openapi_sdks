# CDASHIMPLEMENTATIONGUIDECDASHIG_API

All URIs are relative to *https://library.cdisc.org/api*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**mdr_cdashig_version_classes_class_domains_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_classes_class_domains_get) | **Get** /mdr/cdashig/{version}/classes/{class}/domains | 
[**mdr_cdashig_version_classes_class_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_classes_class_get) | **Get** /mdr/cdashig/{version}/classes/{class} | 
[**mdr_cdashig_version_classes_class_scenarios_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_classes_class_scenarios_get) | **Get** /mdr/cdashig/{version}/classes/{class}/scenarios | 
[**mdr_cdashig_version_classes_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_classes_get) | **Get** /mdr/cdashig/{version}/classes | 
[**mdr_cdashig_version_domains_domain_fields_field_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_domains_domain_fields_field_get) | **Get** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
[**mdr_cdashig_version_domains_domain_fields_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_domains_domain_fields_get) | **Get** /mdr/cdashig/{version}/domains/{domain}/fields | 
[**mdr_cdashig_version_domains_domain_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_domains_domain_get) | **Get** /mdr/cdashig/{version}/domains/{domain} | 
[**mdr_cdashig_version_domains_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_domains_get) | **Get** /mdr/cdashig/{version}/domains | 
[**mdr_cdashig_version_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_get) | **Get** /mdr/cdashig/{version} | 
[**mdr_cdashig_version_scenarios_domain_scenario_fields_field_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_scenarios_domain_scenario_fields_field_get) | **Get** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
[**mdr_cdashig_version_scenarios_domain_scenario_fields_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_scenarios_domain_scenario_fields_get) | **Get** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
[**mdr_cdashig_version_scenarios_domain_scenario_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_scenarios_domain_scenario_get) | **Get** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
[**mdr_cdashig_version_scenarios_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_cdashig_version_scenarios_get) | **Get** /mdr/cdashig/{version}/scenarios | 
[**mdr_root_cdashig_domains_domain_fields_field_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_root_cdashig_domains_domain_fields_field_get) | **Get** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
[**mdr_root_cdashig_scenarios_domain_scenario_fields_field_get**](CDASHIMPLEMENTATIONGUIDECDASHIG_API.md#mdr_root_cdashig_scenarios_domain_scenario_fields_field_get) | **Get** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 


# **mdr_cdashig_version_classes_class_domains_get**
> mdr_cdashig_version_classes_class_domains_get (version: STRING_32 ; var_class: STRING_32 ): detachable CDASHIG_CLASS_DOMAINS




Get CDASHIG Class Domain List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| CDASHIG Class Identifier | [default to null]

### Return type

[**CDASHIG_CLASS_DOMAINS**](CdashigClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_classes_class_get**
> mdr_cdashig_version_classes_class_get (version: STRING_32 ; var_class: STRING_32 ): detachable CDASHIG_CLASS




Get CDASHIG Class


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| CDASHIG Class Identifier | [default to null]

### Return type

[**CDASHIG_CLASS**](CdashigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_classes_class_scenarios_get**
> mdr_cdashig_version_classes_class_scenarios_get (version: STRING_32 ; var_class: STRING_32 ): detachable CDASHIG_CLASS_SCENARIOS




Get CDASHIG Class Scenario List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| CDASHIG Class Identifier | [default to null]

### Return type

[**CDASHIG_CLASS_SCENARIOS**](CdashigClassScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_classes_get**
> mdr_cdashig_version_classes_get (version: STRING_32 ): detachable CDASHIG_PRODUCT_CLASSES




Get CDASHIG Class List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**CDASHIG_PRODUCT_CLASSES**](CdashigProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_domains_domain_fields_field_get**
> mdr_cdashig_version_domains_domain_fields_field_get (version: STRING_32 ; domain: STRING_32 ; field: STRING_32 ): detachable CDASHIG_DOMAIN_FIELD




Get CDASHIG Domain Field


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **domain** | **STRING_32**| CDASHIG Domain Identifier | [default to null]
 **field** | **STRING_32**| CDASHIG Field Identifier | [default to null]

### Return type

[**CDASHIG_DOMAIN_FIELD**](CdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_domains_domain_fields_get**
> mdr_cdashig_version_domains_domain_fields_get (version: STRING_32 ; domain: STRING_32 ): detachable CDASHIG_DOMAIN_FIELDS




Get CDASHIG Domain Field List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **domain** | **STRING_32**| CDASHIG Domain Identifier | [default to null]

### Return type

[**CDASHIG_DOMAIN_FIELDS**](CdashigDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_domains_domain_get**
> mdr_cdashig_version_domains_domain_get (version: STRING_32 ; domain: STRING_32 ): detachable CDASHIG_DOMAIN




Get CDASHIG Domain


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **domain** | **STRING_32**| CDASHIG Domain Identifier | [default to null]

### Return type

[**CDASHIG_DOMAIN**](CdashigDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_domains_get**
> mdr_cdashig_version_domains_get (version: STRING_32 ): detachable CDASHIG_PRODUCT_DOMAINS




Get CDASHIG Domain List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**CDASHIG_PRODUCT_DOMAINS**](CdashigProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_get**
> mdr_cdashig_version_get (version: STRING_32 ): detachable CDASHIG_PRODUCT




Get CDASHIG Product


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**CDASHIG_PRODUCT**](CdashigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_scenarios_domain_scenario_fields_field_get**
> mdr_cdashig_version_scenarios_domain_scenario_fields_field_get (version: STRING_32 ; domain: STRING_32 ; scenario: STRING_32 ; field: STRING_32 ): detachable CDASHIG_SCENARIO_FIELD




Get CDASHIG Scenario Field


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **domain** | **STRING_32**| CDASHIG Domain Identifier | [default to null]
 **scenario** | **STRING_32**| CDASHIG Scenario Identifier | [default to null]
 **field** | **STRING_32**| CDASHIG Field Identifier | [default to null]

### Return type

[**CDASHIG_SCENARIO_FIELD**](CdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_scenarios_domain_scenario_fields_get**
> mdr_cdashig_version_scenarios_domain_scenario_fields_get (version: STRING_32 ; domain: STRING_32 ; scenario: STRING_32 ): detachable CDASHIG_SCENARIO_FIELDS




Get CDASHIG Scenario Field List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **domain** | **STRING_32**| CDASHIG Domain Identifier | [default to null]
 **scenario** | **STRING_32**| CDASHIG Scenario Identifier | [default to null]

### Return type

[**CDASHIG_SCENARIO_FIELDS**](CdashigScenarioFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_scenarios_domain_scenario_get**
> mdr_cdashig_version_scenarios_domain_scenario_get (version: STRING_32 ; domain: STRING_32 ; scenario: STRING_32 ): detachable CDASHIG_SCENARIO




Get CDASHIG Scenario


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **domain** | **STRING_32**| CDASHIG Domain Identifier | [default to null]
 **scenario** | **STRING_32**| CDASHIG Scenario Identifier | [default to null]

### Return type

[**CDASHIG_SCENARIO**](CdashigScenario.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdashig_version_scenarios_get**
> mdr_cdashig_version_scenarios_get (version: STRING_32 ): detachable CDASHIG_PRODUCT_SCENARIOS




Get CDASHIG Scenario List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**CDASHIG_PRODUCT_SCENARIOS**](CdashigProductScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_cdashig_domains_domain_fields_field_get**
> mdr_root_cdashig_domains_domain_fields_field_get (domain: STRING_32 ; field: STRING_32 ): detachable ROOT_CDASHIG_DOMAIN_FIELD




Get Root CDASHIG Domain Field


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **STRING_32**| CDASHIG Domain Identifier | [default to null]
 **field** | **STRING_32**| CDASHIG Field Identifier | [default to null]

### Return type

[**ROOT_CDASHIG_DOMAIN_FIELD**](RootCdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_cdashig_scenarios_domain_scenario_fields_field_get**
> mdr_root_cdashig_scenarios_domain_scenario_fields_field_get (domain: STRING_32 ; scenario: STRING_32 ; field: STRING_32 ): detachable ROOT_CDASHIG_SCENARIO_FIELD




Get Root CDASHIG Scenario Field


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **STRING_32**| CDASHIG Domain Identifier | [default to null]
 **scenario** | **STRING_32**| CDASHIG Scenario Identifier | [default to null]
 **field** | **STRING_32**| CDASHIG Field Identifier | [default to null]

### Return type

[**ROOT_CDASHIG_SCENARIO_FIELD**](RootCdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

