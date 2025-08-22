# SendigClass

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**SendigClassLinks**](SendigClassLinks.md) |  | [optional] 
**Datasets** | Pointer to [**[]SendigDataset**](SendigDataset.md) |  | [optional] 

## Methods

### NewSendigClass

`func NewSendigClass() *SendigClass`

NewSendigClass instantiates a new SendigClass object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendigClassWithDefaults

`func NewSendigClassWithDefaults() *SendigClass`

NewSendigClassWithDefaults instantiates a new SendigClass object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *SendigClass) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *SendigClass) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *SendigClass) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *SendigClass) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *SendigClass) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SendigClass) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SendigClass) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SendigClass) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SendigClass) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SendigClass) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SendigClass) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SendigClass) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SendigClass) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SendigClass) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SendigClass) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SendigClass) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetLinks

`func (o *SendigClass) GetLinks() SendigClassLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SendigClass) GetLinksOk() (*SendigClassLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SendigClass) SetLinks(v SendigClassLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SendigClass) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetDatasets

`func (o *SendigClass) GetDatasets() []SendigDataset`

GetDatasets returns the Datasets field if non-nil, zero value otherwise.

### GetDatasetsOk

`func (o *SendigClass) GetDatasetsOk() (*[]SendigDataset, bool)`

GetDatasetsOk returns a tuple with the Datasets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatasets

`func (o *SendigClass) SetDatasets(v []SendigDataset)`

SetDatasets sets Datasets field to given value.

### HasDatasets

`func (o *SendigClass) HasDatasets() bool`

HasDatasets returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


