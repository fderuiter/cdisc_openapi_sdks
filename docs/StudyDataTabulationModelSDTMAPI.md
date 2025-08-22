# \StudyDataTabulationModelSDTMAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrRootSdtmClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMAPI.md#MdrRootSdtmClassesClassVariablesVarGet) | **Get** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**MdrRootSdtmDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMAPI.md#MdrRootSdtmDatasetsDatasetVariablesVarGet) | **Get** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**MdrSdtmVersionClassesClassDatasetsGet**](StudyDataTabulationModelSDTMAPI.md#MdrSdtmVersionClassesClassDatasetsGet) | **Get** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**MdrSdtmVersionClassesClassGet**](StudyDataTabulationModelSDTMAPI.md#MdrSdtmVersionClassesClassGet) | **Get** /mdr/sdtm/{version}/classes/{class} | 
[**MdrSdtmVersionClassesClassVariablesGet**](StudyDataTabulationModelSDTMAPI.md#MdrSdtmVersionClassesClassVariablesGet) | **Get** /mdr/sdtm/{version}/classes/{class}/variables | 
[**MdrSdtmVersionClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMAPI.md#MdrSdtmVersionClassesClassVariablesVarGet) | **Get** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**MdrSdtmVersionClassesGet**](StudyDataTabulationModelSDTMAPI.md#MdrSdtmVersionClassesGet) | **Get** /mdr/sdtm/{version}/classes | 
[**MdrSdtmVersionDatasetsDatasetGet**](StudyDataTabulationModelSDTMAPI.md#MdrSdtmVersionDatasetsDatasetGet) | **Get** /mdr/sdtm/{version}/datasets/{dataset} | 
[**MdrSdtmVersionDatasetsDatasetVariablesGet**](StudyDataTabulationModelSDTMAPI.md#MdrSdtmVersionDatasetsDatasetVariablesGet) | **Get** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**MdrSdtmVersionDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMAPI.md#MdrSdtmVersionDatasetsDatasetVariablesVarGet) | **Get** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**MdrSdtmVersionDatasetsGet**](StudyDataTabulationModelSDTMAPI.md#MdrSdtmVersionDatasetsGet) | **Get** /mdr/sdtm/{version}/datasets | 
[**MdrSdtmVersionGet**](StudyDataTabulationModelSDTMAPI.md#MdrSdtmVersionGet) | **Get** /mdr/sdtm/{version} | 



## MdrRootSdtmClassesClassVariablesVarGet

> RootSdtmClassVariable MdrRootSdtmClassesClassVariablesVarGet(ctx, class, var_).Execute()





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
	class := "GeneralObservations" // string | SDTM Class Identifier
	var_ := "--DTC" // string | SDTM Variable Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StudyDataTabulationModelSDTMAPI.MdrRootSdtmClassesClassVariablesVarGet(context.Background(), class, var_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StudyDataTabulationModelSDTMAPI.MdrRootSdtmClassesClassVariablesVarGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrRootSdtmClassesClassVariablesVarGet`: RootSdtmClassVariable
	fmt.Fprintf(os.Stdout, "Response from `StudyDataTabulationModelSDTMAPI.MdrRootSdtmClassesClassVariablesVarGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**class** | **string** | SDTM Class Identifier | 
**var_** | **string** | SDTM Variable Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrRootSdtmClassesClassVariablesVarGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**RootSdtmClassVariable**](RootSdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrRootSdtmDatasetsDatasetVariablesVarGet

> RootSdtmDatasetVariable MdrRootSdtmDatasetsDatasetVariablesVarGet(ctx, dataset, var_).Execute()





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
	dataset := "DM" // string | SDTM Dataset Identifier
	var_ := "SUBJID" // string | SDTM Variable Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StudyDataTabulationModelSDTMAPI.MdrRootSdtmDatasetsDatasetVariablesVarGet(context.Background(), dataset, var_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StudyDataTabulationModelSDTMAPI.MdrRootSdtmDatasetsDatasetVariablesVarGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrRootSdtmDatasetsDatasetVariablesVarGet`: RootSdtmDatasetVariable
	fmt.Fprintf(os.Stdout, "Response from `StudyDataTabulationModelSDTMAPI.MdrRootSdtmDatasetsDatasetVariablesVarGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**dataset** | **string** | SDTM Dataset Identifier | 
**var_** | **string** | SDTM Variable Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrRootSdtmDatasetsDatasetVariablesVarGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmVersionClassesClassDatasetsGet

> SdtmClassDatasets MdrSdtmVersionClassesClassDatasetsGet(ctx, version, class).Execute()





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
	version := "1-8" // string | CDISC Library Product Version
	class := "SpecialPurpose" // string | SDTM Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesClassDatasetsGet(context.Background(), version, class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesClassDatasetsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmVersionClassesClassDatasetsGet`: SdtmClassDatasets
	fmt.Fprintf(os.Stdout, "Response from `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesClassDatasetsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | SDTM Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmVersionClassesClassDatasetsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SdtmClassDatasets**](SdtmClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmVersionClassesClassGet

> SdtmClass MdrSdtmVersionClassesClassGet(ctx, version, class).Execute()





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
	version := "1-8" // string | CDISC Library Product Version
	class := "Findings" // string | SDTM Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesClassGet(context.Background(), version, class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesClassGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmVersionClassesClassGet`: SdtmClass
	fmt.Fprintf(os.Stdout, "Response from `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesClassGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | SDTM Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmVersionClassesClassGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SdtmClass**](SdtmClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmVersionClassesClassVariablesGet

> SdtmClassVariables MdrSdtmVersionClassesClassVariablesGet(ctx, version, class).Execute()





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
	version := "1-8" // string | CDISC Library Product Version
	class := "GeneralObservations" // string | SDTM Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesClassVariablesGet(context.Background(), version, class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesClassVariablesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmVersionClassesClassVariablesGet`: SdtmClassVariables
	fmt.Fprintf(os.Stdout, "Response from `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesClassVariablesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | SDTM Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmVersionClassesClassVariablesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SdtmClassVariables**](SdtmClassVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmVersionClassesClassVariablesVarGet

> SdtmClassVariable MdrSdtmVersionClassesClassVariablesVarGet(ctx, version, class, var_).Execute()





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
	version := "1-8" // string | CDISC Library Product Version
	class := "GeneralObservations" // string | SDTM Class Identifier
	var_ := "--DTC" // string | SDTM Variable Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesClassVariablesVarGet(context.Background(), version, class, var_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesClassVariablesVarGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmVersionClassesClassVariablesVarGet`: SdtmClassVariable
	fmt.Fprintf(os.Stdout, "Response from `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesClassVariablesVarGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | SDTM Class Identifier | 
**var_** | **string** | SDTM Variable Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmVersionClassesClassVariablesVarGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**SdtmClassVariable**](SdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmVersionClassesGet

> SdtmClasses MdrSdtmVersionClassesGet(ctx, version).Execute()





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
	version := "1-8" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmVersionClassesGet`: SdtmClasses
	fmt.Fprintf(os.Stdout, "Response from `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionClassesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmVersionClassesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SdtmClasses**](SdtmClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmVersionDatasetsDatasetGet

> SdtmDataset MdrSdtmVersionDatasetsDatasetGet(ctx, version, dataset).Execute()





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
	version := "1-8" // string | CDISC Library Product Version
	dataset := "DM" // string | SDTM Dataset Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StudyDataTabulationModelSDTMAPI.MdrSdtmVersionDatasetsDatasetGet(context.Background(), version, dataset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionDatasetsDatasetGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmVersionDatasetsDatasetGet`: SdtmDataset
	fmt.Fprintf(os.Stdout, "Response from `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionDatasetsDatasetGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**dataset** | **string** | SDTM Dataset Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmVersionDatasetsDatasetGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SdtmDataset**](SdtmDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmVersionDatasetsDatasetVariablesGet

> SdtmDatasetVariables MdrSdtmVersionDatasetsDatasetVariablesGet(ctx, version, dataset).Execute()





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
	version := "1-8" // string | CDISC Library Product Version
	dataset := "DM" // string | SDTM Dataset Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StudyDataTabulationModelSDTMAPI.MdrSdtmVersionDatasetsDatasetVariablesGet(context.Background(), version, dataset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionDatasetsDatasetVariablesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmVersionDatasetsDatasetVariablesGet`: SdtmDatasetVariables
	fmt.Fprintf(os.Stdout, "Response from `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionDatasetsDatasetVariablesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**dataset** | **string** | SDTM Dataset Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmVersionDatasetsDatasetVariablesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SdtmDatasetVariables**](SdtmDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmVersionDatasetsDatasetVariablesVarGet

> SdtmDatasetVariable MdrSdtmVersionDatasetsDatasetVariablesVarGet(ctx, version, dataset, var_).Execute()





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
	version := "1-8" // string | CDISC Library Product Version
	dataset := "DM" // string | SDTM Dataset Identifier
	var_ := "SUBJID" // string | SDTM Variable Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StudyDataTabulationModelSDTMAPI.MdrSdtmVersionDatasetsDatasetVariablesVarGet(context.Background(), version, dataset, var_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionDatasetsDatasetVariablesVarGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmVersionDatasetsDatasetVariablesVarGet`: SdtmDatasetVariable
	fmt.Fprintf(os.Stdout, "Response from `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionDatasetsDatasetVariablesVarGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**dataset** | **string** | SDTM Dataset Identifier | 
**var_** | **string** | SDTM Variable Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmVersionDatasetsDatasetVariablesVarGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**SdtmDatasetVariable**](SdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmVersionDatasetsGet

> SdtmDatasets MdrSdtmVersionDatasetsGet(ctx, version).Execute()





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
	version := "1-8" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StudyDataTabulationModelSDTMAPI.MdrSdtmVersionDatasetsGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionDatasetsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmVersionDatasetsGet`: SdtmDatasets
	fmt.Fprintf(os.Stdout, "Response from `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionDatasetsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmVersionDatasetsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SdtmDatasets**](SdtmDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSdtmVersionGet

> SdtmProduct MdrSdtmVersionGet(ctx, version).Execute()





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
	version := "1-8" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StudyDataTabulationModelSDTMAPI.MdrSdtmVersionGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSdtmVersionGet`: SdtmProduct
	fmt.Fprintf(os.Stdout, "Response from `StudyDataTabulationModelSDTMAPI.MdrSdtmVersionGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSdtmVersionGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SdtmProduct**](SdtmProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

