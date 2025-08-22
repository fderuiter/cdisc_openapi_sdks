# SendigDataset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**DatasetStructure** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**SendigDatasetLinks**](SendigDatasetLinks.md) |  | [optional] 
**DatasetVariables** | Pointer to [**[]SendigDatasetVariable**](SendigDatasetVariable.md) |  | [optional] 

## Methods

### NewSendigDataset

`func NewSendigDataset() *SendigDataset`

NewSendigDataset instantiates a new SendigDataset object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendigDatasetWithDefaults

`func NewSendigDatasetWithDefaults() *SendigDataset`

NewSendigDatasetWithDefaults instantiates a new SendigDataset object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *SendigDataset) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *SendigDataset) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *SendigDataset) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *SendigDataset) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *SendigDataset) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SendigDataset) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SendigDataset) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SendigDataset) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SendigDataset) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SendigDataset) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SendigDataset) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SendigDataset) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SendigDataset) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SendigDataset) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SendigDataset) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SendigDataset) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetDatasetStructure

`func (o *SendigDataset) GetDatasetStructure() string`

GetDatasetStructure returns the DatasetStructure field if non-nil, zero value otherwise.

### GetDatasetStructureOk

`func (o *SendigDataset) GetDatasetStructureOk() (*string, bool)`

GetDatasetStructureOk returns a tuple with the DatasetStructure field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatasetStructure

`func (o *SendigDataset) SetDatasetStructure(v string)`

SetDatasetStructure sets DatasetStructure field to given value.

### HasDatasetStructure

`func (o *SendigDataset) HasDatasetStructure() bool`

HasDatasetStructure returns a boolean if a field has been set.

### GetLinks

`func (o *SendigDataset) GetLinks() SendigDatasetLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SendigDataset) GetLinksOk() (*SendigDatasetLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SendigDataset) SetLinks(v SendigDatasetLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SendigDataset) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetDatasetVariables

`func (o *SendigDataset) GetDatasetVariables() []SendigDatasetVariable`

GetDatasetVariables returns the DatasetVariables field if non-nil, zero value otherwise.

### GetDatasetVariablesOk

`func (o *SendigDataset) GetDatasetVariablesOk() (*[]SendigDatasetVariable, bool)`

GetDatasetVariablesOk returns a tuple with the DatasetVariables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatasetVariables

`func (o *SendigDataset) SetDatasetVariables(v []SendigDatasetVariable)`

SetDatasetVariables sets DatasetVariables field to given value.

### HasDatasetVariables

`func (o *SendigDataset) HasDatasetVariables() bool`

HasDatasetVariables returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


