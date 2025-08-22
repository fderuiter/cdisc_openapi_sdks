# \ClinicalDataAcquisitionStandardsHarmonizationCdashApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_cdash_version_classes_class_domains_get**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdr_cdash_version_classes_class_domains_get) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
[**mdr_cdash_version_classes_class_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdr_cdash_version_classes_class_fields_field_get) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**mdr_cdash_version_classes_class_get**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdr_cdash_version_classes_class_get) | **GET** /mdr/cdash/{version}/classes/{class} | 
[**mdr_cdash_version_classes_get**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdr_cdash_version_classes_get) | **GET** /mdr/cdash/{version}/classes | 
[**mdr_cdash_version_domains_domain_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdr_cdash_version_domains_domain_fields_field_get) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**mdr_cdash_version_domains_domain_fields_get**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdr_cdash_version_domains_domain_fields_get) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
[**mdr_cdash_version_domains_domain_get**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdr_cdash_version_domains_domain_get) | **GET** /mdr/cdash/{version}/domains/{domain} | 
[**mdr_cdash_version_domains_get**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdr_cdash_version_domains_get) | **GET** /mdr/cdash/{version}/domains | 
[**mdr_cdash_version_get**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdr_cdash_version_get) | **GET** /mdr/cdash/{version} | 
[**mdr_root_cdash_classes_class_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdr_root_cdash_classes_class_fields_field_get) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**mdr_root_cdash_domains_domain_fields_field_get**](ClinicalDataAcquisitionStandardsHarmonizationCdashApi.md#mdr_root_cdash_domains_domain_fields_field_get) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 



## mdr_cdash_version_classes_class_domains_get

> models::CdashClassDomains mdr_cdash_version_classes_class_domains_get(version, class)


Get CDASH Class Domain List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | CDASH Class Identifier | [required] |

### Return type

[**models::CdashClassDomains**](CdashClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdash_version_classes_class_fields_field_get

> models::CdashClassField mdr_cdash_version_classes_class_fields_field_get(version, class, field)


Get CDASH Class Field

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | CDASH Class Identifier | [required] |
**field** | **String** | CDASH Field Identifier | [required] |

### Return type

[**models::CdashClassField**](CdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdash_version_classes_class_get

> models::CdashClass mdr_cdash_version_classes_class_get(version, class)


Get CDASH Class

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | CDASH Class Identifier | [required] |

### Return type

[**models::CdashClass**](CdashClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdash_version_classes_get

> models::CdashProductClasses mdr_cdash_version_classes_get(version)


Get CDASH Class List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::CdashProductClasses**](CdashProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdash_version_domains_domain_fields_field_get

> models::CdashDomainField mdr_cdash_version_domains_domain_fields_field_get(version, domain, field)


Get CDASH Domain Field

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**domain** | **String** | CDASH Domain Identifier | [required] |
**field** | **String** | CDASH Field Identifier | [required] |

### Return type

[**models::CdashDomainField**](CdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdash_version_domains_domain_fields_get

> models::CdashDomainFields mdr_cdash_version_domains_domain_fields_get(version, domain)


Get CDASH Domain Field List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**domain** | **String** | CDASH Domain Identifier | [required] |

### Return type

[**models::CdashDomainFields**](CdashDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdash_version_domains_domain_get

> models::CdashDomain mdr_cdash_version_domains_domain_get(version, domain)


Get CDASH Domain

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**domain** | **String** | CDASH Domain Identifier | [required] |

### Return type

[**models::CdashDomain**](CdashDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdash_version_domains_get

> models::CdashProductDomains mdr_cdash_version_domains_get(version)


Get CDASH Domain List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::CdashProductDomains**](CdashProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdash_version_get

> models::CdashProduct mdr_cdash_version_get(version)


Get CDASH Product

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::CdashProduct**](CdashProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_root_cdash_classes_class_fields_field_get

> models::RootCdashClassField mdr_root_cdash_classes_class_fields_field_get(class, field)


Get Root CDASH Class Field

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**class** | **String** | CDASH Class Identifier | [required] |
**field** | **String** | CDASH Field Identifier | [required] |

### Return type

[**models::RootCdashClassField**](RootCdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_root_cdash_domains_domain_fields_field_get

> models::RootCdashDomainField mdr_root_cdash_domains_domain_fields_field_get(domain, field)


Get Root CDASH Domain Field

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**domain** | **String** | CDASH Domain Identifier | [required] |
**field** | **String** | CDASH Field Identifier | [required] |

### Return type

[**models::RootCdashDomainField**](RootCdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

