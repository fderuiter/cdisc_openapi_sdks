# CONTROLLEDTERMINOLOGYCT_API

All URIs are relative to *https://library.cdisc.org/api*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**mdr_ct_packages_get**](CONTROLLEDTERMINOLOGYCT_API.md#mdr_ct_packages_get) | **Get** /mdr/ct/packages | 
[**mdr_ct_packages_package_codelists_codelist_get**](CONTROLLEDTERMINOLOGYCT_API.md#mdr_ct_packages_package_codelists_codelist_get) | **Get** /mdr/ct/packages/{package}/codelists/{codelist} | 
[**mdr_ct_packages_package_codelists_codelist_terms_get**](CONTROLLEDTERMINOLOGYCT_API.md#mdr_ct_packages_package_codelists_codelist_terms_get) | **Get** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
[**mdr_ct_packages_package_codelists_codelist_terms_term_get**](CONTROLLEDTERMINOLOGYCT_API.md#mdr_ct_packages_package_codelists_codelist_terms_term_get) | **Get** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
[**mdr_ct_packages_package_codelists_get**](CONTROLLEDTERMINOLOGYCT_API.md#mdr_ct_packages_package_codelists_get) | **Get** /mdr/ct/packages/{package}/codelists | 
[**mdr_ct_packages_product_get**](CONTROLLEDTERMINOLOGYCT_API.md#mdr_ct_packages_product_get) | **Get** /mdr/ct/packages/{product} | 
[**mdr_root_ct_product_group_codelists_codelist_get**](CONTROLLEDTERMINOLOGYCT_API.md#mdr_root_ct_product_group_codelists_codelist_get) | **Get** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
[**mdr_root_ct_product_group_codelists_codelist_terms_term_get**](CONTROLLEDTERMINOLOGYCT_API.md#mdr_root_ct_product_group_codelists_codelist_terms_term_get) | **Get** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 


# **mdr_ct_packages_get**
> mdr_ct_packages_get : detachable CT_PACKAGES




Get CDISC Library CT Package List


### Parameters
This endpoint does not need any parameter.

### Return type

[**CT_PACKAGES**](CtPackages.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_ct_packages_package_codelists_codelist_get**
> mdr_ct_packages_package_codelists_codelist_get (package: STRING_32 ; codelist: STRING_32 ): detachable CT_CODELIST




Get CDISC Library CT Package Codelist


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **STRING_32**| CT Package Identifier | [default to null]
 **codelist** | **STRING_32**| CT Codelist Identifier | [default to null]

### Return type

[**CT_CODELIST**](CtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_ct_packages_package_codelists_codelist_terms_get**
> mdr_ct_packages_package_codelists_codelist_terms_get (package: STRING_32 ; codelist: STRING_32 ): detachable CT_CODELIST_TERMS




Get CDISC Library CT Package Codelist Term List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **STRING_32**| CT Package Identifier | [default to null]
 **codelist** | **STRING_32**| CT Codelist Identifier | [default to null]

### Return type

[**CT_CODELIST_TERMS**](CtCodelistTerms.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_ct_packages_package_codelists_codelist_terms_term_get**
> mdr_ct_packages_package_codelists_codelist_terms_term_get (package: STRING_32 ; codelist: STRING_32 ; term: STRING_32 ): detachable CT_TERM




Get CDISC Library CT Package Codelist Term


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **STRING_32**| CT Package Product Identifier | [default to null]
 **codelist** | **STRING_32**| CT Codelist Identifier | [default to null]
 **term** | **STRING_32**| CT Codelist Term Identifier | [default to null]

### Return type

[**CT_TERM**](CtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_ct_packages_package_codelists_get**
> mdr_ct_packages_package_codelists_get (package: STRING_32 ): detachable CT_PACKAGE_CODELISTS




Get CDISC Library CT Package Codelist List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **STRING_32**| CT Package Identifier | [default to null]

### Return type

[**CT_PACKAGE_CODELISTS**](CtPackageCodelists.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_ct_packages_product_get**
> mdr_ct_packages_product_get (product: STRING_32 ): detachable CT_PACKAGE




Get CDISC Library CT Package


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **STRING_32**| CT Package Product Identifier | [default to null]

### Return type

[**CT_PACKAGE**](CtPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_ct_product_group_codelists_codelist_get**
> mdr_root_ct_product_group_codelists_codelist_get (product_group: STRING_32 ; codelist: STRING_32 ): detachable ROOT_CT_CODELIST




Get CDISC Library Root CT Codelist


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_group** | **STRING_32**| CT Product Group Identifier | [default to null]
 **codelist** | **STRING_32**| CT Codelist Identifier | [default to null]

### Return type

[**ROOT_CT_CODELIST**](RootCtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_root_ct_product_group_codelists_codelist_terms_term_get**
> mdr_root_ct_product_group_codelists_codelist_terms_term_get (product_group: STRING_32 ; codelist: STRING_32 ; term: STRING_32 ): detachable ROOT_CT_TERM




Get CDISC Library Root CT Term


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_group** | **STRING_32**| CT Product Group Identifier | [default to null]
 **codelist** | **STRING_32**| CT Codelist Identifier | [default to null]
 **term** | **STRING_32**| CT Codelist Term Identifier | [default to null]

### Return type

[**ROOT_CT_TERM**](RootCtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

