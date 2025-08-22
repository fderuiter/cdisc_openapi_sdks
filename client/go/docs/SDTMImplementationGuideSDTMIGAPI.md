# \SDTMImplementationGuideSDTMIGAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrRootSdtmigDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGAPI.md#MdrRootSdtmigDatasetsDatasetVariablesVarGet) | **Get** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**MdrSdtmigVersionClassesClassDatasetsGet**](SDTMImplementationGuideSDTMIGAPI.md#MdrSdtmigVersionClassesClassDatasetsGet) | **Get** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**MdrSdtmigVersionClassesClassGet**](SDTMImplementationGuideSDTMIGAPI.md#MdrSdtmigVersionClassesClassGet) | **Get** /mdr/sdtmig/{version}/classes/{class} | 
[**MdrSdtmigVersionClassesGet**](SDTMImplementationGuideSDTMIGAPI.md#MdrSdtmigVersionClassesGet) | **Get** /mdr/sdtmig/{version}/classes | 
[**MdrSdtmigVersionDatasetsDatasetGet**](SDTMImplementationGuideSDTMIGAPI.md#MdrSdtmigVersionDatasetsDatasetGet) | **Get** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**MdrSdtmigVersionDatasetsDatasetVariablesGet**](SDTMImplementationGuideSDTMIGAPI.md#MdrSdtmigVersionDatasetsDatasetVariablesGet) | **Get** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**MdrSdtmigVersionDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGAPI.md#MdrSdtmigVersionDatasetsDatasetVariablesVarGet) | **Get** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**MdrSdtmigVersionDatasetsGet**](SDTMImplementationGuideSDTMIGAPI.md#MdrSdtmigVersionDatasetsGet) | **Get** /mdr/sdtmig/{version}/datasets | 
[**MdrSdtmigVersionGet**](SDTMImplementationGuideSDTMIGAPI.md#MdrSdtmigVersionGet) | **Get** /mdr/sdtmig/{version} | 



## MdrRootSdtmigDatasetsDatasetVariablesVarGet

> RootSdtmigDatasetVariable MdrRootSdtmigDatasetsDatasetVariablesVarGet(ctx, dataset, var_).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	dataset := "DM" // string | SDTMIG Dataset Identifier
	var_ := "SUBJID" // string | SDTMIG Variable Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SDTMImplementationGuideSDTMIGAPI.MdrRootSdtmigDatasetsDatasetVariablesVarGet(context.Background(), dataset, var_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SDTMImplementationGuideSDTMIGAPI.MdrRootSdtmigDatasetsDatasetVariablesVarGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrRootSdtmigDatasetsDatasetVariablesVarGet`: RootSdtmigDatasetVariable
	fmt.Fprintf(os.Stdout, "Response from `SDTMImplementationGuideSDTMIGAPI.MdrRootSdtmigDatasetsDatasetVariablesVarGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**dataset** | **string** | SDTMIG Dataset Identifier | 
**var_** | **string** | SDTMIG Variable Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrRootSdtmigDatasetsDatasetVariablesVarGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**RootSdtmigDatasetVariable**](RootSdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmigVersionClassesClassDatasetsGet

> SdtmigClassDatasets MdrSdtmigVersionClassesClassDatasetsGet(ctx, version, class).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	version := "3-3" // string | CDISC Library Product Version
	class := "Findings" // string | SDTMIG Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionClassesClassDatasetsGet(context.Background(), version, class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionClassesClassDatasetsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmigVersionClassesClassDatasetsGet`: SdtmigClassDatasets
	fmt.Fprintf(os.Stdout, "Response from `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionClassesClassDatasetsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | SDTMIG Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmigVersionClassesClassDatasetsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SdtmigClassDatasets**](SdtmigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmigVersionClassesClassGet

> SdtmigClass MdrSdtmigVersionClassesClassGet(ctx, version, class).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	version := "3-3" // string | CDISC Library Product Version
	class := "Findings" // string | SDTMIG Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionClassesClassGet(context.Background(), version, class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionClassesClassGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmigVersionClassesClassGet`: SdtmigClass
	fmt.Fprintf(os.Stdout, "Response from `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionClassesClassGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | SDTMIG Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmigVersionClassesClassGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SdtmigClass**](SdtmigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmigVersionClassesGet

> SdtmigClasses MdrSdtmigVersionClassesGet(ctx, version).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	version := "3-3" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionClassesGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionClassesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmigVersionClassesGet`: SdtmigClasses
	fmt.Fprintf(os.Stdout, "Response from `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionClassesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmigVersionClassesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SdtmigClasses**](SdtmigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmigVersionDatasetsDatasetGet

> SdtmigDataset MdrSdtmigVersionDatasetsDatasetGet(ctx, version, dataset).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	version := "3-3" // string | CDISC Library Product Version
	dataset := "LB" // string | SDTMIG Dataset Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionDatasetsDatasetGet(context.Background(), version, dataset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionDatasetsDatasetGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmigVersionDatasetsDatasetGet`: SdtmigDataset
	fmt.Fprintf(os.Stdout, "Response from `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionDatasetsDatasetGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**dataset** | **string** | SDTMIG Dataset Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmigVersionDatasetsDatasetGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SdtmigDataset**](SdtmigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmigVersionDatasetsDatasetVariablesGet

> SdtmigDatasetVariables MdrSdtmigVersionDatasetsDatasetVariablesGet(ctx, version, dataset).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	version := "3-3" // string | CDISC Library Product Version
	dataset := "LB" // string | SDTMIG Dataset Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionDatasetsDatasetVariablesGet(context.Background(), version, dataset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionDatasetsDatasetVariablesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmigVersionDatasetsDatasetVariablesGet`: SdtmigDatasetVariables
	fmt.Fprintf(os.Stdout, "Response from `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionDatasetsDatasetVariablesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**dataset** | **string** | SDTMIG Dataset Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmigVersionDatasetsDatasetVariablesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SdtmigDatasetVariables**](SdtmigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmigVersionDatasetsDatasetVariablesVarGet

> SdtmigDatasetVariable MdrSdtmigVersionDatasetsDatasetVariablesVarGet(ctx, version, dataset, var_).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	version := "3-3" // string | CDISC Library Product Version
	dataset := "LB" // string | SDTMIG Dataset Identifier
	var_ := "LBDTC" // string | SDTMIG Variable Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionDatasetsDatasetVariablesVarGet(context.Background(), version, dataset, var_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionDatasetsDatasetVariablesVarGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmigVersionDatasetsDatasetVariablesVarGet`: SdtmigDatasetVariable
	fmt.Fprintf(os.Stdout, "Response from `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionDatasetsDatasetVariablesVarGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**dataset** | **string** | SDTMIG Dataset Identifier | 
**var_** | **string** | SDTMIG Variable Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmigVersionDatasetsDatasetVariablesVarGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**SdtmigDatasetVariable**](SdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmigVersionDatasetsGet

> SdtmigDatasets MdrSdtmigVersionDatasetsGet(ctx, version).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	version := "3-3" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionDatasetsGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionDatasetsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmigVersionDatasetsGet`: SdtmigDatasets
	fmt.Fprintf(os.Stdout, "Response from `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionDatasetsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmigVersionDatasetsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SdtmigDatasets**](SdtmigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmigVersionGet

> SdtmigProduct MdrSdtmigVersionGet(ctx, version).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	version := "3-3" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmigVersionGet`: SdtmigProduct
	fmt.Fprintf(os.Stdout, "Response from `SDTMImplementationGuideSDTMIGAPI.MdrSdtmigVersionGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmigVersionGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SdtmigProduct**](SdtmigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

