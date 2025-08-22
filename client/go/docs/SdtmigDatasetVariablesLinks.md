# SdtmigDatasetVariablesLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | Pointer to [**SdtmigDatasetVariablesRef**](SdtmigDatasetVariablesRef.md) |  | [optional] 
**ModelDataset** | Pointer to [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] 
**ParentProduct** | Pointer to [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] 
**ParentClass** | Pointer to [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] 
**PriorVersion** | Pointer to [**SdtmigDatasetVariablesRef**](SdtmigDatasetVariablesRef.md) |  | [optional] 
**DatasetVariables** | Pointer to [**[]SdtmigDatasetVariableRefElement**](SdtmigDatasetVariableRefElement.md) |  | [optional] 

## Methods

### NewSdtmigDatasetVariablesLinks

`func NewSdtmigDatasetVariablesLinks() *SdtmigDatasetVariablesLinks`

NewSdtmigDatasetVariablesLinks instantiates a new SdtmigDatasetVariablesLinks object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSdtmigDatasetVariablesLinksWithDefaults

`func NewSdtmigDatasetVariablesLinksWithDefaults() *SdtmigDatasetVariablesLinks`

NewSdtmigDatasetVariablesLinksWithDefaults instantiates a new SdtmigDatasetVariablesLinks object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSelf

`func (o *SdtmigDatasetVariablesLinks) GetSelf() SdtmigDatasetVariablesRef`

GetSelf returns the Self field if non-nil, zero value otherwise.

### GetSelfOk

`func (o *SdtmigDatasetVariablesLinks) GetSelfOk() (*SdtmigDatasetVariablesRef, bool)`

GetSelfOk returns a tuple with the Self field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSelf

`func (o *SdtmigDatasetVariablesLinks) SetSelf(v SdtmigDatasetVariablesRef)`

SetSelf sets Self field to given value.

### HasSelf

`func (o *SdtmigDatasetVariablesLinks) HasSelf() bool`

HasSelf returns a boolean if a field has been set.

### GetModelDataset

`func (o *SdtmigDatasetVariablesLinks) GetModelDataset() SdtmDatasetRef`

GetModelDataset returns the ModelDataset field if non-nil, zero value otherwise.

### GetModelDatasetOk

`func (o *SdtmigDatasetVariablesLinks) GetModelDatasetOk() (*SdtmDatasetRef, bool)`

GetModelDatasetOk returns a tuple with the ModelDataset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModelDataset

`func (o *SdtmigDatasetVariablesLinks) SetModelDataset(v SdtmDatasetRef)`

SetModelDataset sets ModelDataset field to given value.

### HasModelDataset

`func (o *SdtmigDatasetVariablesLinks) HasModelDataset() bool`

HasModelDataset returns a boolean if a field has been set.

### GetParentProduct

`func (o *SdtmigDatasetVariablesLinks) GetParentProduct() SdtmigProductRef`

GetParentProduct returns the ParentProduct field if non-nil, zero value otherwise.

### GetParentProductOk

`func (o *SdtmigDatasetVariablesLinks) GetParentProductOk() (*SdtmigProductRef, bool)`

GetParentProductOk returns a tuple with the ParentProduct field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentProduct

`func (o *SdtmigDatasetVariablesLinks) SetParentProduct(v SdtmigProductRef)`

SetParentProduct sets ParentProduct field to given value.

### HasParentProduct

`func (o *SdtmigDatasetVariablesLinks) HasParentProduct() bool`

HasParentProduct returns a boolean if a field has been set.

### GetParentClass

`func (o *SdtmigDatasetVariablesLinks) GetParentClass() SdtmigClassRef`

GetParentClass returns the ParentClass field if non-nil, zero value otherwise.

### GetParentClassOk

`func (o *SdtmigDatasetVariablesLinks) GetParentClassOk() (*SdtmigClassRef, bool)`

GetParentClassOk returns a tuple with the ParentClass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentClass

`func (o *SdtmigDatasetVariablesLinks) SetParentClass(v SdtmigClassRef)`

SetParentClass sets ParentClass field to given value.

### HasParentClass

`func (o *SdtmigDatasetVariablesLinks) HasParentClass() bool`

HasParentClass returns a boolean if a field has been set.

### GetPriorVersion

`func (o *SdtmigDatasetVariablesLinks) GetPriorVersion() SdtmigDatasetVariablesRef`

GetPriorVersion returns the PriorVersion field if non-nil, zero value otherwise.

### GetPriorVersionOk

`func (o *SdtmigDatasetVariablesLinks) GetPriorVersionOk() (*SdtmigDatasetVariablesRef, bool)`

GetPriorVersionOk returns a tuple with the PriorVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriorVersion

`func (o *SdtmigDatasetVariablesLinks) SetPriorVersion(v SdtmigDatasetVariablesRef)`

SetPriorVersion sets PriorVersion field to given value.

### HasPriorVersion

`func (o *SdtmigDatasetVariablesLinks) HasPriorVersion() bool`

HasPriorVersion returns a boolean if a field has been set.

### GetDatasetVariables

`func (o *SdtmigDatasetVariablesLinks) GetDatasetVariables() []SdtmigDatasetVariableRefElement`

GetDatasetVariables returns the DatasetVariables field if non-nil, zero value otherwise.

### GetDatasetVariablesOk

`func (o *SdtmigDatasetVariablesLinks) GetDatasetVariablesOk() (*[]SdtmigDatasetVariableRefElement, bool)`

GetDatasetVariablesOk returns a tuple with the DatasetVariables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatasetVariables

`func (o *SdtmigDatasetVariablesLinks) SetDatasetVariables(v []SdtmigDatasetVariableRefElement)`

SetDatasetVariables sets DatasetVariables field to given value.

### HasDatasetVariables

`func (o *SdtmigDatasetVariablesLinks) HasDatasetVariables() bool`

HasDatasetVariables returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


