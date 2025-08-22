# ControlledTerminologyCTAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ControlledTerminologyCTAPI_mdrCtPackagesGet**](ControlledTerminologyCTAPI.md#ControlledTerminologyCTAPI_mdrCtPackagesGet) | **GET** /mdr/ct/packages | 
[**ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistGet**](ControlledTerminologyCTAPI.md#ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | 
[**ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistTermsGet**](ControlledTerminologyCTAPI.md#ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistTermsGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
[**ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistTermsTermGet**](ControlledTerminologyCTAPI.md#ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistTermsTermGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
[**ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsGet**](ControlledTerminologyCTAPI.md#ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsGet) | **GET** /mdr/ct/packages/{package}/codelists | 
[**ControlledTerminologyCTAPI_mdrCtPackagesProductGet**](ControlledTerminologyCTAPI.md#ControlledTerminologyCTAPI_mdrCtPackagesProductGet) | **GET** /mdr/ct/packages/{product} | 
[**ControlledTerminologyCTAPI_mdrRootCtProductGroupCodelistsCodelistGet**](ControlledTerminologyCTAPI.md#ControlledTerminologyCTAPI_mdrRootCtProductGroupCodelistsCodelistGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
[**ControlledTerminologyCTAPI_mdrRootCtProductGroupCodelistsCodelistTermsTermGet**](ControlledTerminologyCTAPI.md#ControlledTerminologyCTAPI_mdrRootCtProductGroupCodelistsCodelistTermsTermGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 


# **ControlledTerminologyCTAPI_mdrCtPackagesGet**
```c
// Get CDISC Library CT Package List
//
ct_packages_t* ControlledTerminologyCTAPI_mdrCtPackagesGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[ct_packages_t](ct_packages.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistGet**
```c
// Get CDISC Library CT Package Codelist
//
ct_codelist_t* ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistGet(apiClient_t *apiClient, char *package, char *codelist);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**package** | **char \*** | CT Package Identifier | 
**codelist** | **char \*** | CT Codelist Identifier | 

### Return type

[ct_codelist_t](ct_codelist.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistTermsGet**
```c
// Get CDISC Library CT Package Codelist Term List
//
ct_codelist_terms_t* ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistTermsGet(apiClient_t *apiClient, char *package, char *codelist);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**package** | **char \*** | CT Package Identifier | 
**codelist** | **char \*** | CT Codelist Identifier | 

### Return type

[ct_codelist_terms_t](ct_codelist_terms.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistTermsTermGet**
```c
// Get CDISC Library CT Package Codelist Term
//
ct_term_t* ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistTermsTermGet(apiClient_t *apiClient, char *package, char *codelist, char *term);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**package** | **char \*** | CT Package Product Identifier | 
**codelist** | **char \*** | CT Codelist Identifier | 
**term** | **char \*** | CT Codelist Term Identifier | 

### Return type

[ct_term_t](ct_term.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsGet**
```c
// Get CDISC Library CT Package Codelist List
//
ct_package_codelists_t* ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsGet(apiClient_t *apiClient, char *package);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**package** | **char \*** | CT Package Identifier | 

### Return type

[ct_package_codelists_t](ct_package_codelists.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ControlledTerminologyCTAPI_mdrCtPackagesProductGet**
```c
// Get CDISC Library CT Package
//
ct_package_t* ControlledTerminologyCTAPI_mdrCtPackagesProductGet(apiClient_t *apiClient, char *product);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**product** | **char \*** | CT Package Product Identifier | 

### Return type

[ct_package_t](ct_package.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ControlledTerminologyCTAPI_mdrRootCtProductGroupCodelistsCodelistGet**
```c
// Get CDISC Library Root CT Codelist
//
root_ct_codelist_t* ControlledTerminologyCTAPI_mdrRootCtProductGroupCodelistsCodelistGet(apiClient_t *apiClient, char *productGroup, char *codelist);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**productGroup** | **char \*** | CT Product Group Identifier | 
**codelist** | **char \*** | CT Codelist Identifier | 

### Return type

[root_ct_codelist_t](root_ct_codelist.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ControlledTerminologyCTAPI_mdrRootCtProductGroupCodelistsCodelistTermsTermGet**
```c
// Get CDISC Library Root CT Term
//
root_ct_term_t* ControlledTerminologyCTAPI_mdrRootCtProductGroupCodelistsCodelistTermsTermGet(apiClient_t *apiClient, char *productGroup, char *codelist, char *term);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**productGroup** | **char \*** | CT Product Group Identifier | 
**codelist** | **char \*** | CT Codelist Identifier | 
**term** | **char \*** | CT Codelist Term Identifier | 

### Return type

[root_ct_term_t](root_ct_term.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

