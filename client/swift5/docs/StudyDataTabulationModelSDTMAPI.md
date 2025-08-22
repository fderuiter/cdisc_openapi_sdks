# StudyDataTabulationModelSDTMAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMAPI.md#mdrrootsdtmclassesclassvariablesvarget) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**mdrRootSdtmDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMAPI.md#mdrrootsdtmdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionClassesClassDatasetsGet**](StudyDataTabulationModelSDTMAPI.md#mdrsdtmversionclassesclassdatasetsget) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**mdrSdtmVersionClassesClassGet**](StudyDataTabulationModelSDTMAPI.md#mdrsdtmversionclassesclassget) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**mdrSdtmVersionClassesClassVariablesGet**](StudyDataTabulationModelSDTMAPI.md#mdrsdtmversionclassesclassvariablesget) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**mdrSdtmVersionClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMAPI.md#mdrsdtmversionclassesclassvariablesvarget) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**mdrSdtmVersionClassesGet**](StudyDataTabulationModelSDTMAPI.md#mdrsdtmversionclassesget) | **GET** /mdr/sdtm/{version}/classes | 
[**mdrSdtmVersionDatasetsDatasetGet**](StudyDataTabulationModelSDTMAPI.md#mdrsdtmversiondatasetsdatasetget) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**mdrSdtmVersionDatasetsDatasetVariablesGet**](StudyDataTabulationModelSDTMAPI.md#mdrsdtmversiondatasetsdatasetvariablesget) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**mdrSdtmVersionDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMAPI.md#mdrsdtmversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionDatasetsGet**](StudyDataTabulationModelSDTMAPI.md#mdrsdtmversiondatasetsget) | **GET** /mdr/sdtm/{version}/datasets | 
[**mdrSdtmVersionGet**](StudyDataTabulationModelSDTMAPI.md#mdrsdtmversionget) | **GET** /mdr/sdtm/{version} | 


# **mdrRootSdtmClassesClassVariablesVarGet**
```swift
    open class func mdrRootSdtmClassesClassVariablesVarGet(_class: String, _var: String, completion: @escaping (_ data: RootSdtmClassVariable?, _ error: Error?) -> Void)
```



Get Root of SDTM Class Variable

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let _class = "_class_example" // String | SDTM Class Identifier
let _var = "_var_example" // String | SDTM Variable Identifier

StudyDataTabulationModelSDTMAPI.mdrRootSdtmClassesClassVariablesVarGet(_class: _class, _var: _var) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String** | SDTM Class Identifier | 
 **_var** | **String** | SDTM Variable Identifier | 

### Return type

[**RootSdtmClassVariable**](RootSdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootSdtmDatasetsDatasetVariablesVarGet**
```swift
    open class func mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset: String, _var: String, completion: @escaping (_ data: RootSdtmDatasetVariable?, _ error: Error?) -> Void)
```



Get Root SDTM Dataset Variable

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dataset = "dataset_example" // String | SDTM Dataset Identifier
let _var = "_var_example" // String | SDTM Variable Identifier

StudyDataTabulationModelSDTMAPI.mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset: dataset, _var: _var) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **String** | SDTM Dataset Identifier | 
 **_var** | **String** | SDTM Variable Identifier | 

### Return type

[**RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesClassDatasetsGet**
```swift
    open class func mdrSdtmVersionClassesClassDatasetsGet(version: String, _class: String, completion: @escaping (_ data: SdtmClassDatasets?, _ error: Error?) -> Void)
```



Get SDTM Class Dataset List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | SDTM Class Identifier

StudyDataTabulationModelSDTMAPI.mdrSdtmVersionClassesClassDatasetsGet(version: version, _class: _class) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String** | CDISC Library Product Version | 
 **_class** | **String** | SDTM Class Identifier | 

### Return type

[**SdtmClassDatasets**](SdtmClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesClassGet**
```swift
    open class func mdrSdtmVersionClassesClassGet(version: String, _class: String, completion: @escaping (_ data: SdtmClass?, _ error: Error?) -> Void)
```



Get SDTM Class

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | SDTM Class Identifier

StudyDataTabulationModelSDTMAPI.mdrSdtmVersionClassesClassGet(version: version, _class: _class) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String** | CDISC Library Product Version | 
 **_class** | **String** | SDTM Class Identifier | 

### Return type

[**SdtmClass**](SdtmClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesClassVariablesGet**
```swift
    open class func mdrSdtmVersionClassesClassVariablesGet(version: String, _class: String, completion: @escaping (_ data: SdtmClassVariables?, _ error: Error?) -> Void)
```



Get SDTM Class Variable List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | SDTM Class Identifier

StudyDataTabulationModelSDTMAPI.mdrSdtmVersionClassesClassVariablesGet(version: version, _class: _class) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String** | CDISC Library Product Version | 
 **_class** | **String** | SDTM Class Identifier | 

### Return type

[**SdtmClassVariables**](SdtmClassVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesClassVariablesVarGet**
```swift
    open class func mdrSdtmVersionClassesClassVariablesVarGet(version: String, _class: String, _var: String, completion: @escaping (_ data: SdtmClassVariable?, _ error: Error?) -> Void)
```



Get SDTM Class Variable

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | SDTM Class Identifier
let _var = "_var_example" // String | SDTM Variable Identifier

StudyDataTabulationModelSDTMAPI.mdrSdtmVersionClassesClassVariablesVarGet(version: version, _class: _class, _var: _var) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String** | CDISC Library Product Version | 
 **_class** | **String** | SDTM Class Identifier | 
 **_var** | **String** | SDTM Variable Identifier | 

### Return type

[**SdtmClassVariable**](SdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesGet**
```swift
    open class func mdrSdtmVersionClassesGet(version: String, completion: @escaping (_ data: SdtmClasses?, _ error: Error?) -> Void)
```



Get SDTM Class List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

StudyDataTabulationModelSDTMAPI.mdrSdtmVersionClassesGet(version: version) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String** | CDISC Library Product Version | 

### Return type

[**SdtmClasses**](SdtmClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionDatasetsDatasetGet**
```swift
    open class func mdrSdtmVersionDatasetsDatasetGet(version: String, dataset: String, completion: @escaping (_ data: SdtmDataset?, _ error: Error?) -> Void)
```



Get SDTM Dataset

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let dataset = "dataset_example" // String | SDTM Dataset Identifier

StudyDataTabulationModelSDTMAPI.mdrSdtmVersionDatasetsDatasetGet(version: version, dataset: dataset) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String** | CDISC Library Product Version | 
 **dataset** | **String** | SDTM Dataset Identifier | 

### Return type

[**SdtmDataset**](SdtmDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionDatasetsDatasetVariablesGet**
```swift
    open class func mdrSdtmVersionDatasetsDatasetVariablesGet(version: String, dataset: String, completion: @escaping (_ data: SdtmDatasetVariables?, _ error: Error?) -> Void)
```



Get SDTM Dataset Variable List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let dataset = "dataset_example" // String | SDTM Dataset Identifier

StudyDataTabulationModelSDTMAPI.mdrSdtmVersionDatasetsDatasetVariablesGet(version: version, dataset: dataset) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String** | CDISC Library Product Version | 
 **dataset** | **String** | SDTM Dataset Identifier | 

### Return type

[**SdtmDatasetVariables**](SdtmDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionDatasetsDatasetVariablesVarGet**
```swift
    open class func mdrSdtmVersionDatasetsDatasetVariablesVarGet(version: String, dataset: String, _var: String, completion: @escaping (_ data: SdtmDatasetVariable?, _ error: Error?) -> Void)
```



Get SDTM Dataset Variable

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let dataset = "dataset_example" // String | SDTM Dataset Identifier
let _var = "_var_example" // String | SDTM Variable Identifier

StudyDataTabulationModelSDTMAPI.mdrSdtmVersionDatasetsDatasetVariablesVarGet(version: version, dataset: dataset, _var: _var) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String** | CDISC Library Product Version | 
 **dataset** | **String** | SDTM Dataset Identifier | 
 **_var** | **String** | SDTM Variable Identifier | 

### Return type

[**SdtmDatasetVariable**](SdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionDatasetsGet**
```swift
    open class func mdrSdtmVersionDatasetsGet(version: String, completion: @escaping (_ data: SdtmDatasets?, _ error: Error?) -> Void)
```



Get SDTM Dataset List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

StudyDataTabulationModelSDTMAPI.mdrSdtmVersionDatasetsGet(version: version) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String** | CDISC Library Product Version | 

### Return type

[**SdtmDatasets**](SdtmDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionGet**
```swift
    open class func mdrSdtmVersionGet(version: String, completion: @escaping (_ data: SdtmProduct?, _ error: Error?) -> Void)
```



Get SDTM product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

StudyDataTabulationModelSDTMAPI.mdrSdtmVersionGet(version: version) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String** | CDISC Library Product Version | 

### Return type

[**SdtmProduct**](SdtmProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

