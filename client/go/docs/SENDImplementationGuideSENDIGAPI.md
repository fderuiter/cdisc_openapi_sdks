# \SENDImplementationGuideSENDIGAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrRootSendigDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGAPI.md#MdrRootSendigDatasetsDatasetVariablesVarGet) | **Get** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**MdrSendigVersionClassesClassDatasetsGet**](SENDImplementationGuideSENDIGAPI.md#MdrSendigVersionClassesClassDatasetsGet) | **Get** /mdr/sendig/{version}/classes/{class}/datasets | 
[**MdrSendigVersionClassesClassGet**](SENDImplementationGuideSENDIGAPI.md#MdrSendigVersionClassesClassGet) | **Get** /mdr/sendig/{version}/classes/{class} | 
[**MdrSendigVersionClassesGet**](SENDImplementationGuideSENDIGAPI.md#MdrSendigVersionClassesGet) | **Get** /mdr/sendig/{version}/classes | 
[**MdrSendigVersionDatasetsDatasetGet**](SENDImplementationGuideSENDIGAPI.md#MdrSendigVersionDatasetsDatasetGet) | **Get** /mdr/sendig/{version}/datasets/{dataset} | 
[**MdrSendigVersionDatasetsDatasetVariablesGet**](SENDImplementationGuideSENDIGAPI.md#MdrSendigVersionDatasetsDatasetVariablesGet) | **Get** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**MdrSendigVersionDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGAPI.md#MdrSendigVersionDatasetsDatasetVariablesVarGet) | **Get** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**MdrSendigVersionDatasetsGet**](SENDImplementationGuideSENDIGAPI.md#MdrSendigVersionDatasetsGet) | **Get** /mdr/sendig/{version}/datasets | 
[**MdrSendigVersionGet**](SENDImplementationGuideSENDIGAPI.md#MdrSendigVersionGet) | **Get** /mdr/sendig/{version} | 



## MdrRootSendigDatasetsDatasetVariablesVarGet

> RootSendigDatasetVariable MdrRootSendigDatasetsDatasetVariablesVarGet(ctx, dataset, var_).Execute()





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
	dataset := "VS" // string | SENDIG Dataset Identifier
	var_ := "VSTEST" // string | SENDIG Variable Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SENDImplementationGuideSENDIGAPI.MdrRootSendigDatasetsDatasetVariablesVarGet(context.Background(), dataset, var_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SENDImplementationGuideSENDIGAPI.MdrRootSendigDatasetsDatasetVariablesVarGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrRootSendigDatasetsDatasetVariablesVarGet`: RootSendigDatasetVariable
	fmt.Fprintf(os.Stdout, "Response from `SENDImplementationGuideSENDIGAPI.MdrRootSendigDatasetsDatasetVariablesVarGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**dataset** | **string** | SENDIG Dataset Identifier | 
**var_** | **string** | SENDIG Variable Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrRootSendigDatasetsDatasetVariablesVarGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**RootSendigDatasetVariable**](RootSendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSendigVersionClassesClassDatasetsGet

> SendigClassDatasets MdrSendigVersionClassesClassDatasetsGet(ctx, version, class).Execute()





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
	version := "3-1" // string | CDISC Library Product Version
	class := "Findings" // string | SENDIG Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SENDImplementationGuideSENDIGAPI.MdrSendigVersionClassesClassDatasetsGet(context.Background(), version, class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SENDImplementationGuideSENDIGAPI.MdrSendigVersionClassesClassDatasetsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSendigVersionClassesClassDatasetsGet`: SendigClassDatasets
	fmt.Fprintf(os.Stdout, "Response from `SENDImplementationGuideSENDIGAPI.MdrSendigVersionClassesClassDatasetsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | SENDIG Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSendigVersionClassesClassDatasetsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SendigClassDatasets**](SendigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSendigVersionClassesClassGet

> SendigClass MdrSendigVersionClassesClassGet(ctx, version, class).Execute()





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
	version := "3-1" // string | CDISC Library Product Version
	class := "Findings" // string | SENDIG Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SENDImplementationGuideSENDIGAPI.MdrSendigVersionClassesClassGet(context.Background(), version, class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SENDImplementationGuideSENDIGAPI.MdrSendigVersionClassesClassGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSendigVersionClassesClassGet`: SendigClass
	fmt.Fprintf(os.Stdout, "Response from `SENDImplementationGuideSENDIGAPI.MdrSendigVersionClassesClassGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | SENDIG Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSendigVersionClassesClassGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SendigClass**](SendigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSendigVersionClassesGet

> SendigClasses MdrSendigVersionClassesGet(ctx, version).Execute()





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
	version := "3-1" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SENDImplementationGuideSENDIGAPI.MdrSendigVersionClassesGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SENDImplementationGuideSENDIGAPI.MdrSendigVersionClassesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSendigVersionClassesGet`: SendigClasses
	fmt.Fprintf(os.Stdout, "Response from `SENDImplementationGuideSENDIGAPI.MdrSendigVersionClassesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSendigVersionClassesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SendigClasses**](SendigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSendigVersionDatasetsDatasetGet

> SendigDataset MdrSendigVersionDatasetsDatasetGet(ctx, version, dataset).Execute()





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
	version := "3-1" // string | CDISC Library Product Version
	dataset := "VS" // string | SENDIG Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SENDImplementationGuideSENDIGAPI.MdrSendigVersionDatasetsDatasetGet(context.Background(), version, dataset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SENDImplementationGuideSENDIGAPI.MdrSendigVersionDatasetsDatasetGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSendigVersionDatasetsDatasetGet`: SendigDataset
	fmt.Fprintf(os.Stdout, "Response from `SENDImplementationGuideSENDIGAPI.MdrSendigVersionDatasetsDatasetGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**dataset** | **string** | SENDIG Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSendigVersionDatasetsDatasetGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SendigDataset**](SendigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSendigVersionDatasetsDatasetVariablesGet

> SendigDatasetVariables MdrSendigVersionDatasetsDatasetVariablesGet(ctx, version, dataset).Execute()





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
	version := "3-1" // string | CDISC Library Product Version
	dataset := "VS" // string | SENDIG Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SENDImplementationGuideSENDIGAPI.MdrSendigVersionDatasetsDatasetVariablesGet(context.Background(), version, dataset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SENDImplementationGuideSENDIGAPI.MdrSendigVersionDatasetsDatasetVariablesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSendigVersionDatasetsDatasetVariablesGet`: SendigDatasetVariables
	fmt.Fprintf(os.Stdout, "Response from `SENDImplementationGuideSENDIGAPI.MdrSendigVersionDatasetsDatasetVariablesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**dataset** | **string** | SENDIG Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSendigVersionDatasetsDatasetVariablesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SendigDatasetVariables**](SendigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSendigVersionDatasetsDatasetVariablesVarGet

> SendigDatasetVariable MdrSendigVersionDatasetsDatasetVariablesVarGet(ctx, version, dataset, var_).Execute()





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
	version := "3-1" // string | CDISC Library Product Version
	dataset := "VS" // string | SENDIG Class Identifier
	var_ := "VSTEST" // string | SENDIG Variable Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SENDImplementationGuideSENDIGAPI.MdrSendigVersionDatasetsDatasetVariablesVarGet(context.Background(), version, dataset, var_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SENDImplementationGuideSENDIGAPI.MdrSendigVersionDatasetsDatasetVariablesVarGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSendigVersionDatasetsDatasetVariablesVarGet`: SendigDatasetVariable
	fmt.Fprintf(os.Stdout, "Response from `SENDImplementationGuideSENDIGAPI.MdrSendigVersionDatasetsDatasetVariablesVarGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**dataset** | **string** | SENDIG Class Identifier | 
**var_** | **string** | SENDIG Variable Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSendigVersionDatasetsDatasetVariablesVarGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**SendigDatasetVariable**](SendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSendigVersionDatasetsGet

> SendigDatasets MdrSendigVersionDatasetsGet(ctx, version).Execute()





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
	version := "3-1" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SENDImplementationGuideSENDIGAPI.MdrSendigVersionDatasetsGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SENDImplementationGuideSENDIGAPI.MdrSendigVersionDatasetsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSendigVersionDatasetsGet`: SendigDatasets
	fmt.Fprintf(os.Stdout, "Response from `SENDImplementationGuideSENDIGAPI.MdrSendigVersionDatasetsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSendigVersionDatasetsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SendigDatasets**](SendigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSendigVersionGet

> SendigProduct MdrSendigVersionGet(ctx, version).Execute()





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
	version := "3-1" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SENDImplementationGuideSENDIGAPI.MdrSendigVersionGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SENDImplementationGuideSENDIGAPI.MdrSendigVersionGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSendigVersionGet`: SendigProduct
	fmt.Fprintf(os.Stdout, "Response from `SENDImplementationGuideSENDIGAPI.MdrSendigVersionGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSendigVersionGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SendigProduct**](SendigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

