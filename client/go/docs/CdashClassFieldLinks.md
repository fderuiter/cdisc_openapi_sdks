# CdashClassFieldLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | Pointer to [**CdashClassFieldRef**](CdashClassFieldRef.md) |  | [optional] 
**Codelist** | Pointer to [**[]RootCtCodelistRefElement**](RootCtCodelistRefElement.md) |  | [optional] 
**ParentProduct** | Pointer to [**CdashProductRef**](CdashProductRef.md) |  | [optional] 
**ParentClass** | Pointer to [**CdashClassRef**](CdashClassRef.md) |  | [optional] 
**RootItem** | Pointer to [**RootCdashClassFieldRef**](RootCdashClassFieldRef.md) |  | [optional] 
**PriorVersion** | Pointer to [**CdashClassFieldRef**](CdashClassFieldRef.md) |  | [optional] 
**SdtmClassMappingTargets** | Pointer to [**[]SdtmClassVariableRefTarget**](SdtmClassVariableRefTarget.md) |  | [optional] 
**SdtmDatasetMappingTargets** | Pointer to [**[]SdtmDatasetVariableRefTarget**](SdtmDatasetVariableRefTarget.md) |  | [optional] 

## Methods

### NewCdashClassFieldLinks

`func NewCdashClassFieldLinks() *CdashClassFieldLinks`

NewCdashClassFieldLinks instantiates a new CdashClassFieldLinks object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCdashClassFieldLinksWithDefaults

`func NewCdashClassFieldLinksWithDefaults() *CdashClassFieldLinks`

NewCdashClassFieldLinksWithDefaults instantiates a new CdashClassFieldLinks object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSelf

`func (o *CdashClassFieldLinks) GetSelf() CdashClassFieldRef`

GetSelf returns the Self field if non-nil, zero value otherwise.

### GetSelfOk

`func (o *CdashClassFieldLinks) GetSelfOk() (*CdashClassFieldRef, bool)`

GetSelfOk returns a tuple with the Self field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSelf

`func (o *CdashClassFieldLinks) SetSelf(v CdashClassFieldRef)`

SetSelf sets Self field to given value.

### HasSelf

`func (o *CdashClassFieldLinks) HasSelf() bool`

HasSelf returns a boolean if a field has been set.

### GetCodelist

`func (o *CdashClassFieldLinks) GetCodelist() []RootCtCodelistRefElement`

GetCodelist returns the Codelist field if non-nil, zero value otherwise.

### GetCodelistOk

`func (o *CdashClassFieldLinks) GetCodelistOk() (*[]RootCtCodelistRefElement, bool)`

GetCodelistOk returns a tuple with the Codelist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodelist

`func (o *CdashClassFieldLinks) SetCodelist(v []RootCtCodelistRefElement)`

SetCodelist sets Codelist field to given value.

### HasCodelist

`func (o *CdashClassFieldLinks) HasCodelist() bool`

HasCodelist returns a boolean if a field has been set.

### GetParentProduct

`func (o *CdashClassFieldLinks) GetParentProduct() CdashProductRef`

GetParentProduct returns the ParentProduct field if non-nil, zero value otherwise.

### GetParentProductOk

`func (o *CdashClassFieldLinks) GetParentProductOk() (*CdashProductRef, bool)`

GetParentProductOk returns a tuple with the ParentProduct field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentProduct

`func (o *CdashClassFieldLinks) SetParentProduct(v CdashProductRef)`

SetParentProduct sets ParentProduct field to given value.

### HasParentProduct

`func (o *CdashClassFieldLinks) HasParentProduct() bool`

HasParentProduct returns a boolean if a field has been set.

### GetParentClass

`func (o *CdashClassFieldLinks) GetParentClass() CdashClassRef`

GetParentClass returns the ParentClass field if non-nil, zero value otherwise.

### GetParentClassOk

`func (o *CdashClassFieldLinks) GetParentClassOk() (*CdashClassRef, bool)`

GetParentClassOk returns a tuple with the ParentClass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentClass

`func (o *CdashClassFieldLinks) SetParentClass(v CdashClassRef)`

SetParentClass sets ParentClass field to given value.

### HasParentClass

`func (o *CdashClassFieldLinks) HasParentClass() bool`

HasParentClass returns a boolean if a field has been set.

### GetRootItem

`func (o *CdashClassFieldLinks) GetRootItem() RootCdashClassFieldRef`

GetRootItem returns the RootItem field if non-nil, zero value otherwise.

### GetRootItemOk

`func (o *CdashClassFieldLinks) GetRootItemOk() (*RootCdashClassFieldRef, bool)`

GetRootItemOk returns a tuple with the RootItem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootItem

`func (o *CdashClassFieldLinks) SetRootItem(v RootCdashClassFieldRef)`

SetRootItem sets RootItem field to given value.

### HasRootItem

`func (o *CdashClassFieldLinks) HasRootItem() bool`

HasRootItem returns a boolean if a field has been set.

### GetPriorVersion

`func (o *CdashClassFieldLinks) GetPriorVersion() CdashClassFieldRef`

GetPriorVersion returns the PriorVersion field if non-nil, zero value otherwise.

### GetPriorVersionOk

`func (o *CdashClassFieldLinks) GetPriorVersionOk() (*CdashClassFieldRef, bool)`

GetPriorVersionOk returns a tuple with the PriorVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriorVersion

`func (o *CdashClassFieldLinks) SetPriorVersion(v CdashClassFieldRef)`

SetPriorVersion sets PriorVersion field to given value.

### HasPriorVersion

`func (o *CdashClassFieldLinks) HasPriorVersion() bool`

HasPriorVersion returns a boolean if a field has been set.

### GetSdtmClassMappingTargets

`func (o *CdashClassFieldLinks) GetSdtmClassMappingTargets() []SdtmClassVariableRefTarget`

GetSdtmClassMappingTargets returns the SdtmClassMappingTargets field if non-nil, zero value otherwise.

### GetSdtmClassMappingTargetsOk

`func (o *CdashClassFieldLinks) GetSdtmClassMappingTargetsOk() (*[]SdtmClassVariableRefTarget, bool)`

GetSdtmClassMappingTargetsOk returns a tuple with the SdtmClassMappingTargets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSdtmClassMappingTargets

`func (o *CdashClassFieldLinks) SetSdtmClassMappingTargets(v []SdtmClassVariableRefTarget)`

SetSdtmClassMappingTargets sets SdtmClassMappingTargets field to given value.

### HasSdtmClassMappingTargets

`func (o *CdashClassFieldLinks) HasSdtmClassMappingTargets() bool`

HasSdtmClassMappingTargets returns a boolean if a field has been set.

### GetSdtmDatasetMappingTargets

`func (o *CdashClassFieldLinks) GetSdtmDatasetMappingTargets() []SdtmDatasetVariableRefTarget`

GetSdtmDatasetMappingTargets returns the SdtmDatasetMappingTargets field if non-nil, zero value otherwise.

### GetSdtmDatasetMappingTargetsOk

`func (o *CdashClassFieldLinks) GetSdtmDatasetMappingTargetsOk() (*[]SdtmDatasetVariableRefTarget, bool)`

GetSdtmDatasetMappingTargetsOk returns a tuple with the SdtmDatasetMappingTargets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSdtmDatasetMappingTargets

`func (o *CdashClassFieldLinks) SetSdtmDatasetMappingTargets(v []SdtmDatasetVariableRefTarget)`

SetSdtmDatasetMappingTargets sets SdtmDatasetMappingTargets field to given value.

### HasSdtmDatasetMappingTargets

`func (o *CdashClassFieldLinks) HasSdtmDatasetMappingTargets() bool`

HasSdtmDatasetMappingTargets returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


