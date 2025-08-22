# SDTMImplementationGuideSDTMIGAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmigDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGAPI.md#mdrrootsdtmigdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**mdrSdtmigVersionClassesClassDatasetsGet**](SDTMImplementationGuideSDTMIGAPI.md#mdrsdtmigversionclassesclassdatasetsget) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**mdrSdtmigVersionClassesClassGet**](SDTMImplementationGuideSDTMIGAPI.md#mdrsdtmigversionclassesclassget) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
[**mdrSdtmigVersionClassesGet**](SDTMImplementationGuideSDTMIGAPI.md#mdrsdtmigversionclassesget) | **GET** /mdr/sdtmig/{version}/classes | 
[**mdrSdtmigVersionDatasetsDatasetGet**](SDTMImplementationGuideSDTMIGAPI.md#mdrsdtmigversiondatasetsdatasetget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**mdrSdtmigVersionDatasetsDatasetVariablesGet**](SDTMImplementationGuideSDTMIGAPI.md#mdrsdtmigversiondatasetsdatasetvariablesget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**mdrSdtmigVersionDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGAPI.md#mdrsdtmigversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmigVersionDatasetsGet**](SDTMImplementationGuideSDTMIGAPI.md#mdrsdtmigversiondatasetsget) | **GET** /mdr/sdtmig/{version}/datasets | 
[**mdrSdtmigVersionGet**](SDTMImplementationGuideSDTMIGAPI.md#mdrsdtmigversionget) | **GET** /mdr/sdtmig/{version} | 


# **mdrRootSdtmigDatasetsDatasetVariablesVarGet**
```swift
    open class func mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset: String, _var: String, completion: @escaping (_ data: RootSdtmigDatasetVariable?, _ error: Error?) -> Void)
```



Get Root SDTMIG Dataset Variable

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dataset = "dataset_example" // String | SDTMIG Dataset Identifier
let _var = "_var_example" // String | SDTMIG Variable Identifier

SDTMImplementationGuideSDTMIGAPI.mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset: dataset, _var: _var) { (response, error) in
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
 **dataset** | **String** | SDTMIG Dataset Identifier | 
 **_var** | **String** | SDTMIG Variable Identifier | 

### Return type

[**RootSdtmigDatasetVariable**](RootSdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionClassesClassDatasetsGet**
```swift
    open class func mdrSdtmigVersionClassesClassDatasetsGet(version: String, _class: String, completion: @escaping (_ data: SdtmigClassDatasets?, _ error: Error?) -> Void)
```



Get SDTMIG Class Dataset List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | SDTMIG Class Identifier

SDTMImplementationGuideSDTMIGAPI.mdrSdtmigVersionClassesClassDatasetsGet(version: version, _class: _class) { (response, error) in
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
 **_class** | **String** | SDTMIG Class Identifier | 

### Return type

[**SdtmigClassDatasets**](SdtmigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionClassesClassGet**
```swift
    open class func mdrSdtmigVersionClassesClassGet(version: String, _class: String, completion: @escaping (_ data: SdtmigClass?, _ error: Error?) -> Void)
```



Get SDTMIG Class

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | SDTMIG Class Identifier

SDTMImplementationGuideSDTMIGAPI.mdrSdtmigVersionClassesClassGet(version: version, _class: _class) { (response, error) in
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
 **_class** | **String** | SDTMIG Class Identifier | 

### Return type

[**SdtmigClass**](SdtmigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionClassesGet**
```swift
    open class func mdrSdtmigVersionClassesGet(version: String, completion: @escaping (_ data: SdtmigClasses?, _ error: Error?) -> Void)
```



Get SDTMIG Class List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

SDTMImplementationGuideSDTMIGAPI.mdrSdtmigVersionClassesGet(version: version) { (response, error) in
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

[**SdtmigClasses**](SdtmigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionDatasetsDatasetGet**
```swift
    open class func mdrSdtmigVersionDatasetsDatasetGet(version: String, dataset: String, completion: @escaping (_ data: SdtmigDataset?, _ error: Error?) -> Void)
```



Get SDTMIG Dataset

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let dataset = "dataset_example" // String | SDTMIG Dataset Identifier

SDTMImplementationGuideSDTMIGAPI.mdrSdtmigVersionDatasetsDatasetGet(version: version, dataset: dataset) { (response, error) in
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
 **dataset** | **String** | SDTMIG Dataset Identifier | 

### Return type

[**SdtmigDataset**](SdtmigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionDatasetsDatasetVariablesGet**
```swift
    open class func mdrSdtmigVersionDatasetsDatasetVariablesGet(version: String, dataset: String, completion: @escaping (_ data: SdtmigDatasetVariables?, _ error: Error?) -> Void)
```



Get SDTMIG Dataset Variable List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let dataset = "dataset_example" // String | SDTMIG Dataset Identifier

SDTMImplementationGuideSDTMIGAPI.mdrSdtmigVersionDatasetsDatasetVariablesGet(version: version, dataset: dataset) { (response, error) in
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
 **dataset** | **String** | SDTMIG Dataset Identifier | 

### Return type

[**SdtmigDatasetVariables**](SdtmigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionDatasetsDatasetVariablesVarGet**
```swift
    open class func mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version: String, dataset: String, _var: String, completion: @escaping (_ data: SdtmigDatasetVariable?, _ error: Error?) -> Void)
```



Get SDTMIG Dataset Variable

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let dataset = "dataset_example" // String | SDTMIG Dataset Identifier
let _var = "_var_example" // String | SDTMIG Variable Identifier

SDTMImplementationGuideSDTMIGAPI.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version: version, dataset: dataset, _var: _var) { (response, error) in
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
 **dataset** | **String** | SDTMIG Dataset Identifier | 
 **_var** | **String** | SDTMIG Variable Identifier | 

### Return type

[**SdtmigDatasetVariable**](SdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionDatasetsGet**
```swift
    open class func mdrSdtmigVersionDatasetsGet(version: String, completion: @escaping (_ data: SdtmigDatasets?, _ error: Error?) -> Void)
```



Get SDTMIG Dataset List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

SDTMImplementationGuideSDTMIGAPI.mdrSdtmigVersionDatasetsGet(version: version) { (response, error) in
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

[**SdtmigDatasets**](SdtmigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionGet**
```swift
    open class func mdrSdtmigVersionGet(version: String, completion: @escaping (_ data: SdtmigProduct?, _ error: Error?) -> Void)
```



Get SDTMIG product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

SDTMImplementationGuideSDTMIGAPI.mdrSdtmigVersionGet(version: version) { (response, error) in
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

[**SdtmigProduct**](SdtmigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

