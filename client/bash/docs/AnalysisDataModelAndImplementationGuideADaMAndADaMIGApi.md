# AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrAdamProductDatastructuresGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresGet) | **GET** /mdr/adam/{product}/datastructures | 
[**mdrAdamProductDatastructuresStructureGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureGet) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
[**mdrAdamProductDatastructuresStructureVariablesGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVariablesGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**mdrAdamProductDatastructuresStructureVariablesVarGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVariablesVarGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**mdrAdamProductDatastructuresStructureVarsetsGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVarsetsGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**mdrAdamProductDatastructuresStructureVarsetsVarsetGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVarsetsVarsetGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**mdrAdamProductGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductGet) | **GET** /mdr/adam/{product} | 



## mdrAdamProductDatastructuresGet



Get ADaM Data Structure List

### Example

```bash
 mdrAdamProductDatastructuresGet product=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string** | CDISC Library Product | [default to null]

### Return type

[**AdamProductDatastructures**](AdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrAdamProductDatastructuresStructureGet



Get ADaM Data Structure

### Example

```bash
 mdrAdamProductDatastructuresStructureGet product=value structure=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string** | CDISC Library Product | [default to null]
 **structure** | **string** | Data structure Identifier | [default to null]

### Return type

[**AdamDatastructure**](AdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrAdamProductDatastructuresStructureVariablesGet



Get ADaM Variable List

### Example

```bash
 mdrAdamProductDatastructuresStructureVariablesGet product=value structure=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string** | CDISC Library Product | [default to null]
 **structure** | **string** | ADaM Data Structure Identifier | [default to null]

### Return type

[**AdamDatastructureVariables**](AdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrAdamProductDatastructuresStructureVariablesVarGet



Get ADaM Variable

### Example

```bash
 mdrAdamProductDatastructuresStructureVariablesVarGet product=value structure=value var=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string** | CDISC Library Product | [default to null]
 **structure** | **string** | ADaM Data Structure Identifier | [default to null]
 **var** | **string** | ADaM Variable Identifier | [default to null]

### Return type

[**AdamVariable**](AdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrAdamProductDatastructuresStructureVarsetsGet



Get ADaM Variable Set List

### Example

```bash
 mdrAdamProductDatastructuresStructureVarsetsGet product=value structure=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string** | CDISC Library Product | [default to null]
 **structure** | **string** | ADaM Data Structure Identifier | [default to null]

### Return type

[**AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrAdamProductDatastructuresStructureVarsetsVarsetGet



Get ADaM Variable Set

### Example

```bash
 mdrAdamProductDatastructuresStructureVarsetsVarsetGet product=value structure=value varset=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string** | CDISC Library Product | [default to null]
 **structure** | **string** | ADaM Data Structure Identifier | [default to null]
 **varset** | **string** | ADaM Variable Set Identifier | [default to null]

### Return type

[**AdamVarset**](AdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdrAdamProductGet



Get ADaM Product

### Example

```bash
 mdrAdamProductGet product=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **string** | CDISC Library Product | [default to null]

### Return type

[**AdamProduct**](AdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

