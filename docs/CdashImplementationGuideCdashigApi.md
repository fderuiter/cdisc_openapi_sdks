# \CdashImplementationGuideCdashigApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_cdashig_version_classes_class_domains_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_classes_class_domains_get) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | 
[**mdr_cdashig_version_classes_class_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_classes_class_get) | **GET** /mdr/cdashig/{version}/classes/{class} | 
[**mdr_cdashig_version_classes_class_scenarios_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_classes_class_scenarios_get) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | 
[**mdr_cdashig_version_classes_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_classes_get) | **GET** /mdr/cdashig/{version}/classes | 
[**mdr_cdashig_version_domains_domain_fields_field_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_domains_domain_fields_field_get) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
[**mdr_cdashig_version_domains_domain_fields_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_domains_domain_fields_get) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | 
[**mdr_cdashig_version_domains_domain_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_domains_domain_get) | **GET** /mdr/cdashig/{version}/domains/{domain} | 
[**mdr_cdashig_version_domains_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_domains_get) | **GET** /mdr/cdashig/{version}/domains | 
[**mdr_cdashig_version_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_get) | **GET** /mdr/cdashig/{version} | 
[**mdr_cdashig_version_scenarios_domain_scenario_fields_field_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_scenarios_domain_scenario_fields_field_get) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
[**mdr_cdashig_version_scenarios_domain_scenario_fields_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_scenarios_domain_scenario_fields_get) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
[**mdr_cdashig_version_scenarios_domain_scenario_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_scenarios_domain_scenario_get) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
[**mdr_cdashig_version_scenarios_get**](CdashImplementationGuideCdashigApi.md#mdr_cdashig_version_scenarios_get) | **GET** /mdr/cdashig/{version}/scenarios | 
[**mdr_root_cdashig_domains_domain_fields_field_get**](CdashImplementationGuideCdashigApi.md#mdr_root_cdashig_domains_domain_fields_field_get) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
[**mdr_root_cdashig_scenarios_domain_scenario_fields_field_get**](CdashImplementationGuideCdashigApi.md#mdr_root_cdashig_scenarios_domain_scenario_fields_field_get) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 



## mdr_cdashig_version_classes_class_domains_get

> models::CdashigClassDomains mdr_cdashig_version_classes_class_domains_get(version, class)


Get CDASHIG Class Domain List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | CDASHIG Class Identifier | [required] |

### Return type

[**models::CdashigClassDomains**](CdashigClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdashig_version_classes_class_get

> models::CdashigClass mdr_cdashig_version_classes_class_get(version, class)


Get CDASHIG Class

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | CDASHIG Class Identifier | [required] |

### Return type

[**models::CdashigClass**](CdashigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdashig_version_classes_class_scenarios_get

> models::CdashigClassScenarios mdr_cdashig_version_classes_class_scenarios_get(version, class)


Get CDASHIG Class Scenario List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | CDASHIG Class Identifier | [required] |

### Return type

[**models::CdashigClassScenarios**](CdashigClassScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdashig_version_classes_get

> models::CdashigProductClasses mdr_cdashig_version_classes_get(version)


Get CDASHIG Class List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::CdashigProductClasses**](CdashigProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdashig_version_domains_domain_fields_field_get

> models::CdashigDomainField mdr_cdashig_version_domains_domain_fields_field_get(version, domain, field)


Get CDASHIG Domain Field

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**domain** | **String** | CDASHIG Domain Identifier | [required] |
**field** | **String** | CDASHIG Field Identifier | [required] |

### Return type

[**models::CdashigDomainField**](CdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdashig_version_domains_domain_fields_get

> models::CdashigDomainFields mdr_cdashig_version_domains_domain_fields_get(version, domain)


Get CDASHIG Domain Field List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**domain** | **String** | CDASHIG Domain Identifier | [required] |

### Return type

[**models::CdashigDomainFields**](CdashigDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdashig_version_domains_domain_get

> models::CdashigDomain mdr_cdashig_version_domains_domain_get(version, domain)


Get CDASHIG Domain

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**domain** | **String** | CDASHIG Domain Identifier | [required] |

### Return type

[**models::CdashigDomain**](CdashigDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdashig_version_domains_get

> models::CdashigProductDomains mdr_cdashig_version_domains_get(version)


Get CDASHIG Domain List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::CdashigProductDomains**](CdashigProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdashig_version_get

> models::CdashigProduct mdr_cdashig_version_get(version)


Get CDASHIG Product

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::CdashigProduct**](CdashigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdashig_version_scenarios_domain_scenario_fields_field_get

> models::CdashigScenarioField mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(version, domain, scenario, field)


Get CDASHIG Scenario Field

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**domain** | **String** | CDASHIG Domain Identifier | [required] |
**scenario** | **String** | CDASHIG Scenario Identifier | [required] |
**field** | **String** | CDASHIG Field Identifier | [required] |

### Return type

[**models::CdashigScenarioField**](CdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdashig_version_scenarios_domain_scenario_fields_get

> models::CdashigScenarioFields mdr_cdashig_version_scenarios_domain_scenario_fields_get(version, domain, scenario)


Get CDASHIG Scenario Field List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**domain** | **String** | CDASHIG Domain Identifier | [required] |
**scenario** | **String** | CDASHIG Scenario Identifier | [required] |

### Return type

[**models::CdashigScenarioFields**](CdashigScenarioFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdashig_version_scenarios_domain_scenario_get

> models::CdashigScenario mdr_cdashig_version_scenarios_domain_scenario_get(version, domain, scenario)


Get CDASHIG Scenario

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**domain** | **String** | CDASHIG Domain Identifier | [required] |
**scenario** | **String** | CDASHIG Scenario Identifier | [required] |

### Return type

[**models::CdashigScenario**](CdashigScenario.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_cdashig_version_scenarios_get

> models::CdashigProductScenarios mdr_cdashig_version_scenarios_get(version)


Get CDASHIG Scenario List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::CdashigProductScenarios**](CdashigProductScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_root_cdashig_domains_domain_fields_field_get

> models::RootCdashigDomainField mdr_root_cdashig_domains_domain_fields_field_get(domain, field)


Get Root CDASHIG Domain Field

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**domain** | **String** | CDASHIG Domain Identifier | [required] |
**field** | **String** | CDASHIG Field Identifier | [required] |

### Return type

[**models::RootCdashigDomainField**](RootCdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_root_cdashig_scenarios_domain_scenario_fields_field_get

> models::RootCdashigScenarioField mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(domain, scenario, field)


Get Root CDASHIG Scenario Field

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**domain** | **String** | CDASHIG Domain Identifier | [required] |
**scenario** | **String** | CDASHIG Scenario Identifier | [required] |
**field** | **String** | CDASHIG Field Identifier | [required] |

### Return type

[**models::RootCdashigScenarioField**](RootCdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

