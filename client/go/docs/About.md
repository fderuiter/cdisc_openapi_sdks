# About

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Links** | Pointer to [**AboutLinks**](AboutLinks.md) |  | [optional] 
**ReleaseNotes** | Pointer to **string** |  | [optional] 
**ApiDocumentation** | Pointer to **string** |  | [optional] 

## Methods

### NewAbout

`func NewAbout() *About`

NewAbout instantiates a new About object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAboutWithDefaults

`func NewAboutWithDefaults() *About`

NewAboutWithDefaults instantiates a new About object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLinks

`func (o *About) GetLinks() AboutLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *About) GetLinksOk() (*AboutLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *About) SetLinks(v AboutLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *About) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetReleaseNotes

`func (o *About) GetReleaseNotes() string`

GetReleaseNotes returns the ReleaseNotes field if non-nil, zero value otherwise.

### GetReleaseNotesOk

`func (o *About) GetReleaseNotesOk() (*string, bool)`

GetReleaseNotesOk returns a tuple with the ReleaseNotes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReleaseNotes

`func (o *About) SetReleaseNotes(v string)`

SetReleaseNotes sets ReleaseNotes field to given value.

### HasReleaseNotes

`func (o *About) HasReleaseNotes() bool`

HasReleaseNotes returns a boolean if a field has been set.

### GetApiDocumentation

`func (o *About) GetApiDocumentation() string`

GetApiDocumentation returns the ApiDocumentation field if non-nil, zero value otherwise.

### GetApiDocumentationOk

`func (o *About) GetApiDocumentationOk() (*string, bool)`

GetApiDocumentationOk returns a tuple with the ApiDocumentation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApiDocumentation

`func (o *About) SetApiDocumentation(v string)`

SetApiDocumentation sets ApiDocumentation field to given value.

### HasApiDocumentation

`func (o *About) HasApiDocumentation() bool`

HasApiDocumentation returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


