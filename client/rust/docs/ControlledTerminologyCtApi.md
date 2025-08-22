# \ControlledTerminologyCtApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_ct_packages_get**](ControlledTerminologyCtApi.md#mdr_ct_packages_get) | **GET** /mdr/ct/packages | 
[**mdr_ct_packages_package_codelists_codelist_get**](ControlledTerminologyCtApi.md#mdr_ct_packages_package_codelists_codelist_get) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | 
[**mdr_ct_packages_package_codelists_codelist_terms_get**](ControlledTerminologyCtApi.md#mdr_ct_packages_package_codelists_codelist_terms_get) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
[**mdr_ct_packages_package_codelists_codelist_terms_term_get**](ControlledTerminologyCtApi.md#mdr_ct_packages_package_codelists_codelist_terms_term_get) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
[**mdr_ct_packages_package_codelists_get**](ControlledTerminologyCtApi.md#mdr_ct_packages_package_codelists_get) | **GET** /mdr/ct/packages/{package}/codelists | 
[**mdr_ct_packages_product_get**](ControlledTerminologyCtApi.md#mdr_ct_packages_product_get) | **GET** /mdr/ct/packages/{product} | 
[**mdr_root_ct_product_group_codelists_codelist_get**](ControlledTerminologyCtApi.md#mdr_root_ct_product_group_codelists_codelist_get) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
[**mdr_root_ct_product_group_codelists_codelist_terms_term_get**](ControlledTerminologyCtApi.md#mdr_root_ct_product_group_codelists_codelist_terms_term_get) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 



## mdr_ct_packages_get

> models::CtPackages mdr_ct_packages_get()


Get CDISC Library CT Package List

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::CtPackages**](CtPackages.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_ct_packages_package_codelists_codelist_get

> models::CtCodelist mdr_ct_packages_package_codelists_codelist_get(package, codelist)


Get CDISC Library CT Package Codelist

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**package** | **String** | CT Package Identifier | [required] |
**codelist** | **String** | CT Codelist Identifier | [required] |

### Return type

[**models::CtCodelist**](CtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_ct_packages_package_codelists_codelist_terms_get

> models::CtCodelistTerms mdr_ct_packages_package_codelists_codelist_terms_get(package, codelist)


Get CDISC Library CT Package Codelist Term List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**package** | **String** | CT Package Identifier | [required] |
**codelist** | **String** | CT Codelist Identifier | [required] |

### Return type

[**models::CtCodelistTerms**](CtCodelistTerms.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_ct_packages_package_codelists_codelist_terms_term_get

> models::CtTerm mdr_ct_packages_package_codelists_codelist_terms_term_get(package, codelist, term)


Get CDISC Library CT Package Codelist Term

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**package** | **String** | CT Package Product Identifier | [required] |
**codelist** | **String** | CT Codelist Identifier | [required] |
**term** | **String** | CT Codelist Term Identifier | [required] |

### Return type

[**models::CtTerm**](CtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_ct_packages_package_codelists_get

> models::CtPackageCodelists mdr_ct_packages_package_codelists_get(package)


Get CDISC Library CT Package Codelist List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**package** | **String** | CT Package Identifier | [required] |

### Return type

[**models::CtPackageCodelists**](CtPackageCodelists.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_ct_packages_product_get

> models::CtPackage mdr_ct_packages_product_get(product)


Get CDISC Library CT Package

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**product** | **String** | CT Package Product Identifier | [required] |

### Return type

[**models::CtPackage**](CtPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_root_ct_product_group_codelists_codelist_get

> models::RootCtCodelist mdr_root_ct_product_group_codelists_codelist_get(product_group, codelist)


Get CDISC Library Root CT Codelist

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**product_group** | **String** | CT Product Group Identifier | [required] |
**codelist** | **String** | CT Codelist Identifier | [required] |

### Return type

[**models::RootCtCodelist**](RootCtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_root_ct_product_group_codelists_codelist_terms_term_get

> models::RootCtTerm mdr_root_ct_product_group_codelists_codelist_terms_term_get(product_group, codelist, term)


Get CDISC Library Root CT Term

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**product_group** | **String** | CT Product Group Identifier | [required] |
**codelist** | **String** | CT Codelist Identifier | [required] |
**term** | **String** | CT Codelist Term Identifier | [required] |

### Return type

[**models::RootCtTerm**](RootCtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

