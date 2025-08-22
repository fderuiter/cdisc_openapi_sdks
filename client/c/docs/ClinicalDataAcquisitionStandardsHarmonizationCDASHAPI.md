# ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassDomainsGet) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
[**ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassFieldsFieldGet) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassGet) | **GET** /mdr/cdash/{version}/classes/{class} | 
[**ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesGet) | **GET** /mdr/cdash/{version}/classes | 
[**ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainFieldsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainFieldsGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
[**ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainGet) | **GET** /mdr/cdash/{version}/domains/{domain} | 
[**ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsGet) | **GET** /mdr/cdash/{version}/domains | 
[**ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionGet) | **GET** /mdr/cdash/{version} | 
[**ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrRootCdashClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrRootCdashClassesClassFieldsFieldGet) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrRootCdashDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrRootCdashDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 


# **ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassDomainsGet**
```c
// Get CDASH Class Domain List
//
cdash_class_domains_t* ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassDomainsGet(apiClient_t *apiClient, char *version, char *_class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | CDASH Class Identifier | 

### Return type

[cdash_class_domains_t](cdash_class_domains.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassFieldsFieldGet**
```c
// Get CDASH Class Field
//
cdash_class_field_t* ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassFieldsFieldGet(apiClient_t *apiClient, char *version, char *_class, char *field);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | CDASH Class Identifier | 
**field** | **char \*** | CDASH Field Identifier | 

### Return type

[cdash_class_field_t](cdash_class_field.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassGet**
```c
// Get CDASH Class
//
cdash_class_t* ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | CDASH Class Identifier | 

### Return type

[cdash_class_t](cdash_class.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesGet**
```c
// Get CDASH Class List
//
cdash_product_classes_t* ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[cdash_product_classes_t](cdash_product_classes.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainFieldsFieldGet**
```c
// Get CDASH Domain Field
//
cdash_domain_field_t* ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainFieldsFieldGet(apiClient_t *apiClient, char *version, char *domain, char *field);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**domain** | **char \*** | CDASH Domain Identifier | 
**field** | **char \*** | CDASH Field Identifier | 

### Return type

[cdash_domain_field_t](cdash_domain_field.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainFieldsGet**
```c
// Get CDASH Domain Field List
//
cdash_domain_fields_t* ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainFieldsGet(apiClient_t *apiClient, char *version, char *domain);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**domain** | **char \*** | CDASH Domain Identifier | 

### Return type

[cdash_domain_fields_t](cdash_domain_fields.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainGet**
```c
// Get CDASH Domain
//
cdash_domain_t* ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainGet(apiClient_t *apiClient, char *version, char *domain);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**domain** | **char \*** | CDASH Domain Identifier | 

### Return type

[cdash_domain_t](cdash_domain.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsGet**
```c
// Get CDASH Domain List
//
cdash_product_domains_t* ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[cdash_product_domains_t](cdash_product_domains.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionGet**
```c
// Get CDASH Product
//
cdash_product_t* ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[cdash_product_t](cdash_product.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrRootCdashClassesClassFieldsFieldGet**
```c
// Get Root CDASH Class Field
//
root_cdash_class_field_t* ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrRootCdashClassesClassFieldsFieldGet(apiClient_t *apiClient, char *_class, char *field);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**_class** | **char \*** | CDASH Class Identifier | 
**field** | **char \*** | CDASH Field Identifier | 

### Return type

[root_cdash_class_field_t](root_cdash_class_field.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrRootCdashDomainsDomainFieldsFieldGet**
```c
// Get Root CDASH Domain Field
//
root_cdash_domain_field_t* ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrRootCdashDomainsDomainFieldsFieldGet(apiClient_t *apiClient, char *domain, char *field);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**domain** | **char \*** | CDASH Domain Identifier | 
**field** | **char \*** | CDASH Field Identifier | 

### Return type

[root_cdash_domain_field_t](root_cdash_domain_field.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

