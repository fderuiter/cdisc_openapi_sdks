# CDASHImplementationGuideCDASHIGAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassDomainsGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassDomainsGet) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | 
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassGet) | **GET** /mdr/cdashig/{version}/classes/{class} | 
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassScenariosGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassScenariosGet) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | 
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesGet) | **GET** /mdr/cdashig/{version}/classes | 
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainFieldsGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainFieldsGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | 
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainGet) | **GET** /mdr/cdashig/{version}/domains/{domain} | 
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsGet) | **GET** /mdr/cdashig/{version}/domains | 
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionGet) | **GET** /mdr/cdashig/{version} | 
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioFieldsGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioFieldsGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
[**CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosGet) | **GET** /mdr/cdashig/{version}/scenarios | 
[**CDASHImplementationGuideCDASHIGAPI_mdrRootCdashigDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrRootCdashigDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
[**CDASHImplementationGuideCDASHIGAPI_mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGAPI.md#CDASHImplementationGuideCDASHIGAPI_mdrRootCdashigScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 


# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassDomainsGet**
```c
// Get CDASHIG Class Domain List
//
cdashig_class_domains_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassDomainsGet(apiClient_t *apiClient, char *version, char *_class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | CDASHIG Class Identifier | 

### Return type

[cdashig_class_domains_t](cdashig_class_domains.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassGet**
```c
// Get CDASHIG Class
//
cdashig_class_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | CDASHIG Class Identifier | 

### Return type

[cdashig_class_t](cdashig_class.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassScenariosGet**
```c
// Get CDASHIG Class Scenario List
//
cdashig_class_scenarios_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassScenariosGet(apiClient_t *apiClient, char *version, char *_class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**_class** | **char \*** | CDASHIG Class Identifier | 

### Return type

[cdashig_class_scenarios_t](cdashig_class_scenarios.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesGet**
```c
// Get CDASHIG Class List
//
cdashig_product_classes_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[cdashig_product_classes_t](cdashig_product_classes.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainFieldsFieldGet**
```c
// Get CDASHIG Domain Field
//
cdashig_domain_field_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainFieldsFieldGet(apiClient_t *apiClient, char *version, char *domain, char *field);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**domain** | **char \*** | CDASHIG Domain Identifier | 
**field** | **char \*** | CDASHIG Field Identifier | 

### Return type

[cdashig_domain_field_t](cdashig_domain_field.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainFieldsGet**
```c
// Get CDASHIG Domain Field List
//
cdashig_domain_fields_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainFieldsGet(apiClient_t *apiClient, char *version, char *domain);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**domain** | **char \*** | CDASHIG Domain Identifier | 

### Return type

[cdashig_domain_fields_t](cdashig_domain_fields.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainGet**
```c
// Get CDASHIG Domain
//
cdashig_domain_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainGet(apiClient_t *apiClient, char *version, char *domain);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**domain** | **char \*** | CDASHIG Domain Identifier | 

### Return type

[cdashig_domain_t](cdashig_domain.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsGet**
```c
// Get CDASHIG Domain List
//
cdashig_product_domains_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[cdashig_product_domains_t](cdashig_product_domains.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionGet**
```c
// Get CDASHIG Product
//
cdashig_product_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[cdashig_product_t](cdashig_product.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**
```c
// Get CDASHIG Scenario Field
//
cdashig_scenario_field_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(apiClient_t *apiClient, char *version, char *domain, char *scenario, char *field);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**domain** | **char \*** | CDASHIG Domain Identifier | 
**scenario** | **char \*** | CDASHIG Scenario Identifier | 
**field** | **char \*** | CDASHIG Field Identifier | 

### Return type

[cdashig_scenario_field_t](cdashig_scenario_field.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioFieldsGet**
```c
// Get CDASHIG Scenario Field List
//
cdashig_scenario_fields_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioFieldsGet(apiClient_t *apiClient, char *version, char *domain, char *scenario);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**domain** | **char \*** | CDASHIG Domain Identifier | 
**scenario** | **char \*** | CDASHIG Scenario Identifier | 

### Return type

[cdashig_scenario_fields_t](cdashig_scenario_fields.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioGet**
```c
// Get CDASHIG Scenario
//
cdashig_scenario_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioGet(apiClient_t *apiClient, char *version, char *domain, char *scenario);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 
**domain** | **char \*** | CDASHIG Domain Identifier | 
**scenario** | **char \*** | CDASHIG Scenario Identifier | 

### Return type

[cdashig_scenario_t](cdashig_scenario.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosGet**
```c
// Get CDASHIG Scenario List
//
cdashig_product_scenarios_t* CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosGet(apiClient_t *apiClient, char *version);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**version** | **char \*** | CDISC Library Product Version | 

### Return type

[cdashig_product_scenarios_t](cdashig_product_scenarios.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrRootCdashigDomainsDomainFieldsFieldGet**
```c
// Get Root CDASHIG Domain Field
//
root_cdashig_domain_field_t* CDASHImplementationGuideCDASHIGAPI_mdrRootCdashigDomainsDomainFieldsFieldGet(apiClient_t *apiClient, char *domain, char *field);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**domain** | **char \*** | CDASHIG Domain Identifier | 
**field** | **char \*** | CDASHIG Field Identifier | 

### Return type

[root_cdashig_domain_field_t](root_cdashig_domain_field.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CDASHImplementationGuideCDASHIGAPI_mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**
```c
// Get Root CDASHIG Scenario Field
//
root_cdashig_scenario_field_t* CDASHImplementationGuideCDASHIGAPI_mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(apiClient_t *apiClient, char *domain, char *scenario, char *field);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**domain** | **char \*** | CDASHIG Domain Identifier | 
**scenario** | **char \*** | CDASHIG Scenario Identifier | 
**field** | **char \*** | CDASHIG Field Identifier | 

### Return type

[root_cdashig_scenario_field_t](root_cdashig_scenario_field.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

