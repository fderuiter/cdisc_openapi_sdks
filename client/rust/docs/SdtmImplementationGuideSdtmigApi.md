# \SdtmImplementationGuideSdtmigApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sdtmig_datasets_dataset_variables_var_get**](SdtmImplementationGuideSdtmigApi.md#mdr_root_sdtmig_datasets_dataset_variables_var_get) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**mdr_sdtmig_version_classes_class_datasets_get**](SdtmImplementationGuideSdtmigApi.md#mdr_sdtmig_version_classes_class_datasets_get) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**mdr_sdtmig_version_classes_class_get**](SdtmImplementationGuideSdtmigApi.md#mdr_sdtmig_version_classes_class_get) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
[**mdr_sdtmig_version_classes_get**](SdtmImplementationGuideSdtmigApi.md#mdr_sdtmig_version_classes_get) | **GET** /mdr/sdtmig/{version}/classes | 
[**mdr_sdtmig_version_datasets_dataset_get**](SdtmImplementationGuideSdtmigApi.md#mdr_sdtmig_version_datasets_dataset_get) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**mdr_sdtmig_version_datasets_dataset_variables_get**](SdtmImplementationGuideSdtmigApi.md#mdr_sdtmig_version_datasets_dataset_variables_get) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**mdr_sdtmig_version_datasets_dataset_variables_var_get**](SdtmImplementationGuideSdtmigApi.md#mdr_sdtmig_version_datasets_dataset_variables_var_get) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**mdr_sdtmig_version_datasets_get**](SdtmImplementationGuideSdtmigApi.md#mdr_sdtmig_version_datasets_get) | **GET** /mdr/sdtmig/{version}/datasets | 
[**mdr_sdtmig_version_get**](SdtmImplementationGuideSdtmigApi.md#mdr_sdtmig_version_get) | **GET** /mdr/sdtmig/{version} | 



## mdr_root_sdtmig_datasets_dataset_variables_var_get

> models::RootSdtmigDatasetVariable mdr_root_sdtmig_datasets_dataset_variables_var_get(dataset, var)


Get Root SDTMIG Dataset Variable

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**dataset** | **String** | SDTMIG Dataset Identifier | [required] |
**var** | **String** | SDTMIG Variable Identifier | [required] |

### Return type

[**models::RootSdtmigDatasetVariable**](RootSdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtmig_version_classes_class_datasets_get

> models::SdtmigClassDatasets mdr_sdtmig_version_classes_class_datasets_get(version, class)


Get SDTMIG Class Dataset List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | SDTMIG Class Identifier | [required] |

### Return type

[**models::SdtmigClassDatasets**](SdtmigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtmig_version_classes_class_get

> models::SdtmigClass mdr_sdtmig_version_classes_class_get(version, class)


Get SDTMIG Class

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**class** | **String** | SDTMIG Class Identifier | [required] |

### Return type

[**models::SdtmigClass**](SdtmigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtmig_version_classes_get

> models::SdtmigClasses mdr_sdtmig_version_classes_get(version)


Get SDTMIG Class List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::SdtmigClasses**](SdtmigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtmig_version_datasets_dataset_get

> models::SdtmigDataset mdr_sdtmig_version_datasets_dataset_get(version, dataset)


Get SDTMIG Dataset

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**dataset** | **String** | SDTMIG Dataset Identifier | [required] |

### Return type

[**models::SdtmigDataset**](SdtmigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtmig_version_datasets_dataset_variables_get

> models::SdtmigDatasetVariables mdr_sdtmig_version_datasets_dataset_variables_get(version, dataset)


Get SDTMIG Dataset Variable List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**dataset** | **String** | SDTMIG Dataset Identifier | [required] |

### Return type

[**models::SdtmigDatasetVariables**](SdtmigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtmig_version_datasets_dataset_variables_var_get

> models::SdtmigDatasetVariable mdr_sdtmig_version_datasets_dataset_variables_var_get(version, dataset, var)


Get SDTMIG Dataset Variable

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |
**dataset** | **String** | SDTMIG Dataset Identifier | [required] |
**var** | **String** | SDTMIG Variable Identifier | [required] |

### Return type

[**models::SdtmigDatasetVariable**](SdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtmig_version_datasets_get

> models::SdtmigDatasets mdr_sdtmig_version_datasets_get(version)


Get SDTMIG Dataset List

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::SdtmigDatasets**](SdtmigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mdr_sdtmig_version_get

> models::SdtmigProduct mdr_sdtmig_version_get(version)


Get SDTMIG product

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**version** | **String** | CDISC Library Product Version | [required] |

### Return type

[**models::SdtmigProduct**](SdtmigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

