# \StudyDataTabulationModelSdtmApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sdtm_classes_class_variables_var_get**](StudyDataTabulationModelSdtmApi.md#mdr_root_sdtm_classes_class_variables_var_get) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**mdr_root_sdtm_datasets_dataset_variables_var_get**](StudyDataTabulationModelSdtmApi.md#mdr_root_sdtm_datasets_dataset_variables_var_get) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**mdr_sdtm_version_classes_class_datasets_get**](StudyDataTabulationModelSdtmApi.md#mdr_sdtm_version_classes_class_datasets_get) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**mdr_sdtm_version_classes_class_get**](StudyDataTabulationModelSdtmApi.md#mdr_sdtm_version_classes_class_get) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**mdr_sdtm_version_classes_class_variables_get**](StudyDataTabulationModelSdtmApi.md#mdr_sdtm_version_classes_class_variables_get) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**mdr_sdtm_version_classes_class_variables_var_get**](StudyDataTabulationModelSdtmApi.md#mdr_sdtm_version_classes_class_variables_var_get) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**mdr_sdtm_version_classes_get**](StudyDataTabulationModelSdtmApi.md#mdr_sdtm_version_classes_get) | **GET** /mdr/sdtm/{version}/classes | 
[**mdr_sdtm_version_datasets_dataset_get**](StudyDataTabulationModelSdtmApi.md#mdr_sdtm_version_datasets_dataset_get) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**mdr_sdtm_version_datasets_dataset_variables_get**](StudyDataTabulationModelSdtmApi.md#mdr_sdtm_version_datasets_dataset_variables_get) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**mdr_sdtm_version_datasets_dataset_variables_var_get**](StudyDataTabulationModelSdtmApi.md#mdr_sdtm_version_datasets_dataset_variables_var_get) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**mdr_sdtm_version_datasets_get**](StudyDataTabulationModelSdtmApi.md#mdr_sdtm_version_datasets_get) | **GET** /mdr/sdtm/{version}/datasets | 
[**mdr_sdtm_version_get**](StudyDataTabulationModelSdtmApi.md#mdr_sdtm_version_get) | **GET** /mdr/sdtm/{version} | 



## mdr_root_sdtm_classes_class_variables_var_get

> models::RootSdtmClassVariable mdr_root_sdtm_classes_class_variables_var_get(class, var)


Get Root of SDTM Class Variable

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**class** | **String** | SDTM Class Identifier | [required] |
**var** | **String** | SDTM Variable Identifier | [required] |

### Return type

[**models::RootSdtmClassVariable**](RootSdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_root_sdtm_datasets_dataset_variables_var_get

> models::RootSdtmDatasetVariable mdr_root_sdtm_datasets_dataset_variables_var_get(dataset, var)


Get Root SDTM Dataset Variable

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**dataset** | **String** | SDTM Dataset Identifier | [required] |
**var** | **String** | SDTM Variable Identifier | [required] |

### Return type

[**models::RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtm_version_classes_class_datasets_get

> models::SdtmClassDatasets mdr_sdtm_version_classes_class_datasets_get(version, class)


Get SDTM Class Dataset List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | SDTM Class Identifier | [required] |

### Return type

[**models::SdtmClassDatasets**](SdtmClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtm_version_classes_class_get

> models::SdtmClass mdr_sdtm_version_classes_class_get(version, class)


Get SDTM Class

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | SDTM Class Identifier | [required] |

### Return type

[**models::SdtmClass**](SdtmClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtm_version_classes_class_variables_get

> models::SdtmClassVariables mdr_sdtm_version_classes_class_variables_get(version, class)


Get SDTM Class Variable List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | SDTM Class Identifier | [required] |

### Return type

[**models::SdtmClassVariables**](SdtmClassVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtm_version_classes_class_variables_var_get

> models::SdtmClassVariable mdr_sdtm_version_classes_class_variables_var_get(version, class, var)


Get SDTM Class Variable

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | SDTM Class Identifier | [required] |
**var** | **String** | SDTM Variable Identifier | [required] |

### Return type

[**models::SdtmClassVariable**](SdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtm_version_classes_get

> models::SdtmClasses mdr_sdtm_version_classes_get(version)


Get SDTM Class List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::SdtmClasses**](SdtmClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtm_version_datasets_dataset_get

> models::SdtmDataset mdr_sdtm_version_datasets_dataset_get(version, dataset)


Get SDTM Dataset

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**dataset** | **String** | SDTM Dataset Identifier | [required] |

### Return type

[**models::SdtmDataset**](SdtmDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtm_version_datasets_dataset_variables_get

> models::SdtmDatasetVariables mdr_sdtm_version_datasets_dataset_variables_get(version, dataset)


Get SDTM Dataset Variable List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**dataset** | **String** | SDTM Dataset Identifier | [required] |

### Return type

[**models::SdtmDatasetVariables**](SdtmDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtm_version_datasets_dataset_variables_var_get

> models::SdtmDatasetVariable mdr_sdtm_version_datasets_dataset_variables_var_get(version, dataset, var)


Get SDTM Dataset Variable

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**dataset** | **String** | SDTM Dataset Identifier | [required] |
**var** | **String** | SDTM Variable Identifier | [required] |

### Return type

[**models::SdtmDatasetVariable**](SdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtm_version_datasets_get

> models::SdtmDatasets mdr_sdtm_version_datasets_get(version)


Get SDTM Dataset List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::SdtmDatasets**](SdtmDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtm_version_get

> models::SdtmProduct mdr_sdtm_version_get(version)


Get SDTM product

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::SdtmProduct**](SdtmProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

