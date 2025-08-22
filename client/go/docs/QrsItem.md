# QrsItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**QuestionText** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**QrsItemLinks**](QrsItemLinks.md) |  | [optional] 

## Methods

### NewQrsItem

`func NewQrsItem() *QrsItem`

NewQrsItem instantiates a new QrsItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQrsItemWithDefaults

`func NewQrsItemWithDefaults() *QrsItem`

NewQrsItemWithDefaults instantiates a new QrsItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *QrsItem) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *QrsItem) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *QrsItem) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *QrsItem) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetLabel

`func (o *QrsItem) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *QrsItem) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *QrsItem) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *QrsItem) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetQuestionText

`func (o *QrsItem) GetQuestionText() string`

GetQuestionText returns the QuestionText field if non-nil, zero value otherwise.

### GetQuestionTextOk

`func (o *QrsItem) GetQuestionTextOk() (*string, bool)`

GetQuestionTextOk returns a tuple with the QuestionText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuestionText

`func (o *QrsItem) SetQuestionText(v string)`

SetQuestionText sets QuestionText field to given value.

### HasQuestionText

`func (o *QrsItem) HasQuestionText() bool`

HasQuestionText returns a boolean if a field has been set.

### GetLinks

`func (o *QrsItem) GetLinks() QrsItemLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *QrsItem) GetLinksOk() (*QrsItemLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *QrsItem) SetLinks(v QrsItemLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *QrsItem) HasLinks() bool`

HasLinks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


