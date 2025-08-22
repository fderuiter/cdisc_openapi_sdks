# \AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrAdamProductDatastructuresGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#MdrAdamProductDatastructuresGet) | **Get** /mdr/adam/{product}/datastructures | 
[**MdrAdamProductDatastructuresStructureGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#MdrAdamProductDatastructuresStructureGet) | **Get** /mdr/adam/{product}/datastructures/{structure} | 
[**MdrAdamProductDatastructuresStructureVariablesGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#MdrAdamProductDatastructuresStructureVariablesGet) | **Get** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**MdrAdamProductDatastructuresStructureVariablesVarGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#MdrAdamProductDatastructuresStructureVariablesVarGet) | **Get** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**MdrAdamProductDatastructuresStructureVarsetsGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#MdrAdamProductDatastructuresStructureVarsetsGet) | **Get** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**MdrAdamProductDatastructuresStructureVarsetsVarsetGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#MdrAdamProductDatastructuresStructureVarsetsVarsetGet) | **Get** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**MdrAdamProductGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#MdrAdamProductGet) | **Get** /mdr/adam/{product} | 



## MdrAdamProductDatastructuresGet

> AdamProductDatastructures MdrAdamProductDatastructuresGet(ctx, product).Execute()





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
	product := "adamig-1-1" // string | CDISC Library Product

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresGet(context.Background(), product).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrAdamProductDatastructuresGet`: AdamProductDatastructures
	fmt.Fprintf(os.Stdout, "Response from `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**product** | **string** | CDISC Library Product | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrAdamProductDatastructuresGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdamProductDatastructures**](AdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrAdamProductDatastructuresStructureGet

> AdamDatastructure MdrAdamProductDatastructuresStructureGet(ctx, product, structure).Execute()





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
	product := "adamig-1-1" // string | CDISC Library Product
	structure := "ADSL" // string | Data structure Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureGet(context.Background(), product, structure).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrAdamProductDatastructuresStructureGet`: AdamDatastructure
	fmt.Fprintf(os.Stdout, "Response from `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**product** | **string** | CDISC Library Product | 
**structure** | **string** | Data structure Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrAdamProductDatastructuresStructureGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdamDatastructure**](AdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrAdamProductDatastructuresStructureVariablesGet

> AdamDatastructureVariables MdrAdamProductDatastructuresStructureVariablesGet(ctx, product, structure).Execute()





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
	product := "adamig-1-1" // string | CDISC Library Product
	structure := "ADSL" // string | ADaM Data Structure Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureVariablesGet(context.Background(), product, structure).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureVariablesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrAdamProductDatastructuresStructureVariablesGet`: AdamDatastructureVariables
	fmt.Fprintf(os.Stdout, "Response from `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureVariablesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**product** | **string** | CDISC Library Product | 
**structure** | **string** | ADaM Data Structure Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrAdamProductDatastructuresStructureVariablesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdamDatastructureVariables**](AdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrAdamProductDatastructuresStructureVariablesVarGet

> AdamVariable MdrAdamProductDatastructuresStructureVariablesVarGet(ctx, product, structure, var_).Execute()





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
	product := "adamig-1-1" // string | CDISC Library Product
	structure := "ADSL" // string | ADaM Data Structure Identifier
	var_ := "SITEGRy" // string | ADaM Variable Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureVariablesVarGet(context.Background(), product, structure, var_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureVariablesVarGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrAdamProductDatastructuresStructureVariablesVarGet`: AdamVariable
	fmt.Fprintf(os.Stdout, "Response from `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureVariablesVarGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**product** | **string** | CDISC Library Product | 
**structure** | **string** | ADaM Data Structure Identifier | 
**var_** | **string** | ADaM Variable Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrAdamProductDatastructuresStructureVariablesVarGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**AdamVariable**](AdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrAdamProductDatastructuresStructureVarsetsGet

> AdamDatastructureVarsets MdrAdamProductDatastructuresStructureVarsetsGet(ctx, product, structure).Execute()





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
	product := "adamig-1-1" // string | CDISC Library Product
	structure := "ADSL" // string | ADaM Data Structure Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureVarsetsGet(context.Background(), product, structure).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureVarsetsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrAdamProductDatastructuresStructureVarsetsGet`: AdamDatastructureVarsets
	fmt.Fprintf(os.Stdout, "Response from `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureVarsetsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**product** | **string** | CDISC Library Product | 
**structure** | **string** | ADaM Data Structure Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrAdamProductDatastructuresStructureVarsetsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrAdamProductDatastructuresStructureVarsetsVarsetGet

> AdamVarset MdrAdamProductDatastructuresStructureVarsetsVarsetGet(ctx, product, structure, varset).Execute()





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
	product := "adamig-1-1" // string | CDISC Library Product
	structure := "ADSL" // string | ADaM Data Structure Identifier
	varset := "Identifier" // string | ADaM Variable Set Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureVarsetsVarsetGet(context.Background(), product, structure, varset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureVarsetsVarsetGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrAdamProductDatastructuresStructureVarsetsVarsetGet`: AdamVarset
	fmt.Fprintf(os.Stdout, "Response from `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductDatastructuresStructureVarsetsVarsetGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**product** | **string** | CDISC Library Product | 
**structure** | **string** | ADaM Data Structure Identifier | 
**varset** | **string** | ADaM Variable Set Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrAdamProductDatastructuresStructureVarsetsVarsetGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**AdamVarset**](AdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrAdamProductGet

> AdamProduct MdrAdamProductGet(ctx, product).Execute()





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
	product := "adamig-1-1" // string | CDISC Library Product

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductGet(context.Background(), product).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrAdamProductGet`: AdamProduct
	fmt.Fprintf(os.Stdout, "Response from `AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.MdrAdamProductGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**product** | **string** | CDISC Library Product | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrAdamProductGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdamProduct**](AdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

