# QrsResponses

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**QrsResponseLinks**](QrsResponseLinks.md) |  | [optional] 

## Methods

### NewQrsResponses

`func NewQrsResponses() *QrsResponses`

NewQrsResponses instantiates a new QrsResponses object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQrsResponsesWithDefaults

`func NewQrsResponsesWithDefaults() *QrsResponses`

NewQrsResponsesWithDefaults instantiates a new QrsResponses object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *QrsResponses) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *QrsResponses) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *QrsResponses) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *QrsResponses) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetLinks

`func (o *QrsResponses) GetLinks() QrsResponseLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *QrsResponses) GetLinksOk() (*QrsResponseLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *QrsResponses) SetLinks(v QrsResponseLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *QrsResponses) HasLinks() bool`

HasLinks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


