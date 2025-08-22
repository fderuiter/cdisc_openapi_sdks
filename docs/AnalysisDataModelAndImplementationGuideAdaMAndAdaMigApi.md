# \AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_adam_product_datastructures_get**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdr_adam_product_datastructures_get) | **GET** /mdr/adam/{product}/datastructures | 
[**mdr_adam_product_datastructures_structure_get**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdr_adam_product_datastructures_structure_get) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
[**mdr_adam_product_datastructures_structure_variables_get**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdr_adam_product_datastructures_structure_variables_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**mdr_adam_product_datastructures_structure_variables_var_get**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdr_adam_product_datastructures_structure_variables_var_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**mdr_adam_product_datastructures_structure_varsets_get**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdr_adam_product_datastructures_structure_varsets_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**mdr_adam_product_datastructures_structure_varsets_varset_get**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdr_adam_product_datastructures_structure_varsets_varset_get) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**mdr_adam_product_get**](AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi.md#mdr_adam_product_get) | **GET** /mdr/adam/{product} | 



## mdr_adam_product_datastructures_get

> models::AdamProductDatastructures mdr_adam_product_datastructures_get(product)


Get ADaM Data Structure List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**product** | **String** | CDISC Library Product | [required] |

### Return type

[**models::AdamProductDatastructures**](AdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_adam_product_datastructures_structure_get

> models::AdamDatastructure mdr_adam_product_datastructures_structure_get(product, structure)


Get ADaM Data Structure

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**product** | **String** | CDISC Library Product | [required] |
**structure** | **String** | Data structure Identifier | [required] |

### Return type

[**models::AdamDatastructure**](AdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_adam_product_datastructures_structure_variables_get

> models::AdamDatastructureVariables mdr_adam_product_datastructures_structure_variables_get(product, structure)


Get ADaM Variable List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**product** | **String** | CDISC Library Product | [required] |
**structure** | **String** | ADaM Data Structure Identifier | [required] |

### Return type

[**models::AdamDatastructureVariables**](AdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_adam_product_datastructures_structure_variables_var_get

> models::AdamVariable mdr_adam_product_datastructures_structure_variables_var_get(product, structure, var)


Get ADaM Variable

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**product** | **String** | CDISC Library Product | [required] |
**structure** | **String** | ADaM Data Structure Identifier | [required] |
**var** | **String** | ADaM Variable Identifier | [required] |

### Return type

[**models::AdamVariable**](AdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_adam_product_datastructures_structure_varsets_get

> models::AdamDatastructureVarsets mdr_adam_product_datastructures_structure_varsets_get(product, structure)


Get ADaM Variable Set List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**product** | **String** | CDISC Library Product | [required] |
**structure** | **String** | ADaM Data Structure Identifier | [required] |

### Return type

[**models::AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_adam_product_datastructures_structure_varsets_varset_get

> models::AdamVarset mdr_adam_product_datastructures_structure_varsets_varset_get(product, structure, varset)


Get ADaM Variable Set

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**product** | **String** | CDISC Library Product | [required] |
**structure** | **String** | ADaM Data Structure Identifier | [required] |
**varset** | **String** | ADaM Variable Set Identifier | [required] |

### Return type

[**models::AdamVarset**](AdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_adam_product_get

> models::AdamProduct mdr_adam_product_get(product)


Get ADaM Product

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**product** | **String** | CDISC Library Product | [required] |

### Return type

[**models::AdamProduct**](AdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

