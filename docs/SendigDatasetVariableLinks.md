# SendigDatasetVariableLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | Pointer to [**SendigDatasetVariableRef**](SendigDatasetVariableRef.md) |  | [optional] 
**Codelist** | Pointer to [**[]RootCtCodelistRefElement**](RootCtCodelistRefElement.md) |  | [optional] 
**ModelClassVariable** | Pointer to [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] 
**ModelDatasetVariable** | Pointer to [**SdtmDatasetVariableRef**](SdtmDatasetVariableRef.md) |  | [optional] 
**ParentProduct** | Pointer to [**SendigProductRef**](SendigProductRef.md) |  | [optional] 
**ParentDataset** | Pointer to [**SendigDatasetRef**](SendigDatasetRef.md) |  | [optional] 
**RootItem** | Pointer to [**RootSendigDatasetVariableRef**](RootSendigDatasetVariableRef.md) |  | [optional] 
**PriorVersion** | Pointer to [**SendigDatasetVariableRef**](SendigDatasetVariableRef.md) |  | [optional] 

## Methods

### NewSendigDatasetVariableLinks

`func NewSendigDatasetVariableLinks() *SendigDatasetVariableLinks`

NewSendigDatasetVariableLinks instantiates a new SendigDatasetVariableLinks object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendigDatasetVariableLinksWithDefaults

`func NewSendigDatasetVariableLinksWithDefaults() *SendigDatasetVariableLinks`

NewSendigDatasetVariableLinksWithDefaults instantiates a new SendigDatasetVariableLinks object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSelf

`func (o *SendigDatasetVariableLinks) GetSelf() SendigDatasetVariableRef`

GetSelf returns the Self field if non-nil, zero value otherwise.

### GetSelfOk

`func (o *SendigDatasetVariableLinks) GetSelfOk() (*SendigDatasetVariableRef, bool)`

GetSelfOk returns a tuple with the Self field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSelf

`func (o *SendigDatasetVariableLinks) SetSelf(v SendigDatasetVariableRef)`

SetSelf sets Self field to given value.

### HasSelf

`func (o *SendigDatasetVariableLinks) HasSelf() bool`

HasSelf returns a boolean if a field has been set.

### GetCodelist

`func (o *SendigDatasetVariableLinks) GetCodelist() []RootCtCodelistRefElement`

GetCodelist returns the Codelist field if non-nil, zero value otherwise.

### GetCodelistOk

`func (o *SendigDatasetVariableLinks) GetCodelistOk() (*[]RootCtCodelistRefElement, bool)`

GetCodelistOk returns a tuple with the Codelist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodelist

`func (o *SendigDatasetVariableLinks) SetCodelist(v []RootCtCodelistRefElement)`

SetCodelist sets Codelist field to given value.

### HasCodelist

`func (o *SendigDatasetVariableLinks) HasCodelist() bool`

HasCodelist returns a boolean if a field has been set.

### GetModelClassVariable

`func (o *SendigDatasetVariableLinks) GetModelClassVariable() SdtmClassVariableRef`

GetModelClassVariable returns the ModelClassVariable field if non-nil, zero value otherwise.

### GetModelClassVariableOk

`func (o *SendigDatasetVariableLinks) GetModelClassVariableOk() (*SdtmClassVariableRef, bool)`

GetModelClassVariableOk returns a tuple with the ModelClassVariable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModelClassVariable

`func (o *SendigDatasetVariableLinks) SetModelClassVariable(v SdtmClassVariableRef)`

SetModelClassVariable sets ModelClassVariable field to given value.

### HasModelClassVariable

`func (o *SendigDatasetVariableLinks) HasModelClassVariable() bool`

HasModelClassVariable returns a boolean if a field has been set.

### GetModelDatasetVariable

`func (o *SendigDatasetVariableLinks) GetModelDatasetVariable() SdtmDatasetVariableRef`

GetModelDatasetVariable returns the ModelDatasetVariable field if non-nil, zero value otherwise.

### GetModelDatasetVariableOk

`func (o *SendigDatasetVariableLinks) GetModelDatasetVariableOk() (*SdtmDatasetVariableRef, bool)`

GetModelDatasetVariableOk returns a tuple with the ModelDatasetVariable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModelDatasetVariable

`func (o *SendigDatasetVariableLinks) SetModelDatasetVariable(v SdtmDatasetVariableRef)`

SetModelDatasetVariable sets ModelDatasetVariable field to given value.

### HasModelDatasetVariable

`func (o *SendigDatasetVariableLinks) HasModelDatasetVariable() bool`

HasModelDatasetVariable returns a boolean if a field has been set.

### GetParentProduct

`func (o *SendigDatasetVariableLinks) GetParentProduct() SendigProductRef`

GetParentProduct returns the ParentProduct field if non-nil, zero value otherwise.

### GetParentProductOk

`func (o *SendigDatasetVariableLinks) GetParentProductOk() (*SendigProductRef, bool)`

GetParentProductOk returns a tuple with the ParentProduct field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentProduct

`func (o *SendigDatasetVariableLinks) SetParentProduct(v SendigProductRef)`

SetParentProduct sets ParentProduct field to given value.

### HasParentProduct

`func (o *SendigDatasetVariableLinks) HasParentProduct() bool`

HasParentProduct returns a boolean if a field has been set.

### GetParentDataset

`func (o *SendigDatasetVariableLinks) GetParentDataset() SendigDatasetRef`

GetParentDataset returns the ParentDataset field if non-nil, zero value otherwise.

### GetParentDatasetOk

`func (o *SendigDatasetVariableLinks) GetParentDatasetOk() (*SendigDatasetRef, bool)`

GetParentDatasetOk returns a tuple with the ParentDataset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentDataset

`func (o *SendigDatasetVariableLinks) SetParentDataset(v SendigDatasetRef)`

SetParentDataset sets ParentDataset field to given value.

### HasParentDataset

`func (o *SendigDatasetVariableLinks) HasParentDataset() bool`

HasParentDataset returns a boolean if a field has been set.

### GetRootItem

`func (o *SendigDatasetVariableLinks) GetRootItem() RootSendigDatasetVariableRef`

GetRootItem returns the RootItem field if non-nil, zero value otherwise.

### GetRootItemOk

`func (o *SendigDatasetVariableLinks) GetRootItemOk() (*RootSendigDatasetVariableRef, bool)`

GetRootItemOk returns a tuple with the RootItem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootItem

`func (o *SendigDatasetVariableLinks) SetRootItem(v RootSendigDatasetVariableRef)`

SetRootItem sets RootItem field to given value.

### HasRootItem

`func (o *SendigDatasetVariableLinks) HasRootItem() bool`

HasRootItem returns a boolean if a field has been set.

### GetPriorVersion

`func (o *SendigDatasetVariableLinks) GetPriorVersion() SendigDatasetVariableRef`

GetPriorVersion returns the PriorVersion field if non-nil, zero value otherwise.

### GetPriorVersionOk

`func (o *SendigDatasetVariableLinks) GetPriorVersionOk() (*SendigDatasetVariableRef, bool)`

GetPriorVersionOk returns a tuple with the PriorVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriorVersion

`func (o *SendigDatasetVariableLinks) SetPriorVersion(v SendigDatasetVariableRef)`

SetPriorVersion sets PriorVersion field to given value.

### HasPriorVersion

`func (o *SendigDatasetVariableLinks) HasPriorVersion() bool`

HasPriorVersion returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


