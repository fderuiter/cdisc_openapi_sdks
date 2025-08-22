# \SendImplementationGuideSendigApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sendig_datasets_dataset_variables_var_get**](SendImplementationGuideSendigApi.md#mdr_root_sendig_datasets_dataset_variables_var_get) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**mdr_sendig_version_classes_class_datasets_get**](SendImplementationGuideSendigApi.md#mdr_sendig_version_classes_class_datasets_get) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**mdr_sendig_version_classes_class_get**](SendImplementationGuideSendigApi.md#mdr_sendig_version_classes_class_get) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**mdr_sendig_version_classes_get**](SendImplementationGuideSendigApi.md#mdr_sendig_version_classes_get) | **GET** /mdr/sendig/{version}/classes | 
[**mdr_sendig_version_datasets_dataset_get**](SendImplementationGuideSendigApi.md#mdr_sendig_version_datasets_dataset_get) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**mdr_sendig_version_datasets_dataset_variables_get**](SendImplementationGuideSendigApi.md#mdr_sendig_version_datasets_dataset_variables_get) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**mdr_sendig_version_datasets_dataset_variables_var_get**](SendImplementationGuideSendigApi.md#mdr_sendig_version_datasets_dataset_variables_var_get) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**mdr_sendig_version_datasets_get**](SendImplementationGuideSendigApi.md#mdr_sendig_version_datasets_get) | **GET** /mdr/sendig/{version}/datasets | 
[**mdr_sendig_version_get**](SendImplementationGuideSendigApi.md#mdr_sendig_version_get) | **GET** /mdr/sendig/{version} | 



## mdr_root_sendig_datasets_dataset_variables_var_get

> models::RootSendigDatasetVariable mdr_root_sendig_datasets_dataset_variables_var_get(dataset, var)


Get Root SENDIG Dataset Variable

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**dataset** | **String** | SENDIG Dataset Identifier | [required] |
**var** | **String** | SENDIG Variable Identifier | [required] |

### Return type

[**models::RootSendigDatasetVariable**](RootSendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sendig_version_classes_class_datasets_get

> models::SendigClassDatasets mdr_sendig_version_classes_class_datasets_get(version, class)


Get SENDIG Class Dataset List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | SENDIG Class Identifier | [required] |

### Return type

[**models::SendigClassDatasets**](SendigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sendig_version_classes_class_get

> models::SendigClass mdr_sendig_version_classes_class_get(version, class)


Get SENDIG Class

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | SENDIG Class Identifier | [required] |

### Return type

[**models::SendigClass**](SendigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sendig_version_classes_get

> models::SendigClasses mdr_sendig_version_classes_get(version)


Get SENDIG Class List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::SendigClasses**](SendigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sendig_version_datasets_dataset_get

> models::SendigDataset mdr_sendig_version_datasets_dataset_get(version, dataset)


Get SENDIG Dataset

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**dataset** | **String** | SENDIG Class Identifier | [required] |

### Return type

[**models::SendigDataset**](SendigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sendig_version_datasets_dataset_variables_get

> models::SendigDatasetVariables mdr_sendig_version_datasets_dataset_variables_get(version, dataset)


Get SENDIG Dataset Variable List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**dataset** | **String** | SENDIG Class Identifier | [required] |

### Return type

[**models::SendigDatasetVariables**](SendigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sendig_version_datasets_dataset_variables_var_get

> models::SendigDatasetVariable mdr_sendig_version_datasets_dataset_variables_var_get(version, dataset, var)


Get SENDIG Dataset Variable

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**dataset** | **String** | SENDIG Class Identifier | [required] |
**var** | **String** | SENDIG Variable Identifier | [required] |

### Return type

[**models::SendigDatasetVariable**](SendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sendig_version_datasets_get

> models::SendigDatasets mdr_sendig_version_datasets_get(version)


Get SENDIG Dataset List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::SendigDatasets**](SendigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sendig_version_get

> models::SendigProduct mdr_sendig_version_get(version)


Get SENDIG product

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::SendigProduct**](SendigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

