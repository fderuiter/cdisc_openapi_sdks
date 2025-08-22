# SdtmigDatasetVariableLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | Pointer to [**SdtmigDatasetVariableRef**](SdtmigDatasetVariableRef.md) |  | [optional] 
**Codelist** | Pointer to [**[]RootCtCodelistRefElement**](RootCtCodelistRefElement.md) |  | [optional] 
**ModelClassVariable** | Pointer to [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] 
**ModelDatasetVariable** | Pointer to [**SdtmDatasetVariableRef**](SdtmDatasetVariableRef.md) |  | [optional] 
**ParentProduct** | Pointer to [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] 
**ParentDataset** | Pointer to [**SdtmigDatasetRef**](SdtmigDatasetRef.md) |  | [optional] 
**RootItem** | Pointer to [**RootSdtmigDatasetVariableRef**](RootSdtmigDatasetVariableRef.md) |  | [optional] 
**PriorVersion** | Pointer to [**SdtmigDatasetVariableRef**](SdtmigDatasetVariableRef.md) |  | [optional] 

## Methods

### NewSdtmigDatasetVariableLinks

`func NewSdtmigDatasetVariableLinks() *SdtmigDatasetVariableLinks`

NewSdtmigDatasetVariableLinks instantiates a new SdtmigDatasetVariableLinks object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSdtmigDatasetVariableLinksWithDefaults

`func NewSdtmigDatasetVariableLinksWithDefaults() *SdtmigDatasetVariableLinks`

NewSdtmigDatasetVariableLinksWithDefaults instantiates a new SdtmigDatasetVariableLinks object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSelf

`func (o *SdtmigDatasetVariableLinks) GetSelf() SdtmigDatasetVariableRef`

GetSelf returns the Self field if non-nil, zero value otherwise.

### GetSelfOk

`func (o *SdtmigDatasetVariableLinks) GetSelfOk() (*SdtmigDatasetVariableRef, bool)`

GetSelfOk returns a tuple with the Self field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSelf

`func (o *SdtmigDatasetVariableLinks) SetSelf(v SdtmigDatasetVariableRef)`

SetSelf sets Self field to given value.

### HasSelf

`func (o *SdtmigDatasetVariableLinks) HasSelf() bool`

HasSelf returns a boolean if a field has been set.

### GetCodelist

`func (o *SdtmigDatasetVariableLinks) GetCodelist() []RootCtCodelistRefElement`

GetCodelist returns the Codelist field if non-nil, zero value otherwise.

### GetCodelistOk

`func (o *SdtmigDatasetVariableLinks) GetCodelistOk() (*[]RootCtCodelistRefElement, bool)`

GetCodelistOk returns a tuple with the Codelist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodelist

`func (o *SdtmigDatasetVariableLinks) SetCodelist(v []RootCtCodelistRefElement)`

SetCodelist sets Codelist field to given value.

### HasCodelist

`func (o *SdtmigDatasetVariableLinks) HasCodelist() bool`

HasCodelist returns a boolean if a field has been set.

### GetModelClassVariable

`func (o *SdtmigDatasetVariableLinks) GetModelClassVariable() SdtmClassVariableRef`

GetModelClassVariable returns the ModelClassVariable field if non-nil, zero value otherwise.

### GetModelClassVariableOk

`func (o *SdtmigDatasetVariableLinks) GetModelClassVariableOk() (*SdtmClassVariableRef, bool)`

GetModelClassVariableOk returns a tuple with the ModelClassVariable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModelClassVariable

`func (o *SdtmigDatasetVariableLinks) SetModelClassVariable(v SdtmClassVariableRef)`

SetModelClassVariable sets ModelClassVariable field to given value.

### HasModelClassVariable

`func (o *SdtmigDatasetVariableLinks) HasModelClassVariable() bool`

HasModelClassVariable returns a boolean if a field has been set.

### GetModelDatasetVariable

`func (o *SdtmigDatasetVariableLinks) GetModelDatasetVariable() SdtmDatasetVariableRef`

GetModelDatasetVariable returns the ModelDatasetVariable field if non-nil, zero value otherwise.

### GetModelDatasetVariableOk

`func (o *SdtmigDatasetVariableLinks) GetModelDatasetVariableOk() (*SdtmDatasetVariableRef, bool)`

GetModelDatasetVariableOk returns a tuple with the ModelDatasetVariable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModelDatasetVariable

`func (o *SdtmigDatasetVariableLinks) SetModelDatasetVariable(v SdtmDatasetVariableRef)`

SetModelDatasetVariable sets ModelDatasetVariable field to given value.

### HasModelDatasetVariable

`func (o *SdtmigDatasetVariableLinks) HasModelDatasetVariable() bool`

HasModelDatasetVariable returns a boolean if a field has been set.

### GetParentProduct

`func (o *SdtmigDatasetVariableLinks) GetParentProduct() SdtmigProductRef`

GetParentProduct returns the ParentProduct field if non-nil, zero value otherwise.

### GetParentProductOk

`func (o *SdtmigDatasetVariableLinks) GetParentProductOk() (*SdtmigProductRef, bool)`

GetParentProductOk returns a tuple with the ParentProduct field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentProduct

`func (o *SdtmigDatasetVariableLinks) SetParentProduct(v SdtmigProductRef)`

SetParentProduct sets ParentProduct field to given value.

### HasParentProduct

`func (o *SdtmigDatasetVariableLinks) HasParentProduct() bool`

HasParentProduct returns a boolean if a field has been set.

### GetParentDataset

`func (o *SdtmigDatasetVariableLinks) GetParentDataset() SdtmigDatasetRef`

GetParentDataset returns the ParentDataset field if non-nil, zero value otherwise.

### GetParentDatasetOk

`func (o *SdtmigDatasetVariableLinks) GetParentDatasetOk() (*SdtmigDatasetRef, bool)`

GetParentDatasetOk returns a tuple with the ParentDataset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentDataset

`func (o *SdtmigDatasetVariableLinks) SetParentDataset(v SdtmigDatasetRef)`

SetParentDataset sets ParentDataset field to given value.

### HasParentDataset

`func (o *SdtmigDatasetVariableLinks) HasParentDataset() bool`

HasParentDataset returns a boolean if a field has been set.

### GetRootItem

`func (o *SdtmigDatasetVariableLinks) GetRootItem() RootSdtmigDatasetVariableRef`

GetRootItem returns the RootItem field if non-nil, zero value otherwise.

### GetRootItemOk

`func (o *SdtmigDatasetVariableLinks) GetRootItemOk() (*RootSdtmigDatasetVariableRef, bool)`

GetRootItemOk returns a tuple with the RootItem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootItem

`func (o *SdtmigDatasetVariableLinks) SetRootItem(v RootSdtmigDatasetVariableRef)`

SetRootItem sets RootItem field to given value.

### HasRootItem

`func (o *SdtmigDatasetVariableLinks) HasRootItem() bool`

HasRootItem returns a boolean if a field has been set.

### GetPriorVersion

`func (o *SdtmigDatasetVariableLinks) GetPriorVersion() SdtmigDatasetVariableRef`

GetPriorVersion returns the PriorVersion field if non-nil, zero value otherwise.

### GetPriorVersionOk

`func (o *SdtmigDatasetVariableLinks) GetPriorVersionOk() (*SdtmigDatasetVariableRef, bool)`

GetPriorVersionOk returns a tuple with the PriorVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriorVersion

`func (o *SdtmigDatasetVariableLinks) SetPriorVersion(v SdtmigDatasetVariableRef)`

SetPriorVersion sets PriorVersion field to given value.

### HasPriorVersion

`func (o *SdtmigDatasetVariableLinks) HasPriorVersion() bool`

HasPriorVersion returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


