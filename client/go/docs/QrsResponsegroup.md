# QrsResponsegroup

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**QrsResponsegroupLinks**](QrsResponsegroupLinks.md) |  | [optional] 

## Methods

### NewQrsResponsegroup

`func NewQrsResponsegroup() *QrsResponsegroup`

NewQrsResponsegroup instantiates a new QrsResponsegroup object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQrsResponsegroupWithDefaults

`func NewQrsResponsegroupWithDefaults() *QrsResponsegroup`

NewQrsResponsegroupWithDefaults instantiates a new QrsResponsegroup object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLabel

`func (o *QrsResponsegroup) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *QrsResponsegroup) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *QrsResponsegroup) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *QrsResponsegroup) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetLinks

`func (o *QrsResponsegroup) GetLinks() QrsResponsegroupLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *QrsResponsegroup) GetLinksOk() (*QrsResponsegroupLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *QrsResponsegroup) SetLinks(v QrsResponsegroupLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *QrsResponsegroup) HasLinks() bool`

HasLinks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


