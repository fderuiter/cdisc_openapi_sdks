# CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API

All URIs are relative to *https://library.cdisc.org/api*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**mdr_cdash_version_classes_class_domains_get**](CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API.md#mdr_cdash_version_classes_class_domains_get) | **Get** /mdr/cdash/{version}/classes/{class}/domains | 
[**mdr_cdash_version_classes_class_fields_field_get**](CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API.md#mdr_cdash_version_classes_class_fields_field_get) | **Get** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**mdr_cdash_version_classes_class_get**](CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API.md#mdr_cdash_version_classes_class_get) | **Get** /mdr/cdash/{version}/classes/{class} | 
[**mdr_cdash_version_classes_get**](CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API.md#mdr_cdash_version_classes_get) | **Get** /mdr/cdash/{version}/classes | 
[**mdr_cdash_version_domains_domain_fields_field_get**](CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API.md#mdr_cdash_version_domains_domain_fields_field_get) | **Get** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**mdr_cdash_version_domains_domain_fields_get**](CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API.md#mdr_cdash_version_domains_domain_fields_get) | **Get** /mdr/cdash/{version}/domains/{domain}/fields | 
[**mdr_cdash_version_domains_domain_get**](CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API.md#mdr_cdash_version_domains_domain_get) | **Get** /mdr/cdash/{version}/domains/{domain} | 
[**mdr_cdash_version_domains_get**](CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API.md#mdr_cdash_version_domains_get) | **Get** /mdr/cdash/{version}/domains | 
[**mdr_cdash_version_get**](CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API.md#mdr_cdash_version_get) | **Get** /mdr/cdash/{version} | 
[**mdr_root_cdash_classes_class_fields_field_get**](CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API.md#mdr_root_cdash_classes_class_fields_field_get) | **Get** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**mdr_root_cdash_domains_domain_fields_field_get**](CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API.md#mdr_root_cdash_domains_domain_fields_field_get) | **Get** /mdr/root/cdash/domains/{domain}/fields/{field} | 


# **mdr_cdash_version_classes_class_domains_get**
> mdr_cdash_version_classes_class_domains_get (version: STRING_32 ; var_class: STRING_32 ): detachable CDASH_CLASS_DOMAINS




Get CDASH Class Domain List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| CDASH Class Identifier | [default to null]

### Return type

[**CDASH_CLASS_DOMAINS**](CdashClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_classes_class_fields_field_get**
> mdr_cdash_version_classes_class_fields_field_get (version: STRING_32 ; var_class: STRING_32 ; field: STRING_32 ): detachable CDASH_CLASS_FIELD




Get CDASH Class Field


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| CDASH Class Identifier | [default to null]
 **field** | **STRING_32**| CDASH Field Identifier | [default to null]

### Return type

[**CDASH_CLASS_FIELD**](CdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_classes_class_get**
> mdr_cdash_version_classes_class_get (version: STRING_32 ; var_class: STRING_32 ): detachable CDASH_CLASS




Get CDASH Class


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **var_class** | **STRING_32**| CDASH Class Identifier | [default to null]

### Return type

[**CDASH_CLASS**](CdashClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_classes_get**
> mdr_cdash_version_classes_get (version: STRING_32 ): detachable CDASH_PRODUCT_CLASSES




Get CDASH Class List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**CDASH_PRODUCT_CLASSES**](CdashProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_domains_domain_fields_field_get**
> mdr_cdash_version_domains_domain_fields_field_get (version: STRING_32 ; domain: STRING_32 ; field: STRING_32 ): detachable CDASH_DOMAIN_FIELD




Get CDASH Domain Field


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **domain** | **STRING_32**| CDASH Domain Identifier | [default to null]
 **field** | **STRING_32**| CDASH Field Identifier | [default to null]

### Return type

[**CDASH_DOMAIN_FIELD**](CdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_domains_domain_fields_get**
> mdr_cdash_version_domains_domain_fields_get (version: STRING_32 ; domain: STRING_32 ): detachable CDASH_DOMAIN_FIELDS




Get CDASH Domain Field List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **domain** | **STRING_32**| CDASH Domain Identifier | [default to null]

### Return type

[**CDASH_DOMAIN_FIELDS**](CdashDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_domains_domain_get**
> mdr_cdash_version_domains_domain_get (version: STRING_32 ; domain: STRING_32 ): detachable CDASH_DOMAIN




Get CDASH Domain


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]
 **domain** | **STRING_32**| CDASH Domain Identifier | [default to null]

### Return type

[**CDASH_DOMAIN**](CdashDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_domains_get**
> mdr_cdash_version_domains_get (version: STRING_32 ): detachable CDASH_PRODUCT_DOMAINS




Get CDASH Domain List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**CDASH_PRODUCT_DOMAINS**](CdashProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_cdash_version_get**
> mdr_cdash_version_get (version: STRING_32 ): detachable CDASH_PRODUCT




Get CDASH Product


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **STRING_32**| CDISC Library Product Version | [default to null]

### Return type

[**CDASH_PRODUCT**](CdashProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_cdash_classes_class_fields_field_get**
> mdr_root_cdash_classes_class_fields_field_get (var_class: STRING_32 ; field: STRING_32 ): detachable ROOT_CDASH_CLASS_FIELD




Get Root CDASH Class Field


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var_class** | **STRING_32**| CDASH Class Identifier | [default to null]
 **field** | **STRING_32**| CDASH Field Identifier | [default to null]

### Return type

[**ROOT_CDASH_CLASS_FIELD**](RootCdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_cdash_domains_domain_fields_field_get**
> mdr_root_cdash_domains_domain_fields_field_get (domain: STRING_32 ; field: STRING_32 ): detachable ROOT_CDASH_DOMAIN_FIELD




Get Root CDASH Domain Field


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **STRING_32**| CDASH Domain Identifier | [default to null]
 **field** | **STRING_32**| CDASH Field Identifier | [default to null]

### Return type

[**ROOT_CDASH_DOMAIN_FIELD**](RootCdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

