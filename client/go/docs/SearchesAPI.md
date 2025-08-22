# \SearchesAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrSearchGet**](SearchesAPI.md#MdrSearchGet) | **Get** /mdr/search | 
[**MdrSearchScopesGet**](SearchesAPI.md#MdrSearchScopesGet) | **Get** /mdr/search/scopes | 
[**MdrSearchScopesScopeGet**](SearchesAPI.md#MdrSearchScopesScopeGet) | **Get** /mdr/search/scopes/{scope} | 



## MdrSearchGet

> DefaultSearchResponse MdrSearchGet(ctx).Q(q).Highlight(highlight).Start(start).PageSize(pageSize).Class(class).Codelist(codelist).ConceptId(conceptId).Core(core).DataStructure(dataStructure).DatasetStructure(datasetStructure).Definition(definition).Description(description).Domain(domain).EffectiveDate(effectiveDate).Extensible(extensible).Href(href).Label(label).MeasureType(measureType).Name(name).PreferredTerm(preferredTerm).Product(product).ProductGroup(productGroup).RegistrationStatus(registrationStatus).RoleDescription(roleDescription).SdtmTarget(sdtmTarget).SimpleDatatype(simpleDatatype).SubmissionValue(submissionValue).Synonyms(synonyms).Type_(type_).UiHref(uiHref).ValueDomain(valueDomain).VariableSet(variableSet).Version(version).Execute()





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
	q := "q_example" // string | Search Term Expression
	highlight := "highlight_example" // string | Search Highlight Expression (optional)
	start := float32(8.14) // float32 | Initial Search Result Index (optional) (default to 0)
	pageSize := float32(8.14) // float32 | Number of Search Results to Return (optional) (default to 100)
	class := "class_example" // string | Limit Search by Setting Scope to Class (optional)
	codelist := "codelist_example" // string | Limit Search by Setting Scope to Codelist (optional)
	conceptId := "conceptId_example" // string | Limit Search by Setting Scope to Concept ID (optional)
	core := "core_example" // string | Limit Search by Setting Scope to Core (optional)
	dataStructure := "dataStructure_example" // string | Limit Search by Setting Scope to Data Structure (optional)
	datasetStructure := "datasetStructure_example" // string | Limit Search by Setting Scope to Dataset Structure (optional)
	definition := "definition_example" // string | Limit Search by Setting Scope to Definition (optional)
	description := "description_example" // string | Limit Search by Setting Scope to Description (optional)
	domain := "domain_example" // string | Limit Search by Setting Scope to Domain (optional)
	effectiveDate := "effectiveDate_example" // string | Limit Search by Setting Scope to Effective Date (optional)
	extensible := "extensible_example" // string | Limit Search by Setting Scope to Extensible (optional)
	href := "href_example" // string | Limit Search by Setting Scope to Href (optional)
	label := "label_example" // string | Limit Search by Setting Scope to Label (optional)
	measureType := "measureType_example" // string | SLimit Search by Setting Scope to Measure Type (optional)
	name := "name_example" // string | Limit Search by Setting Scope to Name (optional)
	preferredTerm := "preferredTerm_example" // string | Limit Search by Setting Scope to Preferred Term (optional)
	product := "product_example" // string | Limit Search by Setting Scope to Product (optional)
	productGroup := "productGroup_example" // string | Limit Search by Setting Scope to Product Group (optional)
	registrationStatus := "registrationStatus_example" // string | Limit Search by Setting Scope to Registration Status (optional)
	roleDescription := "roleDescription_example" // string | Limit Search by Setting Scope to Role Description (optional)
	sdtmTarget := "sdtmTarget_example" // string | Limit Search by Setting Scope to SDTM Target (optional)
	simpleDatatype := "simpleDatatype_example" // string | Limit Search by Setting Scope to Simple Datatype (optional)
	submissionValue := "submissionValue_example" // string | Limit Search by Setting Scope to Submission Value (optional)
	synonyms := "synonyms_example" // string | Limit Search by Setting Scope to Synonyms (optional)
	type_ := "type__example" // string | Limit Search by Setting Scope to Type (optional)
	uiHref := "uiHref_example" // string | Limit Search by Setting Scope to UI Href (optional)
	valueDomain := "valueDomain_example" // string | Limit Search by Setting Scope to Value Domain (optional)
	variableSet := "variableSet_example" // string | Limit Search by Setting Scope to Variable Set (optional)
	version := "version_example" // string | Limit Search by Setting Scope to Version (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SearchesAPI.MdrSearchGet(context.Background()).Q(q).Highlight(highlight).Start(start).PageSize(pageSize).Class(class).Codelist(codelist).ConceptId(conceptId).Core(core).DataStructure(dataStructure).DatasetStructure(datasetStructure).Definition(definition).Description(description).Domain(domain).EffectiveDate(effectiveDate).Extensible(extensible).Href(href).Label(label).MeasureType(measureType).Name(name).PreferredTerm(preferredTerm).Product(product).ProductGroup(productGroup).RegistrationStatus(registrationStatus).RoleDescription(roleDescription).SdtmTarget(sdtmTarget).SimpleDatatype(simpleDatatype).SubmissionValue(submissionValue).Synonyms(synonyms).Type_(type_).UiHref(uiHref).ValueDomain(valueDomain).VariableSet(variableSet).Version(version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SearchesAPI.MdrSearchGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSearchGet`: DefaultSearchResponse
	fmt.Fprintf(os.Stdout, "Response from `SearchesAPI.MdrSearchGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiMdrSearchGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string** | Search Term Expression | 
 **highlight** | **string** | Search Highlight Expression | 
 **start** | **float32** | Initial Search Result Index | [default to 0]
 **pageSize** | **float32** | Number of Search Results to Return | [default to 100]
 **class** | **string** | Limit Search by Setting Scope to Class | 
 **codelist** | **string** | Limit Search by Setting Scope to Codelist | 
 **conceptId** | **string** | Limit Search by Setting Scope to Concept ID | 
 **core** | **string** | Limit Search by Setting Scope to Core | 
 **dataStructure** | **string** | Limit Search by Setting Scope to Data Structure | 
 **datasetStructure** | **string** | Limit Search by Setting Scope to Dataset Structure | 
 **definition** | **string** | Limit Search by Setting Scope to Definition | 
 **description** | **string** | Limit Search by Setting Scope to Description | 
 **domain** | **string** | Limit Search by Setting Scope to Domain | 
 **effectiveDate** | **string** | Limit Search by Setting Scope to Effective Date | 
 **extensible** | **string** | Limit Search by Setting Scope to Extensible | 
 **href** | **string** | Limit Search by Setting Scope to Href | 
 **label** | **string** | Limit Search by Setting Scope to Label | 
 **measureType** | **string** | SLimit Search by Setting Scope to Measure Type | 
 **name** | **string** | Limit Search by Setting Scope to Name | 
 **preferredTerm** | **string** | Limit Search by Setting Scope to Preferred Term | 
 **product** | **string** | Limit Search by Setting Scope to Product | 
 **productGroup** | **string** | Limit Search by Setting Scope to Product Group | 
 **registrationStatus** | **string** | Limit Search by Setting Scope to Registration Status | 
 **roleDescription** | **string** | Limit Search by Setting Scope to Role Description | 
 **sdtmTarget** | **string** | Limit Search by Setting Scope to SDTM Target | 
 **simpleDatatype** | **string** | Limit Search by Setting Scope to Simple Datatype | 
 **submissionValue** | **string** | Limit Search by Setting Scope to Submission Value | 
 **synonyms** | **string** | Limit Search by Setting Scope to Synonyms | 
 **type_** | **string** | Limit Search by Setting Scope to Type | 
 **uiHref** | **string** | Limit Search by Setting Scope to UI Href | 
 **valueDomain** | **string** | Limit Search by Setting Scope to Value Domain | 
 **variableSet** | **string** | Limit Search by Setting Scope to Variable Set | 
 **version** | **string** | Limit Search by Setting Scope to Version | 

### Return type

[**DefaultSearchResponse**](DefaultSearchResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSearchScopesGet

> MdrSearchScopesGet200Response MdrSearchScopesGet(ctx).Execute()





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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SearchesAPI.MdrSearchScopesGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SearchesAPI.MdrSearchScopesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSearchScopesGet`: MdrSearchScopesGet200Response
	fmt.Fprintf(os.Stdout, "Response from `SearchesAPI.MdrSearchScopesGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSearchScopesGetRequest struct via the builder pattern


### Return type

[**MdrSearchScopesGet200Response**](MdrSearchScopesGet200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrSearchScopesScopeGet

> ScopeValues MdrSearchScopesScopeGet(ctx, scope).Execute()





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
	scope := openapiclient.DefaultSearchScopes("class") // DefaultSearchScopes | Search Scope

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SearchesAPI.MdrSearchScopesScopeGet(context.Background(), scope).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SearchesAPI.MdrSearchScopesScopeGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrSearchScopesScopeGet`: ScopeValues
	fmt.Fprintf(os.Stdout, "Response from `SearchesAPI.MdrSearchScopesScopeGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**scope** | [**DefaultSearchScopes**](.md) | Search Scope | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrSearchScopesScopeGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ScopeValues**](ScopeValues.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

